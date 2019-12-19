f = open("coding-problems/advent_of_code/day-8-input.txt", "r")

images = f.read().strip()

class Layers:
    def __init__(self, images):
        self.pixelWidth = 25
        self.pixelHeight = 6
        layers = []
        totalSize = len(images)
        pixelSize = self.pixelWidth * self.pixelHeight
        for layerLevel in range(0, totalSize//pixelSize):
            stringNums = images[pixelSize*layerLevel:pixelSize*(layerLevel+1)]
            # layer = [int(s) for s in list(stringNums)]
            layer = [s for s in list(stringNums)]
            layers.append(layer)

        self.layers = layers

    def findLeastZeroLayer(self):
        leastZeroLayer = None
        zeroCounter = float("inf")
        for layer in self.layers:
            if zeroCounter > layer.count("0"):
                zeroCounter = layer.count("0")
                leastZeroLayer = layer
        
        return leastZeroLayer.count("1") * leastZeroLayer.count("2")

    def decodeImage(self):
        # canvas = [[2 for col in range(25)] for row in range(6)]
        canvas = ["2" for col in range(25 * 6)]
        for layer in self.layers:
            for pixelIndex in range(150):
                if canvas[pixelIndex] == "2":
                    if layer[pixelIndex] == "0":
                        canvas[pixelIndex] = " "
                    elif layer[pixelIndex] == "1":
                        canvas[pixelIndex] = "@"
                    else:
                        canvas[pixelIndex] = "2"
        return canvas




layers = Layers(images)
print(layers.findLeastZeroLayer())

decodedImage = layers.decodeImage()
print("".join(decodedImage[0:25]))
print("".join(decodedImage[25:50]))
print("".join(decodedImage[50:75]))
print("".join(decodedImage[75:100]))
print("".join(decodedImage[100:125]))
print("".join(decodedImage[125:150]))
    


