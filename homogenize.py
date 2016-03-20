import os
import numpy
import math
import copy
import sys
import Common

from DataSet import DataSet
class Homogenize(DataSet):
    def __init__(self, centre, radius, dataClass=None, fileName=None, ):
        DataSet.__init__(self, dataClass=dataClass, fileName=fileName)
        
        self.centre = centre
        self.radius = radius
        
        self.singleBlock = False
        if len(self.contactData) == 0:
            self.singleBlock = True
            
        self.calculateHomogenizationParameters()
    
    #Boundary Functions
    def blocksOnBoundary(self):
        time = min(self.blockData.keys())
        blocks = []
        for blockIndex in self.blockData[time]:
            blockOut = False
            blockIn = False
            for cornerIndex in self.blockData[time][blockIndex]['corners']:
                gridPointIndex = self.cornerData[time][cornerIndex]['gridPoint']
                gridPoint = self.gridPointData[time][gridPointIndex]
                distance = math.hypot(gridPoint['x'] - self.centre['x'], gridPoint['y'] - self.centre['y'])
                if distance <= self.radius: blockIn = True
                if distance > self.radius: blockOut = True
            if blockIn and blockOut: blocks.append(blockIndex)
        return blocks

    def blocksOutsideBoundary(self):
        time = min(self.blockData.keys())
        blocks = []
        for blockIndex in self.blockData[time]:
            blockIn = False
            for cornerIndex in self.blockData[time][blockIndex]['corners']:
                gridPointIndex = self.cornerData[time][cornerIndex]['gridPoint']
                gridPoint = self.gridPointData[time][gridPointIndex]
                distance = math.hypot(gridPoint['x'] - self.centre['x'], gridPoint['y'] - self.centre['y'])
                if distance <= self.radius: blockIn = True
            if not blockIn: blocks.append(blockIndex)
        return blocks
        
    def blocksInsideBoundary(self):
        time = min(self.blockData.keys())
        blocks = []
        for blockIndex in self.blockData[time]:
            blockOut = False
            for cornerIndex in self.blockData[time][blockIndex]['corners']:
                gridPointIndex = self.cornerData[time][cornerIndex]['gridPoint']
                gridPoint = self.gridPointData[time][gridPointIndex]
                distance = math.hypot(gridPoint['x'] - self.centre['x'], gridPoint['y'] - self.centre['y'])
                if distance > self.radius: blockOut = True
            if not blockOut: blocks.append(blockIndex)
        return blocks
            
    def cornersOutsideBoundary(self):
        time = min(self.blockData.keys())
        corners = []
        for cornerIndex in self.cornerData[time]:
            gridPointIndex = self.cornerData[time][cornerIndex]['gridPoint']
            gridPoint = self.gridPointData[time][gridPointIndex]
            distance = math.hypot(gridPoint['x'] - self.centre['x'], gridPoint['y'] - self.centre['y'])
            if distance > self.radius: corners.append(cornerIndex)
        return corners
        
    def cornersInsideBoundary(self):
        time = min(self.blockData.keys())
        corners = []
        for cornerIndex in blockData[time]:
            gridPointIndex = self.cornerData[time][cornerIndex]['gridPoint']
            gridPoint = self.gridPointData[time][gridPointIndex]
            distance = math.hypot(gridPoint['x'] - self.centre['x'], gridPoint['y'] - self.centre['y'])
            if distance <= self.radius: corners.append(cornerIndex)
        return corners
        
    def contactsOutsideBoundary(self):
        time = min(self.blockData.keys())
        contacts = []
        for contactIndex in self.contactData[time]:
            contact = self.contactData[time][contactIndex]
            distance = math.hypot(contact['x'] - self.centre['x'], contact['y'] - self.centre['y'])
            if distance > self.radius: contacts.append(contactIndex)
        return contacts
        
    def contactsInsideBoundary(self):
        time = min(self.blockData.keys())
        contacts = []
        for contactIndex in self.contactData[time]:
            contact = self.contactData[time][contactIndex]
            distance = math.hypot(contact['x'] - self.centre['x'], contact['y'] - self.centre['y'])
            if distance <= self.radius: contact.append(contactIndex)
        return contacts
    
    #Manipulation Functions
    def orderBlocks(self, blocks, relaventContacts):
        blocks = copy.deepcopy(blocks)
        time = min(self.contactData.keys())
        blockContacts = [self.contactsOnBlocks([block]) for block in blocks]
        newBlocks = [blocks[0]]
        newBlockContacts = [blockContacts[0]]
        blocks.pop(0)
        blockContacts.pop(0)
        tempBlockContacts= []
        i = 0
        numBlocks = len(blocks)
        noSuccess = 0
        while i < numBlocks: 
            j = 0
            success = 0
            while j < len(blockContacts):
                relaventBlockContacts = Common.listIntersection(blockContacts[j], relaventContacts)
                if i+1 > len(newBlockContacts):
                    i += -1
                    noSuccess += 1
                elif Common.listIntersection(newBlockContacts[i], relaventBlockContacts):
                    success += 1
                    if success > noSuccess:
                        newBlockContacts.append(blockContacts[j])
                        newBlocks.append(blocks[j])
                        blockContacts.pop(j)
                        blocks.pop(j)
                        noSuccess = 0
                        break
                elif noSuccess > len(blockContacts):
                    xDistance = [self.blockData[time][newBlocks[i]]['x'] - self.blockData[time][b]['x'] for b in blocks] 
                    yDistance = [self.blockData[time][newBlocks[i]]['y'] - self.blockData[time][b]['y'] for b in blocks] 
                    distance = [math.hypot(xDistance[z], yDistance[z]) for z in range(len(blocks))]
                    nextBlockIndex = distance.index(min(distance))
                    newBlockContacts.append(blockContacts[nextBlockIndex])
                    newBlocks.append(blocks[nextBlockIndex])
                    blockContacts.pop(nextBlockIndex)
                    blocks.pop(nextBlockIndex)
                    noSuccess = 0
                    break
                j += 1
            i += 1
        return newBlocks
        
    def orderCorners(self, orderedBlocks, corners):
        time = min(self.contactData.keys())
        
        directionSign = 0
        for i in range(len(orderedBlocks)):
            x1 = self.blockData[time][orderedBlocks[i-2]]['x']
            y1 = self.blockData[time][orderedBlocks[i-2]]['y']
            x2 = self.blockData[time][orderedBlocks[i-1]]['x']
            y2 = self.blockData[time][orderedBlocks[i-1]]['y']
            x3 = self.blockData[time][orderedBlocks[i]]['x']
            y3 = self.blockData[time][orderedBlocks[i]]['y']
            xVec1 = x1-x2
            yVec1 = y1-y2
            xVec2 = x3-x2
            yVec2 = y3-y2
            vecAngle = Common.angle(xVec1, yVec1, xVec2, yVec2)
            vecSign = xVec1*yVec2-xVec2*yVec1
            directionSign += vecSign
        if directionSign > 0:
            directionSign = -directionSign
            orderedBlocks = orderedBlocks[::-1]
        corners = copy.deepcopy(corners)
        orderedBlocks = copy.deepcopy(orderedBlocks)
        newCorners = []
        
        for i in range(len(orderedBlocks)):
            allBlockCorners = self.blockData[time][orderedBlocks[i]]['corners']
            blockCorners = Common.listIntersection(corners, allBlockCorners)           
            orderedBlockCorners = []
            for corner in allBlockCorners:
                if corner in blockCorners:
                    orderedBlockCorners.append(corner)
            blockCorners = orderedBlockCorners
            
            blockDirection = 0
         
            for j in range(len(allBlockCorners)):
                x1 = self.gridPointData[time][self.cornerData[time][allBlockCorners[j-2]]['gridPoint']]['x']
                y1 = self.gridPointData[time][self.cornerData[time][allBlockCorners[j-2]]['gridPoint']]['y']
                x2 = self.gridPointData[time][self.cornerData[time][allBlockCorners[j-1]]['gridPoint']]['x']
                y2 = self.gridPointData[time][self.cornerData[time][allBlockCorners[j-1]]['gridPoint']]['y']
                x3 = self.gridPointData[time][self.cornerData[time][allBlockCorners[j]]['gridPoint']]['x']
                y3 = self.gridPointData[time][self.cornerData[time][allBlockCorners[j]]['gridPoint']]['y']
                xVec1 = x1-x2
                yVec1 = y1-y2
                xVec2 = x3-x2
                yVec2 = y3-y2
                vecAngle = Common.angle(xVec1, yVec1, xVec2, yVec2)
                vecSign = xVec1*yVec2-xVec2*yVec1
                blockDirection += vecSign
            if math.copysign(1, blockDirection) != math.copysign(1, directionSign):
                blockCorners = blockCorners[::-1]
                
            previousBlockCorners = self.blockData[time][orderedBlocks[i-1]]['corners']
            startingCornerDistance = -1
            for corner in blockCorners:
                gridPoint = self.cornerData[time][corner]['gridPoint']
                for previousCorner in previousBlockCorners:
                    previousGridPoint = self.cornerData[time][previousCorner]['gridPoint']
                    xDistance = self.gridPointData[time][previousGridPoint]['x'] - self.gridPointData[time][gridPoint]['x']
                    yDistance = self.gridPointData[time][previousGridPoint]['y'] - self.gridPointData[time][gridPoint]['y']
                    distance = math.hypot(xDistance, yDistance)
                    if startingCornerDistance < 0 or distance < startingCornerDistance:
                        startingCornerDistance = distance
                        startingCorner = corner
                    
                    
            index = blockCorners.index(startingCorner)
            blockCorners = blockCorners[index:] + blockCorners[:index]
            newCorners += blockCorners
        return newCorners
        
    def duplicateCorners(self, corners, blocks):
        time = min(self.blockData.keys())
        newCorners = copy.deepcopy(corners)
        allCorners = self.cornersOnBlocks(blocks)
        blockSizes = [self.blockData[time][block]['area'] for block in blocks]
        averageBlockSize = math.sqrt(float(sum(blockSizes))/len(blockSizes))
        for i in range(len(corners)):
            for j in range(len(allCorners)):
                gridPoint1 = self.cornerData[time][corners[i]]['gridPoint']
                gridPoint2 = self.cornerData[time][allCorners[j]]['gridPoint']
                x1 = self.gridPointData[time][gridPoint1]['x']
                y1 = self.gridPointData[time][gridPoint1]['y']
                x2 = self.gridPointData[time][gridPoint2]['x']
                y2 = self.gridPointData[time][gridPoint2]['y']
                if abs(x1-x2)/averageBlockSize <0.01 and abs(y1-y2)/averageBlockSize < 0.01:
                    newCorners.append(allCorners[j])
        return list(set(newCorners))
        
    def singleElementCorners(self):
        time = min(self.blockData.keys())
        blocks = self.blockData[time].keys()
        return self.cornersOnBlocks(blocks)

    #Homogenization Functions
    def calculateHomogenizationParameters(self):
        print('-'*70)
        print('Calculating Homogenization Parameters')
        print('-'*70)
        print('Processing Homogenization Data:')
        print('\tCalculating boundary blocks')
        self.boundaryBlocks = self.blocksOnBoundary()
        print('\tCalculating inside blocks')
        self.insideBlocks = self.blocksInsideBoundary()
        print('\tCalculating outside blocks')
        self.outsideBlocks = self.blocksOutsideBoundary()
        if not self.singleBlock:
            print('\tCalculating inside boundary blocks')
            self.insideBoundaryBlocks = self.boundaryBlocks + self.insideBlocks
            print('\tCalculating boundary contacts')
            self.boundaryContacts = self.contactsBetweenBlocks(self.outsideBlocks, self.boundaryBlocks)
            print('\tCalculating boundary contact corners')
            self.boundaryContactCorners = self.cornersOnContacts(self.boundaryContacts)
            print('\tCalculating boundary contact blocks')
            self.boundaryContactBlocks = self.blocksWithContacts(self.boundaryBlocks, self.boundaryContacts)
            print('\tCalculating outside corners')
            self.outsideCorners = self.cornersOutsideBoundary()
            print('\tCalculating outside contacts')
            self.outsideContacts = self.contactsOutsideBoundary()
            print('\tCalculating boundary block corners')
            self.boundaryBlockCorners = self.cornersOnBlocks(self.boundaryContactBlocks)
            print('\tCalculating boundary corners')
            self.boundaryCorners = Common.listIntersection(self.boundaryContactCorners, self.boundaryBlockCorners)
            print('\tCalculating missing boundary corners')
            self.allBoundaryCorners = self.duplicateCorners(self.boundaryCorners, self.boundaryContactBlocks)
            print('\tCalculating boundary block order')
            self.boundaryBlocksOrdered = self.orderBlocks(self.boundaryContactBlocks, self.outsideContacts)
            print('\tCalculating boundary corner order')
            self.boundaryCornersOrdered = self.orderCorners(self.boundaryBlocksOrdered, self.allBoundaryCorners)
        else:
            print('\tCalculating boundary block order')
            self.boundaryBlocksOrdered = self.outsideBlocks
            print('\tCalculating boundary corner order')
            self.boundaryCornersOrdered = self.singleElementCorners()
            print('\tCalculating inside boundary blocks')
            self.insideBoundaryBlocks = self.outsideBlocks
                   
    def stress(self):
        print('Assessing homogenized stress fields:')
        sigmaHistory = []
        for time in sorted(self.blockData.keys()):
            print('\tAt time {}s'.format(time))
            sigma = numpy.array([[0.,0.],[0.,0.]])
            for blockIndex in self.insideBoundaryBlocks:
                block = self.blockData[time][blockIndex]
                zones = block['zones']
                for zoneIndex in zones:
                    zone = self.zoneData[time][zoneIndex]
                    S11 = zone['S11']
                    S22 = zone['S22']
                    S12 = zone['S12']
                    S = numpy.array([[S11,S12],[S12,S22]])
                    gridPoints = zone['gridPoints']
                    gp = []
                    for gridPoint in gridPoints:
                        gpCoordinates = [self.gridPointData[time][gridPoint][var] for var in ['x', 'y']]
                        gp.append(gpCoordinates)
                    zoneArea = Common.triangleArea(gp)
                    sigma += numpy.multiply(zoneArea,S)

                xx = self.cornerX(self.boundaryCornersOrdered, time)
                yy = self.cornerY(self.boundaryCornersOrdered, time)

                totalArea = Common.area(list(zip(self.cornerX(self.boundaryCornersOrdered, time), self.cornerY(self.boundaryCornersOrdered, time))))
            sigmaHistory.append(sigma/totalArea*1e6)
        print('Finished assessing homogenized stress field')
        print('')
        self.stressHistory = sigmaHistory
        return sigmaHistory
    
    def strain(self):
        print('Assessing homogenized stress fields:')
        epsilonHistory = []
        corners = self.boundaryCornersOrdered
        corners.append(corners[0])
        for time in sorted(self.cornerData.keys()):
            print('\tAt time {}s'.format(time))
            epsilon = numpy.array([[0.,0.],[0.,0.]])
            for i in range(len(corners)-1):
                gridPoint1 = self.gridPointData[time][self.cornerData[time][corners[i]]['gridPoint']]
                gridPoint2 = self.gridPointData[time][self.cornerData[time][corners[i+1]]['gridPoint']]
                dx = gridPoint1['x']-gridPoint2['x']
                dy = gridPoint1['y']-gridPoint2['y']
                dW = math.hypot(dx, dy)
                if dW:
                    n = numpy.array([-dy, dx])/dW
                    u1 = numpy.array([gridPoint1['xDisp'], gridPoint2['yDisp']])
                    u2 = numpy.array([gridPoint1['xDisp'], gridPoint2['yDisp']])
                    u = (u1+u2)/2
                    x = numpy.outer(u, n)
                    epsilon += dW*(x + x.transpose())

            area = sum([self.blockData[time][b]['area'] for b in self.insideBoundaryBlocks])
            epsilonHistory.append(epsilon/2/area)
        print('finished assessing the homogenized stress field')
        print('')
        self.strainHistory = epsilonHistory
        return epsilonHistory

    def time(self):
        t = sorted(self.blockData.keys());
        self.timeHistory = t
        return t
        
if __name__ == '__main__':
    # yStress = list([stressHistory[t][1,1] for t in range(len(stressHistory))])
    # yStrain = list([strainHistory[t][1,1] for t in range(len(strainHistory))])
           
    clargs = sys.argv
    if len(clargs) >= 2:
        fileName = clargs[1]
    #else: error message
    #add other cl args for centre and radius
    module = __import__('UDEC.modelData.'+fileName[0:-3]+'_modelData', globals(), locals(), ['*'])
    for k in dir(module):
        locals()[k] = getattr(module, k)
    revCentre = {'x':mSize/2, 'y':mSize/2}
    revRadius = mSize/2-bSize*2
    
    H = Homogenize(revCentre, revRadius, fileName=fileName)
    stressHistory = H.stress()
    strainHistory = H.strain()
    timeHistory = H.time()
