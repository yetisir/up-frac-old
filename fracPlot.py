import os
import numpy as np
import math
import copy
import sys
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from numpy import linspace, meshgrid
from matplotlib.mlab import griddata
from scipy.ndimage.filters import gaussian_filter
from matplotlib import colors

#TODO put duplicate methods (Plot and Homogenize) in a parent class
class Plot:
    def __init__(self, fileName):
        blockFileName = fileName + '___block.dat'
        contactFileName = fileName + '___contact.dat'
        cornerFileName = fileName + '___corner.dat'
        zoneFileName = fileName + '___zone.dat'
        gridPointFileName = fileName + '___gridPoint.dat'
        domainFileName = fileName + '___domain.dat'
        
        print('-'*70)
        print('Frac Plot Initalization')
        print('-'*70)
        print('Preparing to load DEM data:')
        print('\tLoading block data')
        self.blockData = self.parseDataFile(blockFileName)
        print('\tLoading contact data')
        self.contactData = self.parseDataFile(contactFileName)
        print('\tLoading corner data')
        self.cornerData = self.parseDataFile(cornerFileName)
        print('\tLoading zone data')
        self.zoneData = self.parseDataFile(zoneFileName)
        print('\tLoading gridPoint data')
        self.gridPointData = self.parseDataFile(gridPointFileName)
        print('\tLoading domain data')
        self.domainData = self.parseDataFile(domainFileName)
        print('Finished loading DEM data')
        #print('-'*70)
        print('')
    
    def parseDataFile(self, fileName):
        file = open(os.path.join('UDEC', 'data', fileName))
        header = file.readline()[0:-1].split(' ')
        types = file.readline()[0:-1].split(' ')
        data = {}
        timeData = {}
        firstLoop = 1
        while 1:
            record = file.readline()[0:].replace('\n', '').replace('  ', ' ').split(' ')
            record.remove('')
            if record == []: 
                try:
                    data[dictTime] = copy.copy(timeData)
                except UnboundLocalError:
                    pass
                break
            if firstLoop:
                dictTime = float(record[0])
                firstLoop = 0
            
            time = float(record[0])
            if dictTime != time:
                data[dictTime] = copy.copy(timeData)
                dictTime = time
            recordData = {}
            for i in range(2, len(record)):
                if types[i] == 'i':
                    record[i] = int(record[i])
                elif types[i] == 'f':
                    record[i] = float(record[i])
                elif types[i] == 'l':
                    csv = record[i].split(',')
                    for j in range(len(csv)):
                        csv[j] = int(csv[j])
                    record[i] = csv
                recordData[header[i]] = record[i]
            timeData[int(record[1])] = recordData
            oldRecord = record

        return data
        
    def blockEdges(self, blocks, time = 0):
        if time == 0:
            time = min(self.blockData.keys()) #should be removed, so plots can be at any time.
        xEdge = []
        yEdge = []
        for block in blocks:
            blockCorners = self.blockData[time][block]['corners']
            for blockCorner in blockCorners:
                gridPointIndex = self.cornerData[time][blockCorner]['gridPoint']
                gridPoint = self.gridPointData[time][gridPointIndex]
                xEdge.append(gridPoint['x'])
                yEdge.append(gridPoint['y'])
            gridPointIndex = self.cornerData[time][blockCorners[0]]['gridPoint']
            gridPoint = self.gridPointData[time][gridPointIndex]
            xEdge.append(gridPoint['x'])
            yEdge.append(gridPoint['y'])
            xEdge.append(None)
            yEdge.append(None)
        return (xEdge, yEdge)
        
    def zoneEdges(self, zones, time = 0):
        if time == 0:
            time = min(self.blockData.keys()) #should be removed, so plots can be at any time.
        xEdge = []
        yEdge = []
        for zone in zones:
            zoneGridPoints = self.zoneData[time][zone]['gridPoints']
            for zoneGridPoint in zoneGridPoints:
                gridPoint = self.gridPointData[time][zoneGridPoint]
                xEdge.append(gridPoint['x'])
                yEdge.append(gridPoint['y'])
            gridPoint = self.gridPointData[time][zoneGridPoints[0]]
            xEdge.append(gridPoint['x'])
            yEdge.append(gridPoint['y'])
            xEdge.append(None)
            yEdge.append(None)
        return (xEdge, yEdge)
        
    def grid(self, x, y, z, resX=100, resY=100):
        "Convert 3 column data to matplotlib grid"
        xi = linspace(min(x), max(x), resX)
        yi = linspace(min(y), max(y), resY)
        Z = griddata(x, y, z, xi, yi)
        X, Y = meshgrid(xi, yi)
        return X, Y, Z
        
    def plotStressField(self):
       
        ##### Plot for smoothed DEM stress feild
        time = max(self.blockData.keys()) #should be removed, so plots can be at any time.
        S11 = [self.zoneData[time][zone]['S11'] for zone in self.zoneData[time].keys()]
        S22 = [self.zoneData[time][zone]['S22'] for zone in self.zoneData[time].keys()]
        S12 = [self.zoneData[time][zone]['S12'] for zone in self.zoneData[time].keys()]
        zoneX = []
        zoneY = []
        for zone in self.zoneData[time].keys():
            gridPoints = self.zoneData[time][zone]['gridPoints']
            gridPointX = 0
            gridPointY = 0
            for gridPoint in gridPoints:
                gridPointX += self.gridPointData[time][gridPoint]['x']
                gridPointY += self.gridPointData[time][gridPoint]['y']
            zoneX.append(gridPointX/len(gridPoints))
            zoneY.append(gridPointY/len(gridPoints))
        
        import pickle
        # X, Y, Z = self.grid(zoneX, zoneY, S22)
        # pickle.dump([X, Y, Z], open('contourData.dat', 'wb'))
        X, Y, Z = pickle.load(open('contourData.dat', 'rb'))
        
        newZ = []
        for i in range(len(Z)):
            newList = []
            for j in range(len(Z[i])):
                newList.append(Z[i,j])
            newZ.append(newList)
        Z = newZ
        
        
        sigma = 1
        Z = gaussian_filter(Z, sigma)
        Z = np.array(Z)
        for i in range(len(X)):
            for j in range(len(Y)):
                if math.sqrt((X[i,j]-10)**2 + (Y[i,j]-10)**2) < 2:
                    Z[i,j] = np.nan


        zmin = -20
        zmax = 0
        for i in range(len(Z)):
            for j in range(len(Z[i])):
                if Z[i,j] > zmax:
                    Z[i,j] = zmax
                elif Z[i,j] < zmin:
                    Z[i,j] = zmin
        ccc = colors.Colormap('viridis', 10)
        Z[1,1] = -10
        CS = plt.contourf(X, Y, Z, 10, cmap=plt.cm.viridis, vmin=-20,       vmax=0, origin='lower')
        CB = plt.colorbar(CS)
        CB.set_label('MPa')
        colormapIndex = []
        for i in range(10):
            colormapIndex.append(int(255/10*(i) +255/20))
        print(colormapIndex)
        print(plt.cm.viridis(colormapIndex))
        plt.axis('equal')
        plt.ylabel('Horizontal (m)')
        plt.xlabel('Vertical (m)')
        plt.show()

    def plotBlocks(self):        
        minTime = min(self.blockData.keys())   
        maxTime = max(self.blockData.keys())   

        def updateBlocks(num, line):
            if num > len(self.blockData.keys())-1:
                num = len(self.blockData.keys())-1
            time = sorted(self.blockData)[num]
            be = self.blockEdges(self.blockData[time].keys(), time=time)
            line.set_data(be)
            return line,
        fig1 = plt.figure(1)
        l, = plt.plot([], [], 'b-')
        fig1.hold(True)
        plt.plot([7,9,9,7,7], [7.2,7.2,8.8,8.8,7.2], 'r-')
        fig1.hold(False)
