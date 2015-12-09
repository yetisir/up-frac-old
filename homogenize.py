import os
import numpy
import math
import copy
import sys
import matplotlib.pyplot as plt

class Homogenize:
    def __init__(self, fileName, centre, radius):
        blockFileName = fileName + '___block.dat'
        contactFileName = fileName + '___contact.dat'
        cornerFileName = fileName + '___corner.dat'
        zoneFileName = fileName + '___zone.dat'
        gridPointFileName = fileName + '___gridPoint.dat'
        domainFileName = fileName + '___domain.dat'
        
        print('-'*70)
        print('Homogenization Initalization')
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
        
        self.centre = centre
        self.radius = radius
        
        self.singleBlock = False
        if len(self.contactData) == 0:
            self.singleBlock = True
    
    def parseDataFile(self, fileName):
        file = open(os.path.join('data', fileName))
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
        
    def contactsBetweenBlocks(self, blocks1, blocks2):
        time = min(self.blockData.keys())
        contacts1 = self.contactsOnBlocks(blocks1)
        contacts2 = self.contactsOnBlocks(blocks2)
        
        contacts = listIntersection(contacts1, contacts2)
        return contacts

    def blocksWithContacts(self, blocks, contacts):
        time = min(self.contactData.keys())
        newBlocks = []
        for contact in contacts:
            for block in self.contactData[time][contact]['blocks']:
                if block in blocks:
                    newBlocks.append(block)
        return list(set(newBlocks))

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
                relaventBlockContacts = listIntersection(blockContacts[j], relaventContacts)
                if i+1 > len(newBlockContacts):
                    i += -1
                    noSuccess += 1
                elif listIntersection(newBlockContacts[i], relaventBlockContacts):
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
        corners = copy.deepcopy(corners)
        orderedBlocks = copy.deepcopy(orderedBlocks)
        orderedBlocks.append(orderedBlocks[0])
        newCorners = []
        time = min(self.contactData.keys())
        
        for i in range(1, len(orderedBlocks)):
            blockCorners = listIntersection(corners, self.blockData[time][orderedBlocks[i]]['corners'])
            xDistance = [self.blockData[time][orderedBlocks[i-1]]['x'] - self.gridPointData[time][self.cornerData[time][c]['gridPoint']]['x'] for c in blockCorners] 
            yDistance = [self.blockData[time][orderedBlocks[i-1]]['y'] - self.gridPointData[time][self.cornerData[time][c]['gridPoint']]['y'] for c in blockCorners] 
            distance = [math.hypot(xDistance[z], yDistance[z]) for z in range(len(blockCorners))]
            index = distance.index(min(distance))
            newCorners.append(blockCorners[index])
            blockCorners.pop(index)
            iterations = len(blockCorners)
            for j in range(iterations):
                lastGridPoint = self.cornerData[time][newCorners[-1]]['gridPoint']
                minDistance = -1
                for k in range(len(blockCorners)):
                    nextGridPoint = self.cornerData[time][blockCorners[k]]['gridPoint']
                    xDistance = self.gridPointData[time][lastGridPoint]['x'] - self.gridPointData[time][nextGridPoint]['x'] 
                    yDistance = self.gridPointData[time][lastGridPoint]['y'] - self.gridPointData[time][nextGridPoint]['y'] 
                    distance = math.hypot(xDistance, yDistance)
                    if minDistance < 0 or distance < minDistance:
                        minDistance = distance
                        nextCorner = blockCorners[k]
                        nextCornerIndex = k
                newCorners.append(nextCorner)
                blockCorners.pop(nextCornerIndex)
        return newCorners
    
        
    def cornersOnContacts(self, contacts):
        time = min(self.contactData.keys())
        corners = []
        for contact in contacts: corners += self.contactData[time][contact]['corners']
        return corners
        
    def cornersOnBlocks(self, blocks):
        time = min(self.blockData.keys())
        corners = []
        for block in blocks: corners += self.blockData[time][block]['corners']
        return corners
        
    def contactsOnBlocks(self, blocks):
        time = min(self.blockData.keys())
        contacts = []
        for block in blocks: 
            for contact in self.contactData[time].keys():
                if block in self.contactData[time][contact]['blocks']:
                    contacts.append(contact)
        return contacts
        
    def blockEdges(self, blocks, time = 0):
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
        
    def singleElementCorners(self):
        time = min(self.blockData.keys())
        blocks = self.blockData[time].keys()
        return self.cornersOnBlocks(blocks)
        
    def stress(self):
        print('-'*70)
        print('Stress Homogenization')
        print('-'*70)
        print('Preparing to calculate stress homogenization parameters:')
        print('\tCalculating boundary blocks')
        self.boundaryBlocks = self.blocksOnBoundary()
        print('\tCalculating inside blocks')
        self.insideBlocks = self.blocksInsideBoundary()
        print('\tCalculating inside boundary blocks')
        if not self.singleBlock:
            self.insideBoundaryBlocks = self.boundaryBlocks + self.insideBlocks
        else:
            self.insideBoundaryBlocks = self.blocksOutsideBoundary()
            
            
        print('Finished calculating stress homogenization parameters')
        print('Assessing homogenized stress fields:')
        
        sigmaHistory = []
        for time in sorted(self.blockData.keys()):
            print('\tAt time {}s'.format(time))
            sigma = numpy.array([[0.,0.],[0.,0.]])
            area = 0
            for blockIndex in self.insideBoundaryBlocks:
                block = self.blockData[time][blockIndex]
                zones = block['zones']
                area += block['area']
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
                    zoneArea = triangleArea(gp)
                    sigma += numpy.multiply(zoneArea,S)
            sigmaHistory.append(sigma/area*1e6)
        print('Finished assessing homogenized stress field')
        print('')
        self.stressHistory = sigmaHistory
        return sigmaHistory
    
    def strain(self):
        print('-'*70)
        print('Calculating Strain Homogenization Parameters')
        print('-'*70)
        print('Preparing to calculate strain homogenization parameters:')
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
            self.boundaryCorners = listIntersection(self.boundaryContactCorners, self.boundaryBlockCorners)
            print('\tCalculating boundary block order')
            self.boundaryBlocksOrdered = self.orderBlocks(self.boundaryContactBlocks, self.outsideContacts)
            print('\tCalculating boundary corner order')
            self.boundaryCornersOrdered = self.orderCorners(self.boundaryBlocksOrdered, self.boundaryCorners)
        else:
            print('\tCalculating boundary block order')
            self.boundaryBlocksOrdered = self.outsideBlocks
            print('\tCalculating boundary corner order')
            self.boundaryCornersOrdered = self.singleElementCorners()
            print('\tCalculating inside boundary blocks')
            self.insideBoundaryBlocks = self.outsideBlocks
           
        print('Finished calculating strain homogenization parameters')
        print('Assessing homogenized stress fields:')

        epsilonHistory = []
        for time in sorted(self.cornerData.keys()):
            print('\tAt time {}s'.format(time))
            epsilon = numpy.array([[0.,0.],[0.,0.]])
            corners = self.boundaryCornersOrdered
            corners.append(corners[0])
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
        print('finished assessing the homogenized stresss field')
        print('')
        self.strainHistory = epsilonHistory
        return epsilonHistory

    def time(self):
        t = sorted(self.blockData.keys());
        self.timeHistory = t
        return t
        
    def plot(self):
        # cornerX = []
        # cornerY = []
        # time = min(cornerData.keys())   
        time = min(self.blockData.keys()) #should be removed, so plots can be at any time.

        
        xxb = [self.blockData[time][block]['x'] for block in self.boundaryBlocksOrdered]
        yyb = [self.blockData[time][block]['y'] for block in self.boundaryBlocksOrdered]
        # xxo = [outsideBlockData[time][block]['x'] for block in outsideBlockData[time].keys()]
        # yyo = [outsideBlockData[time][block]['y'] for block in outsideBlockData[time].keys()]
        xxc = [self.contactData[time][contact]['x'] for contact in self.boundaryContacts]
        yyc = [self.contactData[time][contact]['y'] for contact in self.boundaryContacts]
        xxcr = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['x'] for corner in self.boundaryCorners]
        yycr = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['y'] for corner in self.boundaryCorners]
        xxcro = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['x'] for corner in self.boundaryCornersOrdered]
        yycro = [self.gridPointData[time][self.cornerData[time][corner]['gridPoint']]['y'] for corner in self.boundaryCornersOrdered]
        
        # b = 51899
        # c = blockData[time][b]['contacts']
        # bb = []
        # for i in c:
            # bb += contactData[time][i]['blocks']
        # cr = cornersOnBlocks(blockData, [b])
        # cc = contactsOnBlocks(contactData, [b])
        # xxcc = [contactData[time][contact]['x'] for contact in cc]
        # yycc = [contactData[time][contact]['y'] for contact in cc]
        # print(c)
        # print(bb)
        # print(cr)
        # print(cc)
        # cornerX = [boundaryCornerData[time][corner]['x'] for corner in boundaryCornerData[time].keys()]
        # cornerY = [boundaryCornerData[time][corner]['y'] for corner in boundaryCornerData[time].keys()]
        
        be = self.blockEdges(self.boundaryContactBlocks)
        plt.figure(1)
        plt.plot(be[0], be[1], 'b-', xxcro, yycro, 'g-', xxcro, yycro, 'go', xxb, yyb, 'y-', xxb, yyb, 'yo')
        boundary = plt.Circle((self.centre['x'], self.centre['y']),self.radius,color='r', fill=False)
        plt.gcf().gca().add_artist(boundary)
        plt.axis([0, 10, 0, 10])
        plt.axis('equal')
        plt.show(block = False)
        
        plt.figure(2)
        be = self.blockEdges(self.boundaryContactBlocks)
        plt.plot(be[0], be[1], 'b-', xxcro, yycro, 'g-', xxcro, yycro, 'go')
        plt.axis([0, 10, 0, 10])
        plt.axis('equal')
        plt.show(block = False)

        
        # # cornerX = [cornerData[time][corner]['x'] for corner in cornerData[time]]
        # # cornerY = [cornerData[time][corner]['y'] for corner in cornerData[time]]
            
        
        
