var singleNumber = function (nums) {
    let set_nums = new Set();

    for (num of nums) {
        if (set_nums.has(num)) {
            set_nums.delete(num);
        } else {
            set_nums.add(num);
        }
    }

    return [...set_nums][0];
};

console.log(singleNumber([2, 2, 1]));
console.log(singleNumber([4, 1, 1, 2, 2]));