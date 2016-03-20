import os
import numpy as np
import math
import sys
import matplotlib
import pickle
import Common
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from matplotlib import colorbar, patches
from scipy.ndimage.filters import gaussian_filter
from collections import OrderedDict

from DataSet import DataSet
class FracPlot(DataSet):
    def __init__(self, plotName, fileName=None, dataClass=None, showPlots=True):
        DataSet.__init__(self, fileName=fileName, dataClass=dataClass)

        print('-'*70)
        print('Establishing {} Plot'.format(plotName))
        print('-'*70)
        
        self.plotName = plotName
        
        #TODO: fix this to acocmodate non-colorbar plots
        self.figure = plt.figure(figsize=(6,5))
        self.axes = self.figure.add_axes([0.1, 0.1, 0.825*5/6, 0.825])
        self.colorBarAxes = self.figure.add_axes([0.825, 0.1, 0.05, 0.825])
        
        self.animationImages = [[] for _ in range(len(self.blockData.keys()))]
        
        if showPlots != True:
            matplotlib.use('Agg')

        time = min(self.blockData.keys())
        self.blocks = self.blockData[time].keys()
        self.zones = self.zoneData[time].keys()
        self.corners = self.cornerData[time].keys()
        self.contacts = self.contactData[time].keys()
        self.gridPoints = self.gridPointData[time].keys()
        self.domains = self.domainData[time].keys()
  
    #Axis Functions    
    def setAxis_Full(self):
        axisLimits = self.limits()
    
        self.axes.axis('equal')
        self.axes.set_xlim(axisLimits[0], axisLimits[1])
        self.axes.set_ylim(axisLimits[2], axisLimits[3])
        self.labelAxis()     
        
    def setAxis_Zoom(self, centre=(0.5,0.5), zoom=4):
        axisLimits = self.limits()
    
        self.axes.axis('equal')
        
        xMin = axisLimits[0]
        xMax = axisLimits[1]
        yMin = axisLimits[2]
        yMax = axisLimits[3]
        
        xLen = xMax - xMin
        yLen = yMax - yMin
        
        xCen = centre[0]*xLen + xMin
        yCen = centre[0]*yLen + yMin
        
        xOff = xLen/2/zoom
        yOff = yLen/2/zoom
        
        self.axes.set_xlim(xCen - xOff, xCen + xOff)
        self.axes.set_ylim(yCen - yOff, yCen + yOff)
        self.labelAxis()
        
    def labelAxis(self):
        self.axes.set_xlabel('Horizontal (m)')
        self.axes.set_ylabel('Vertical (m)')     

    def addLegend(self):
        handles, labels = self.axes.get_legend_handles_labels()
        by_label = OrderedDict(zip(labels, handles))
        times = sorted(self.blockData)
        for i in range(len(times)):
            self.animationImages[i].append(self.axes.legend(by_label.values(), by_label.keys()))
        
    #Viewing Functions
    def animate(self, interval=50, delay=1000):
        delayFrames = int(delay/interval)
        ai = self.animationImages
        for i in range(delayFrames):
            ai.append(self.animationImages[-1])
        im_ani = animation.ArtistAnimation(self.figure, ai, interval=50, blit=True)
        print ('Encoding Video File:')
        self.saveVideo(im_ani)
        print('\tDone')
        plt.show()

    def firstFrame(self):
        self.axes.cla()
        for i in range(len(self.animationImages[0])):
            self.axes.add_artist(self.animationImages[0][i])
        plt.show()

    def lastFrame(self):
        self.axes.cla()
        for i in range(len(self.animationImages[-1])):
            self.axes.add_artist(self.animationImages[-1][i])
        self.saveFigure()
        plt.show()
        
    def saveFigure(self, plot):
        fileName = os.path.join('figures', self.fileName+'_'+self.plotName) 
        self.figure.savefig(fileName+'.svg', format='svg')
        self.figure.savefig(fileName+'.png', format='png')

    def saveVideo(self, ani):
        Writer = animation.writers['ffmpeg']
        writer = Writer(fps=15, bitrate=1800)
        fileName = os.path.join('figures', self.fileName+'_'+self.plotName) 
        ani.save(fileName+'.mp4', writer=writer)

    #Model Functions
    def blockEdges(self, blocks, time = 0):
        if time == 0:
            time = min(self.blockData.keys())
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
            time = min(self.zoneData.keys())
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

    #Plotting Functions
    def plotBlocks(self):
        times = sorted(self.blockData)
        print('Plotting block boundaries:')
        for i in range(len(times)):
            blockEdges = self.blockEdges(self.blocks, time=times[i])
            self.animationImages[i] += self.axes.plot(blockEdges[0], blockEdges[1], 'b-', label='Block Boundaries')
        print('\tDone')
        
    def plotZones(self):        
        times = sorted(self.blockData)
        print('Plotting zone boundaries:')
        for i in range(len(times)):
            zoneEdges = self.zoneEdges(self.zones, time=times[i])
            self.animationImages[i] += self.axes.plot(zoneEdges[0], zoneEdges[1], 'g:', label='Zone Boundaries')
        print('\tDone')
                
    def plotCircle(self, radius, centre, label='Circle', color='r'):
        times = sorted(self.blockData)
        for i in range(len(times)):
            self.animationImages[i].append(self.axes.add_patch(patches.Circle((centre['x'], centre['y']), radius, color=color, fill=False, label=label)))

    def plotLine(self, x, y, label='Line', linestyle='k-', linewidth=2, marker='.', markersize=10):        
        times = sorted(self.blockData)
        for i in range(len(times)):
            self.animationImages[i] += self.axes.plot(x, y, linestyle, label=label, linewidth=linewidth, marker=marker, markersize=markersize)
            
    def plotZoomBox(self, centre=(0.5, 0.5), zoom=4, label=None, linestyle='c-'):        
        axisLimits = self.limits()    
        xMin = axisLimits[0]
        xMax = axisLimits[1]
        yMin = axisLimits[2]
        yMax = axisLimits[3]
        
        xLen = xMax - xMin
        yLen = yMax - yMin
        
        xCen = centre[0]*xLen + xMin
        yCen = centre[0]*yLen + yMin
        
        xOff = xLen/2/zoom
        yOff = yLen/2/zoom
        
        xMinNew = xCen - xOff
        xMaxNew = xCen + xOff
        yMinNew = yCen - yOff
        yMaxNew = yCen + yOff
        x = [xMinNew, xMaxNew, xMaxNew, xMinNew, xMinNew]
        y = [yMinNew, yMinNew, yMaxNew, yMaxNew, yMinNew]
        
        self.plotLine(x, y, linestyle=linestyle, marker=None, label=label)
            
    def plotStressField(self, stressType, stressLimits='automatic', loadData=True, sigma=1):
        times = sorted(self.blockData)
        cmap = plt.cm.viridis
        allX = []
        allY = []
        allZ = []
        filePath = os.path.join('homogenizeData', self.fileName+'_'+stressType+'.dat')
        calculate = True
        if loadData == True:
            try:
                print('Attempting to load interpolated {} stress grid from binary:'.format(stressType))
                allX, allY, allZ = pickle.load(open(filePath, 'rb'))
                calculate = False
                print('\tSuccess')
            except:
                print('\tFailed')

        if calculate == True:
            print('Interpolating {} stress grid:'.format(stressType))
            print('\tFor Frame #', end='')
            for i in range(len(times)):
                time = times[i]
                numString = str(i+1)+'/'+str(len(times))
                print(numString, end='')
                print('\b'*len(numString), end='')
                sys.stdout.flush()
                
                S11 = np.array(self.zoneS11(self.zoneData[time].keys(), time))
                S22 = np.array(self.zoneS22(self.zoneData[time].keys(), time))
                #S33 = np.array(self.zoneS33(self.zoneData[time].keys(), time))
                S12 = np.array(self.zoneS12(self.zoneData[time].keys(), time))
                if stressType == 'S11':
                    stress = S11
                elif stressType == 'S22':
                    stress = S22
                elif stressType == 'S33':
                    stress = S33
                elif stressType == 'S12':
                    stress = S12
                elif stressType == 'mises':
                    stress = 'blah'
                elif stressType == 'MaxP':
                    stress = 'blah'
                elif stressType == 'MinP':
                    stress = 'blah'
                elif stressType == 'IntP':
                    stress = 'blah'

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
                
                X, Y, Z = Common.grid(zoneX, zoneY, stress)
                allX.append(X)
                allY.append(Y)
                allZ.append(Z)
            print('')
            print('Saving interpolated {} stress grid to binary:'.format(stressType))
            pickle.dump([allX, allY, allZ], open(filePath, 'wb'))
            print('\tDone')

        if stressLimits == 'automatic':
            print('Assessing {} stress limits:'.format(stressType))
            zmin = min([min([num for num in list(frame.flatten()) if isinstance(num, float)]) for frame in allZ])
            zmax = max([max([num for num in list(frame.flatten()) if isinstance(num, float)]) for frame in allZ])
            print('\tDone')
        else:
            zmin = stressLimits[0]
            zmax = stressLimits[1]
        
        print('Smoothing {} stress field:'.format(stressType))
        print('\tFor Frame #', end='')

        for i in range(len(times)):
            numString = str(i+1)+'/'+str(len(times))
            print(numString, end='')
            print('\b'*len(numString), end='')
            sys.stdout.flush()
            time = times[i]
 
            X = allX[i]         
            Y = allY[i]
            Z = allZ[i]
            Z = gaussian_filter(Z, sigma)
            im = self.axes.contourf(X, Y, Z, 10, cmap=cmap, vmin=zmin, vmax=zmax, origin='lower')
            self.animationImages[i] += im.collections

        print('\nPlotting {} stress field:'.format(stressType))
        norm = matplotlib.colors.Normalize(vmin=zmin, vmax=zmax)
        colorBar = colorbar.ColorbarBase(self.colorBarAxes, cmap=cmap, norm=norm)
        colorBar.set_label('MPa')      
        print('\tDone')
    
if __name__ == '__main__':
    os.system('cls')
    
    clargs = sys.argv
    if len(clargs) >= 2:
        fileName = clargs[1]
        
    P = FracPlot('test', fileName=fileName)
    P.setAxis_Zoom()  
    P.plotStressField('S22', sigma=1)
    P.plotZones()
    P.plotBlocks()
    P.addLegend()
    P.animate()
            
