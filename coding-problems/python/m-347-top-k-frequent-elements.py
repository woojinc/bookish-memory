import collections
def topKFrequent(nums, k):
        counter = collections.Counter(nums)
        # return heapq.nlargest(k, counter.keys(), key=counter.get)
        output = []
        heap = Heap()
        for key, val in counter.items():
            heap.insert([key, val])

        for _times in range(k):
            max_key, __ = heap.deleteMax()
            output.append(max_key)

        return output


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

        currentVal = self.heapList[idx][1]
        parentIdx = self.parentIdx(idx)
        parentVal = self.heapList[parentIdx][1]

        if currentVal > parentVal:
            self.heapList[idx], self.heapList[parentIdx] = self.heapList[parentIdx], self.heapList[idx]
            self.siftUp(parentIdx)

    def insert(self, val):
        self.heapList.append(val)
        self.siftUp(len(self.heapList) - 1)

    def siftDown(self, idx):
        leftIdx = self.leftIdx(idx)
        rightIdx = self.rightIdx(idx)
        currentVal = self.heapList[idx][1]
        leftVal = self.heapList[leftIdx][1] if len(self.heapList) > leftIdx else float("-inf")
        rightVal = self.heapList[rightIdx][1] if len(self.heapList) > rightIdx else float("-inf")
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


nums = [1, 1, 1, 2, 2, 3]
k = 2

print(topKFrequent(nums, k))
