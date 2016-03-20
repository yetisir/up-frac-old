import os
import sys
import Homogenize

from FracPlot import FracPlot
class HomoPlot(FracPlot):
    def __init__(self, plotName, homogenizationClass, showPlots=True):
        FracPlot.__init__(self, plotName, dataClass=homogenizationClass, showPlots=showPlots)

        self.centre = homogenizationClass.centre
        self.radius = homogenizationClass.radius
        
        self.boundaryBlocks = homogenizationClass.boundaryBlocks
        self.insideBlocks = homogenizationClass.insideBlocks
        self.outsideBlocks = homogenizationClass.outsideBlocks
        self.insideBoundaryBlocks = homogenizationClass.insideBoundaryBlocks
        self.boundaryContacts = homogenizationClass.boundaryContacts
        self.boundaryContactCorners = homogenizationClass.boundaryContactCorners
        self.boundaryContactBlocks = homogenizationClass.boundaryContactBlocks
        self.outsideCorners = homogenizationClass.outsideCorners
        self.outsideContacts = homogenizationClass.outsideContacts
        self.boundaryBlockCorners = homogenizationClass.boundaryBlockCorners
        self.boundaryCorners = homogenizationClass.boundaryCorners
        self.allBoundaryCorners = homogenizationClass.allBoundaryCorners
        self.boundaryBlocksOrdered = homogenizationClass.boundaryBlocksOrdered
        self.boundaryCornersOrdered = homogenizationClass.boundaryCornersOrdered
        
    def plotBoundaryBlocks(self):
        self.blocks = self.boundaryBlocks
        self.zones = self.zonesInBlocks(self.blocks)
        self.plotBlocks()

    def plotHomogenizationBlocks(self):
        self.blocks = self.insideBoundaryBlocks
        self.plotBlocks()
        
    def plotBoundaryZones(self):
        self.zones = self.zonesInBlocks(self.boundaryBlocks)
        self.plotZones()

    def plotHomogenizationZones(self):
        self.zones = self.zonesInBlocks(self.insideBoundaryBlocks)
        self.plotZones()
        
    def plotREV(self):
        self.plotCircle(self.radius, self.centre, label='REV Boundary')

    def plotBoundaryEdge(self):
        times = sorted(self.cornerData)
        for i in range(len(times)):
            x = self.cornerX(self.boundaryCornersOrdered, times[i])
            y = self.cornerY(self.boundaryCornersOrdered, times[i])
            self.animationImages[i] += self.axes.plot(x, y, 'k-', label='Homogenization Boundary', linewidth=2, marker='.', markersize=10)

    def plotBoundaryEdge_Initial(self):
        time = min(self.cornerData.keys())
        x = self.cornerX(self.boundaryCornersOrdered, time)
        y = self.cornerY(self.boundaryCornersOrdered, time)
        self.plotLine(x, y, label='Initial Homogenization Boundary', linewidth=1, marker=None)
    
    def plotHomogenizationAnimation(self):        
        minTime = min(self.blockData.keys())   
        maxTime = max(self.blockData.keys())   
        from Homogenize import Homogenize
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



if __name__ == '__main__':
    os.system('cls')
    
    clargs = sys.argv
    if len(clargs) >= 2:
        fileName = clargs[1]
    H = Homogenize.Homogenize({'x':5, 'y':5}, 3.5, fileName=fileName)

    P = HomoPlot('test', H)
    P.setAxis_Zoom(centre=(0.75, 0.75), zoom=3.5)  
    P.plotStressField('S22', sigma=1)
    P.setAxis_Full()  
    P.plotHomogenizationZones()
    P.plotHomogenizationBlocks()
    P.plotREV()
    P.plotBoundaryEdge_Initial()
    P.plotBoundaryEdge()
    P.plotZoomBox(centre=(0.75, 0.75))
    P.addLegend()
    P.animate()
        