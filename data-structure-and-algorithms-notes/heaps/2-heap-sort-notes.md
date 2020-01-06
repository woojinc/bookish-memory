# **Heap Sort Notes**

## **Heap Sort**

#### JavaScript

```javascript
function heapSort(array) {
    for (let i = array.length - 1; i >= 0; i--) {
        heapify(array, array.length, i);
    }

    for (let endOfHeap = array.length - 1; endOfHeap >= 0; endOfHeap--) {
        swap(array, endOfHeap, 0);
        heapify(array, endOfHeap, 0);
    }
    
    return array;
}

function heapify(array, n, i) {
    let leftIdx = 2 * i + 1;
    let rightIdx = 2 * i + 2;

    let leftVal = array[leftIdx];
    let rightVal = array[rightIdx];

    if (leftIdx >= n) leftVal = -Infinity;
    if (rightIdx >= n) rightVal = -Infinity;

    if (array[i] > leftVal && array[i] > rightVal) return;

    let swapIdx;
    if (leftVal < rightVal) {
        swapIdx = rightIdx;
    } else {
        swapIdx = leftIdx;
    }
    swap(array, i, swapIdx);
    heapify(array, n, swapIdx);
}

function swap(array, i, j) {
    [ array[i], array[j] ] = [ array[j], array[i] ];
}
```
#### Python 3

```python
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

```