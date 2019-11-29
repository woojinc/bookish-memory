def solution(amount, coins, memo={})

    coins.each do |coin|

        current_coin = coins[-1]

        return 1 if amount - current_coin == 0
        return 0 if amount - current_coin < 0

        total = 0
        
        if ( amount > current_coin )
            total += solution( amount - current_coin, coins )
        else
            total += solution( amount, coins[0...-1] )
        end

    end
    
    return total
end

p solution(5, [1, 2, 5]);

5
2 2 1 -> 2 1 2
2 1 1 1
1 1 1 1 1