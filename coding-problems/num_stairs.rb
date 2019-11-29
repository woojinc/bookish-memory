def count_possible_ways(n_steps, possible_ways = {})

    num_possible_ways = 0

    return possible_ways[n_steps] if possible_ways[n_steps]
    return 1 if n_steps == 0
    return 0 if n_steps < 0

    num_possible_ways += count_possible_ways(n_steps - 1, possible_ways)
    num_possible_ways += count_possible_ways(n_steps - 2, possible_ways)
    num_possible_ways += count_possible_ways(n_steps - 3, possible_ways)
    # num_possible_ways += count_possible_ways(n_steps - 4, possible_ways)
    # num_possible_ways += count_possible_ways(n_steps - 5, possible_ways)

    possible_ways[n_steps] = num_possible_ways

    return possible_ways[n_steps]

end

p count_possible_ways(3)
p count_possible_ways(4)
p count_possible_ways(5)


1 1 1 1 1
1 1 1 2
1 2 1
1 1 2
2 1 2
2 2 1
