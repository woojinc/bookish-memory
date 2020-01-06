// you may assume that the array will always have a null element at the 0-th index

function isMaxHeap(array) {
    let isComplete = array.every(el => el !== undefined);
    return isComplete && _isMaxHeap(array);
}


function _isMaxHeap(array, idx=1) {
    if (array[idx] === undefined) return true;

    let currentVal = array[idx];
    let leftChildIdx = 2 * idx;
    let rightChildIdx = 2 * idx + 1;

    let leftChildVal = array[leftChildIdx] === undefined ? -Infinity : array[leftChildIdx];
    let rightChildVal = array[rightChildIdx] === undefined ? -Infinity : array[rightChildIdx];

    return currentVal > leftChildVal && currentVal > rightChildVal
        && _isMaxHeap(array, leftChildIdx) && _isMaxHeap(array, rightChildIdx);
}


module.exports = {
    isMaxHeap
};