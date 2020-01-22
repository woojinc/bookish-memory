# **Binary Search Tree**

* Only works if the input is already sorted

#### JavaScript Implementation of Binary Search Tree

```javascript
function binarySearch(array, target) {
    if (array.length === 0) {
        return false;
    }

    let midIdx = Math.floor(array.length / 2);
    let leftHalf = array.slice(0, midIdx);
    let rightHalf = array.slice(midIdx + 1);

    if (target < array[midIdx]) {
        return binarySearch(leftHalf, target);
    } else if (target > array[midIdx]) {
        return binarySearch(rightHalf, target);
    } else {
        return true;
    }
}
```

```ruby
def binarySearch(array, target)
    return false if array.length == 0

    mid_index = array.length / 2

    mid_value = array[mid_index]

    if mid_value == target
        return true
    elsif mid_value > target
        return binarySearch(array[0...mid_index], target)
    elsif mid_value < target
        return binarySearch(array[mid_index + 1..-1], target)
    end

end
```