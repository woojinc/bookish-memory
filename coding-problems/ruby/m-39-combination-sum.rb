require 'set'

def combination_sum(candidates, target, current_candidate=[], answers=Set.new)
    # output_arr = []
    if target == 0 #&& !answers.include?(current_candidate.sort)
        answers << current_candidate.sort
        return 
    end
    
    return if target < 0
    
    candidates.each do |candidate|
        combination_sum(candidates, target - candidate, current_candidate + [candidate], answers)
    end
    
    return answers.to_a
end