#        plt.axis('equal')
        plt.axis('equal')
        plt.xlim(7, 9)
        plt.ylim(7, 9)

        plt.xlabel('Horizontal (m)')
        plt.ylabel('Vertical (m)')
        
        Writer = animation.writers['ffmpeg']
        writer = Writer(fps=15, bitrate=1800)
        line_ani = animation.FuncAnimation(fig1, updateBlocks, len(self.blockData.keys())*2, fargs=(l,), interval=50, blit=True)
        #plt.show()
        line_ani.save('figures/blockCompression_small.mp4', writer=writer)
        plt.savefig('figures/blockCompression_small.svg', format='svg')
         
    def plotHomogenizationAnimation(self):        
        minTime = min(self.blockData.keys())   
        maxTime = max(self.blockData.keys())   
        from homogenize import Homogenize
        H = Homogenize({'x':5, 'y':5}, 4.1, dataClass = self)
        blocks = H.boundaryContactBlocks
        revCorners = H.boundaryCornersOrdered
        revGridPoints = [self.cornerData[minTime][corner]['gridPoint'] for corner in revCorners]
        revCornerX = [self.gridPointData[minTime][gridPoint]['x'] for gridPoint in revGridPoints]
        revCornerY = [self.gridPointData[minTime][gridPoint]['y'] for gridPoint in revGridPoints]

        def updateBlocks(num, blockPlot, homoArea):
            if num > len(self.blockData.keys())-1:
                num = len(self.blockData.keys())-1
            time = sorted(self.blockData)[num]
            be = self.blockEdges(blocks, time=time)
            blockPlot.set_data(be)
            
            revGridPoints = [self.cornerData[time][corner]['gridPoint'] for corner in revCorners]
            revCornerX = [self.gridPointData[time][gridPoint]['x'] for gridPoint in revGridPoints]
            revCornerY = [self.gridPointData[time][gridPoint]['y'] for gridPoint in revGridPoints]
            homoArea.set_data([revCornerX, revCornerY])
            return blockPlot, homoArea
        fig1 = plt.figure(1)
        blockPlot, = plt.plot([], [], 'b-')
        fig1.hold(True)
        homoAreaInit = plt.plot(revCornerX,revCornerY,'k-', label='Homogenization Domain Boundary', linewidth=1)
        homoArea, = plt.plot([],[],'k-', label='Homogenization Domain Boundary', linewidth=2, marker='.', markersize=10)
        plt.plot([7.5,8.5,8.5,7.5,7.5], [7.6,7.6,8.4,8.4,7.6], 'r-')
        fig1.hold(False)
