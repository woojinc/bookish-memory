class Heap:
    def __init__(self):
        self.heapList = [None]

    def parentIdx(self, idx):
        return idx // 2

    def leftIdx(self, idx):
        return idx * 2

    def rightIdx(self, idx):
        return idx * 2 + 1

    def siftUp(self, idx):
        if idx == 1:
            return

        currentVal = self.heapList[idx]
        parentIdx = self.parentIdx(idx)
        parentVal = self.heapList[parentIdx]

        if currentVal > parentVal:
            self.heapList[idx], self.heapList[parentIdx] = self.heapList[parentIdx], self.heapList[idx]
            self.siftUp(parentIdx)

    def insert(self, val):
        self.heapList.append(val)
        self.siftUp(len(self.heapList) - 1)

    def siftDown(self, idx):
        leftIdx = self.leftIdx(idx)
        rightIdx = self.rightIdx(idx)
        currentVal = self.heapList[idx]
        leftVal = self.heapList[leftIdx] if len(self.heapList) > leftIdx else float("-inf")
        rightVal = self.heapList[rightIdx] if len(self.heapList) > rightIdx else float("-inf")
        swapIdx = None

        if currentVal > leftVal and currentVal > rightVal:
            return
        
        if leftVal > rightVal:
            swapIdx = leftIdx
        else:
            swapIdx = rightIdx

        self.heapList[idx], self.heapList[swapIdx] = self.heapList[swapIdx], self.heapList[idx]
        self.siftDown(swapIdx)

    def deleteMax(self):
        if len(self.heapList) == 2:
            return self.heapList.pop()
        if len(self.heapList) == 1:
            return None

        maxVal = self.heapList[1]
        self.heapList[1] = self.heapList.pop()
        self.siftDown(1)

        return maxVal


    def __repr__(self):
        return str(self.heapList[1:])

heap = Heap()
heap.insert(3)
print(heap)
heap.insert(2)
print(heap)
heap.insert(3)
print(heap)
heap.insert(1)
print(heap)
heap.insert(2)
print(heap)
heap.insert(4)
print(heap)
heap.insert(5)
print(heap)
heap.insert(5)
print(heap)
heap.insert(6)
print(heap)
heap.deleteMax()
heap.deleteMax()
heap.deleteMax()
heap.deleteMax()
heap.deleteMax()
heap.deleteMax()
heap.deleteMax()
heap.deleteMax()
print(heap.deleteMax())
print(heap)
