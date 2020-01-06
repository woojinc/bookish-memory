class MaxHeap {
    constructor() {
        this.array = [null];
    }

    getParent(idx) {
        return Math.floor(idx / 2);
    }

    getLeftChild(idx) {
        return 2 * idx;
    }

    getRightChild(idx) {
        return 2 * idx + 1;
    }

    siftUp(idx) {
        if (idx === 1) return;

        let parentIdx = this.getParent(idx);
        let parentVal = this.array[parentIdx];
        let currentVal = this.array[idx];

        if (currentVal > parentVal) {
            [this.array[idx], this.array[parentIdx]] = [this.array[parentIdx], this.array[idx]];
            this.siftUp(parentIdx);
        }
    }

    insert(val) {
        this.array.push(val);
        this.siftUp(this.array.length - 1);
    }

    siftDown(idx) {
        let currentVal = this.array[idx];
        let leftChildIdx = this.getLeftChild(idx);
        let leftChildVal = this.array[leftChildIdx];
        let rightChildIdx = this.getRightChild(idx);
        let rightChildVal = this.array[rightChildIdx];
        let swapIdx;

        if (leftChildVal === undefined) leftChildVal = -Infinity;
        if (rightChildVal === undefined) rightChildVal = -Infinity;

        if (currentVal > leftChildVal && currentVal > rightChildVal) return;

        if (leftChildVal > rightChildVal) {
            swapIdx = leftChildIdx;
        } else {
            swapIdx = rightChildIdx;
        }

        [this.array[idx], this.array[swapIdx]] = [this.array[swapIdx], this.array[idx]];
        this.siftDown(swapIdx)
    }

    deleteMax() {
        if (this.array.length === 2) return this.array.pop();
        if (this.array.length === 1) return null;

        let maxVal = this.array[1];
        this.array[1] = this.array.pop();
        this.siftDown(1);

        return maxVal;
    }
}

module.exports = {
    MaxHeap
};