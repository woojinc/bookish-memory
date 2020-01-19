def kth_smallest(root, k)
  stack = []

  while k > 0
    while root
      stack.push(root)
      root = root.left
    end

    root = stack.pop()

    k -= 1

    return root.val if k == 0

    root = root.right
  end

  # print_tree(root)[k - 1]
end

# def print_tree(root)
#     left = root.left ? print_tree(root.left) : []
#     right = root.right ? print_tree(root.right) : []
#     left + [root.val] + right
# end

