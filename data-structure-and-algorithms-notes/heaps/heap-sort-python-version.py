def heapSort(list):
    for i in reversed(range(len(list))):
        heapify(list, len(list), i)
    
    print(f"Heapified list: {list}")

    ## Ordered
    # for endOfHeap in reversed(range(len(list))):
    #     swap(list, endOfHeap, 0)
    #     heapify(list, endOfHeap, 0)

    ## Reverse Ordered
    for endOfHeap in reversed(range(len(list))):
        swap(list, endOfHeap, 0)
        list.append(list.pop(endOfHeap))
        heapify(list, endOfHeap, 0)

    print(f"Sorted list: {list}")


def heapify(list, n, idx):
    leftIdx = 2 * idx + 1
    rightIdx = 2 * idx + 2

    currentVal = list[idx]
    leftVal = list[leftIdx] if leftIdx < n else float("-inf")
    rightVal = list[rightIdx] if rightIdx < n else float("-inf")

    if currentVal > leftVal and currentVal > rightVal:
        return

    swapIdx = None

    if leftVal > rightVal:
        swapIdx = leftIdx
    else:
        swapIdx = rightIdx

    swap(list, idx, swapIdx)
    heapify(list, n, swapIdx)


def swap(list, i, j):
    [list[i], list[j]] = [list[j], list[i]]


list = [7,9,6,10,20,4,8,21]
heapSort(list)