#        plt.axis('equal')
        plt.axis('equal')
        # plt.xlim(7.5, 8.5)
        # plt.ylim(7.5, 8.5)
        plt.xlim(-1, 11)
        plt.ylim(-1, 11)
        plt.xlabel('Horizontal (m)')
        plt.ylabel('Vertical (m)')
        
        Writer = animation.writers['ffmpeg']
        writer = Writer(fps=15, bitrate=1800)
        line_ani = animation.FuncAnimation(fig1, updateBlocks, len(self.blockData.keys())*2, fargs=(blockPlot,homoArea), interval=50, blit=True)
        #plt.show()
        line_ani.save('figures/homogenizationCompression.mp4', writer=writer)
        plt.savefig('figures/homogenizationCompression.svg', format='svg')
        plt.savefig('figures/homogenizationCompression.png', format='png')
         
    def plotZoneBlocks(self):        
        # cornerX = []
        # cornerY = []
        time = max(self.blockData.keys())   
        
        # xxb = [self.blockData[time][block]['x'] for block in self.boundaryBlocksOrdered]
        # yyb = [self.blockData[time][block]['y'] for block in self.boundaryBlocksOrdered]
        # # xxo = [outsideBlockData[time][block]['x'] for block in outsideBlockData[time].keys()]
        # # yyo = [outsideBlockData[time][block]['y'] for block in outsideBlockData[time].keys()]
        # xxc = [self.contactData[time][contact]['x'] for contact in self.boundaryContacts]
        # yyc = [self.contactData[time][contact]['y'] for contact in self.boundaryContacts]
        # xxcr = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['x'] for corner in self.boundaryCorners]
        # yycr = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['y'] for corner in self.boundaryCorners]
        # xxcro = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['x'] for corner in self.boundaryCornersOrdered]
        # yycro = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['y'] for corner in self.boundaryCornersOrdered]
        
        # # b = 51899
        # # c = blockData[time][b]['contacts']
        # # bb = []
        # # for i in c:
            # # bb += contactData[time][i]['blocks']
        # # cr = cornersOnBlocks(blockData, [b])
        # cc = self.outsideBlocks
        # xxcc = [self.blockData[time][contact]['x'] for contact in cc]
        # yycc = [self.blockData[time][contact]['y'] for contact in cc]
        # cc = self.boundaryContactCorners
        # xxcc = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['x'] for corner in cc]
        # yycc = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['y'] for corner in cc]
        # print(c)
        # print(bb)
        # print(cr)
        # print(cc)
        # cornerX = [boundaryCornerData[time][corner]['x'] for corner in boundaryCornerData[time].keys()]
        # cornerY = [boundaryCornerData[time][corner]['y'] for corner in boundaryCornerData[time].keys()]
        
        # be = self.blockEdges(self.boundaryContactBlocks)
        # plt.figure(1)
        # plt.plot(be[0], be[1], 'b-')#, xxcro, yycro, 'g-', xxcro, yycro, 'go')
        # boundary = plt.Circle((self.centre['x'], self.centre['y']),self.radius,color='r', fill=False)
        # plt.gcf().gca().add_artist(boundary)
        # plt.axis([0, 10, 0, 10])
        # plt.axis('equal')
        # plt.show(block = False)
        minTime = min(self.blockData.keys())   
        maxTime = max(self.blockData.keys())   
            
        
        fig1 = plt.figure(1)
        from homogenize import Homogenize
        H = Homogenize({'x':5, 'y':5}, 4.1, dataClass = self)
        blocks = H.insideBoundaryBlocks
        bData = self.blockEdges(blocks, time=maxTime)
        zones = H.zonesInBlocks(blocks)
        zData = self.zoneEdges(zones, time=maxTime)
        zonePlot = plt.plot(zData[0], zData[1], 'g:', label='Zone Boundaries')
        fig1.hold(True)

        blockPlot = plt.plot(bData[0], bData[1], 'b-', label='Block Boundaries')
        fig1.hold(False)
        
        boundary = plt.Circle((H.centre['x'], H.centre['y']),H.radius,color='r', fill=False, label='REV Boundary')
        plt.gcf().gca().add_artist(boundary)
        revCorners = H.boundaryCornersOrdered
        revGridPoints = [self.cornerData[time][corner]['gridPoint'] for corner in revCorners]
        revCornerX = [self.gridPointData[time][gridPoint]['x'] for gridPoint in revGridPoints]
        revCornerY = [self.gridPointData[time][gridPoint]['y'] for gridPoint in revGridPoints]
        revBoundary = plt.plot([],[],'r-', label='REV Boundary')
        homoArea = plt.plot(revCornerX,revCornerY,'k-', label='Homogenization Domain Boundary', linewidth=2)


        plt.axis('equal')
        plt.xlim(7, 9)
        plt.ylim(7, 9)
        plt.legend()
        plt.xlabel('Horizontal (m)')
        plt.ylabel('Vertical (m)')
        
        plt.savefig('figures/blockZones_small.svg', format='svg')
        plt.savefig('figures/blockZones_small.png', format='png')
 
    def plotHomogenizationArea(self):        
        # cornerX = []
        # cornerY = []
        time = min(self.blockData.keys())   
        
        # xxb = [self.blockData[time][block]['x'] for block in self.boundaryBlocksOrdered]
        # yyb = [self.blockData[time][block]['y'] for block in self.boundaryBlocksOrdered]
        # # xxo = [outsideBlockData[time][block]['x'] for block in outsideBlockData[time].keys()]
        # # yyo = [outsideBlockData[time][block]['y'] for block in outsideBlockData[time].keys()]
        # xxc = [self.contactData[time][contact]['x'] for contact in self.boundaryContacts]
        # yyc = [self.contactData[time][contact]['y'] for contact in self.boundaryContacts]
        # xxcr = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['x'] for corner in self.boundaryCorners]
        # yycr = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['y'] for corner in self.boundaryCorners]
        # xxcro = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['x'] for corner in self.boundaryCornersOrdered]
        # yycro = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['y'] for corner in self.boundaryCornersOrdered]
        
        # # b = 51899
        # # c = blockData[time][b]['contacts']
        # # bb = []
        # # for i in c:
            # # bb += contactData[time][i]['blocks']
        # # cr = cornersOnBlocks(blockData, [b])
        # cc = self.outsideBlocks
        # xxcc = [self.blockData[time][contact]['x'] for contact in cc]
        # yycc = [self.blockData[time][contact]['y'] for contact in cc]
        # cc = self.boundaryContactCorners
        # xxcc = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['x'] for corner in cc]
        # yycc = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['y'] for corner in cc]
        # print(c)
        # print(bb)
        # print(cr)
        # print(cc)
        # cornerX = [boundaryCornerData[time][corner]['x'] for corner in boundaryCornerData[time].keys()]
        # cornerY = [boundaryCornerData[time][corner]['y'] for corner in boundaryCornerData[time].keys()]
        
        # be = self.blockEdges(self.boundaryContactBlocks)
        # plt.figure(1)
        # plt.plot(be[0], be[1], 'b-')#, xxcro, yycro, 'g-', xxcro, yycro, 'go')
        # boundary = plt.Circle((self.centre['x'], self.centre['y']),self.radius,color='r', fill=False)
        # plt.gcf().gca().add_artist(boundary)
        # plt.axis([0, 10, 0, 10])
        # plt.axis('equal')
        # plt.show(block = False)
        minTime = min(self.blockData.keys())   
        maxTime = max(self.blockData.keys())   
            
        
        fig1 = plt.figure(1)
        from homogenize import Homogenize
        H = Homogenize({'x':5, 'y':5}, 4.1, dataClass = self)
        blocks = H.blockData[minTime].keys()
        #blocks = H.boundaryContactBlocks
        bData = self.blockEdges(blocks, time=minTime)

        fig1.hold(True)

        blockPlot = plt.plot(bData[0], bData[1], 'b-', label='Block Boundaries')
        box = plt.plot([7,9,9,7,7], [7.2,7.2,8.8,8.8,7.2], 'r-')
        fig1.hold(False)
        
        boundary = plt.Circle((H.centre['x'], H.centre['y']),H.radius,color='r', fill=False, label='REV Boundary')
        plt.gcf().gca().add_artist(boundary)
        revCorners = H.boundaryCornersOrdered
        revGridPoints = [self.cornerData[time][corner]['gridPoint'] for corner in revCorners]
        revCornerX = [self.gridPointData[time][gridPoint]['x'] for gridPoint in revGridPoints]
        revCornerY = [self.gridPointData[time][gridPoint]['y'] for gridPoint in revGridPoints]
        revBoundary = plt.plot([],[],'r-', label='REV Boundary')
        homoArea = plt.plot(revCornerX,revCornerY,'k-', label='Homogenization Domain Boundary', linewidth=5)


        plt.axis('equal')
        plt.ylim(7, 9)
        plt.xlim(7, 9)
        #plt.legend()
        plt.xlabel('Horizontal (m)')
        plt.ylabel('Vertical (m)')
        
        plt.savefig('figures/homogenizationArea_small.svg', format='svg')
        plt.savefig('figures/homogenizationArea_small.png', format='png')
        
if __name__ == '__main__':
    os.system('cls')
    
    clargs = sys.argv
    if len(clargs) >= 2:
        fileName = clargs[1]
        
    P = Plot(fileName)
    P.plotHomogenizationAnimation()
    #else: error message
    #add other cl args for shoosing variables and recalculation

    # yStress = list([stressHistory[t][1,1] for t in range(len(stressHistory))])
    # yStrain = list([strainHistory[t][1,1] for t in range(len(strainHistory))])
    # plt.plot(yStress, yStrain)
    
    
    # H.plot()
    # plt.show()