def triangleArea(gp):
    distance = lambda p1,p2: math.hypot(p1[0]-p2[0], p1[1]-p2[1])
    side_a = distance(gp[0], gp[1])
    side_b = distance(gp[1], gp[2])
    side_c = distance(gp[2], gp[0])
    s = 0.5 * (side_a + side_b + side_c)
    return math.sqrt(s * (s - side_a) * (s - side_b) * (s - side_c))
    
def listIntersection(a, b):
    return list(set(a) & set(b))

def createOstIn(H, parameters):
    import ostIn
    observations = ''
    numObservations = len(H.timeHistory)
    for i in range(numObservations):
        for j in range(len(parameters)):
            if parameters[j] == 'S11':
                o = H.stressHistory[i][0, 0]
                c = 2
            elif parameters[j] == 'S22':
                o = H.stressHistory[i][1, 1]
                c = 3
            elif parameters[j] == 'S12':
                o = H.stressHistory[i][0, 1]
                c = 4
            elif parameters[j] == 'LE11':
                o = H.strainHistory[i][0, 0]
                c = 5
            elif parameters[j] == 'LE22':
                o = H.strainHistory[i][1, 1]
                c = 6
            elif parameters[j] == 'LE12':
                o = H.strainHistory[i][0, 1]
                c = 7
            l = i+2
            obsNo = i*len(parameters)+j+1
            newObservation = 'obs{} \t\t{:10f} \t1 \toutput.dat \tOST_NULL \t{} \t\t{}\n'.format(obsNo, o, l, c)
            observations += newObservation
    with open('OstIn.txt', 'w') as f:
        f.write(ostIn.topText+observations+ostIn.bottomText)
        
if __name__ == '__main__':
    os.system('cls')
    
    fileName = 'ostrichTest'
    clargs = sys.argv
    if len(clargs) >= 2:
        fileName = clargs[1]
    revCentre = {'x':5, 'y':5}
    revRadius = 4.5
    
    H = Homogenize(fileName, revCentre, revRadius)

    stressHistory = H.stress()
    strainHistory = H.strain()
    timeHistory = H.time()
    

    with open('observationUDEC.dat', 'w') as f:
        f.write('time S11 S22 S12 LE11 LE22 LE12\n')
        f.write('0.0 0.0 0.0 0.0 0.0 0.0 0.0\n')
        for i in range(len(stressHistory)):
            S11 = stressHistory[i][0,0]
            S22 = stressHistory[i][1,1]
            S12 = stressHistory[i][0,1]
            LE11 = strainHistory[i][0,0]
            LE22 = strainHistory[i][1,1]
            LE12 = strainHistory[i][0,1]
            time = timeHistory[i]
            record = [time, S11, S22, S12, LE11, LE22, LE12]
            record = ' '.join(map(str, record))
            f.write(record + '\n')

    createOstIn(H, ['S11', 'S22'])

    # yStress = list([stressHistory[t][1,1] for t in range(len(stressHistory))])
    # yStrain = list([strainHistory[t][1,1] for t in range(len(strainHistory))])
    # plt.plot(yStress, yStrain)
    #H.plot()
    #plt.show()
# def cornersOnBoundary(boundaryContactData, boundaryBlockData, cornerData):
# ######Needs to be fixed###########
    # boundaryCornerData = {}
    # for time in boundaryContactData:
        # boundaryCorners = {}
        # #boundaryContact = boundaryContactData[time][boundaryContactData.keys()[0]]
        # for contact in boundaryContactData[time]:
            # boundaryContactCorners = boundaryContactData[time][contact]['corners']
            # boundaryContactBlocks = boundaryContactData[time][contact]['blocks']
            # for block in boundaryContactBlocks:
                # if block in boundaryBlockData[time].keys():
                    # for corner in boundaryBlockData[time][block]['corners']:
                        # if corner in boundaryContactCorners:
                            # boundaryCorners[corner] = cornerData[time][corner]
        # boundaryCornerData[time] = boundaryCorners
    # return boundaryCornerData
    
