# input_intcode = [1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,6,1,19,1,5,19,23,2,6,23,27,1,27,5,31,2,9,31,35,1,5,35,39,2,6,39,43,2,6,43,47,1,5,47,51,2,9,51,55,1,5,55,59,1,10,59,63,1,63,6,67,1,9,67,71,1,71,6,75,1,75,13,79,2,79,13,83,2,9,83,87,1,87,5,91,1,9,91,95,2,10,95,99,1,5,99,103,1,103,9,107,1,13,107,111,2,111,10,115,1,115,5,119,2,13,119,123,1,9,123,127,1,5,127,131,2,131,6,135,1,135,5,139,1,139,6,143,1,143,6,147,1,2,147,151,1,151,5,0,99,2,14,0,0]
# input_intcode_pre_fire = [1,12,2,3,1,1,2,3,1,3,4,3,1,5,0,3,2,6,1,19,1,5,19,23,2,6,23,27,1,27,5,31,2,9,31,35,1,5,35,39,2,6,39,43,2,6,43,47,1,5,47,51,2,9,51,55,1,5,55,59,1,10,59,63,1,63,6,67,1,9,67,71,1,71,6,75,1,75,13,79,2,79,13,83,2,9,83,87,1,87,5,91,1,9,91,95,2,10,95,99,1,5,99,103,1,103,9,107,1,13,107,111,2,111,10,115,1,115,5,119,2,13,119,123,1,9,123,127,1,5,127,131,2,131,6,135,1,135,5,139,1,139,6,143,1,143,6,147,1,2,147,151,1,151,5,0,99,2,14,0,0]

# input_intcode = [3,225,1,225,6,6,1100,1,238,225,104,0,1102,40,93,224,1001,224,-3720,224,4,224,102,8,223,223,101,3,224,224,1,224,223,223,1101,56,23,225,1102,64,78,225,1102,14,11,225,1101,84,27,225,1101,7,82,224,1001,224,-89,224,4,224,1002,223,8,223,1001,224,1,224,1,224,223,223,1,35,47,224,1001,224,-140,224,4,224,1002,223,8,223,101,5,224,224,1,224,223,223,1101,75,90,225,101,9,122,224,101,-72,224,224,4,224,1002,223,8,223,101,6,224,224,1,224,223,223,1102,36,63,225,1002,192,29,224,1001,224,-1218,224,4,224,1002,223,8,223,1001,224,7,224,1,223,224,223,102,31,218,224,101,-2046,224,224,4,224,102,8,223,223,101,4,224,224,1,224,223,223,1001,43,38,224,101,-52,224,224,4,224,1002,223,8,223,101,5,224,224,1,223,224,223,1102,33,42,225,2,95,40,224,101,-5850,224,224,4,224,1002,223,8,223,1001,224,7,224,1,224,223,223,1102,37,66,225,4,223,99,0,0,0,677,0,0,0,0,0,0,0,0,0,0,0,1105,0,99999,1105,227,247,1105,1,99999,1005,227,99999,1005,0,256,1105,1,99999,1106,227,99999,1106,0,265,1105,1,99999,1006,0,99999,1006,227,274,1105,1,99999,1105,1,280,1105,1,99999,1,225,225,225,1101,294,0,0,105,1,0,1105,1,99999,1106,0,300,1105,1,99999,1,225,225,225,1101,314,0,0,106,0,0,1105,1,99999,1007,226,677,224,1002,223,2,223,1005,224,329,1001,223,1,223,1007,226,226,224,1002,223,2,223,1006,224,344,101,1,223,223,1107,677,226,224,102,2,223,223,1006,224,359,1001,223,1,223,108,677,677,224,1002,223,2,223,1006,224,374,1001,223,1,223,107,677,677,224,1002,223,2,223,1005,224,389,101,1,223,223,8,677,677,224,1002,223,2,223,1005,224,404,1001,223,1,223,108,226,226,224,1002,223,2,223,1005,224,419,101,1,223,223,1008,677,677,224,1002,223,2,223,1005,224,434,101,1,223,223,1008,226,226,224,1002,223,2,223,1005,224,449,101,1,223,223,7,677,226,224,1002,223,2,223,1006,224,464,1001,223,1,223,7,226,226,224,1002,223,2,223,1005,224,479,1001,223,1,223,1007,677,677,224,102,2,223,223,1005,224,494,101,1,223,223,1108,677,226,224,102,2,223,223,1006,224,509,1001,223,1,223,8,677,226,224,102,2,223,223,1005,224,524,1001,223,1,223,1107,226,226,224,102,2,223,223,1006,224,539,1001,223,1,223,1008,226,677,224,1002,223,2,223,1006,224,554,1001,223,1,223,1107,226,677,224,1002,223,2,223,1006,224,569,1001,223,1,223,1108,677,677,224,102,2,223,223,1005,224,584,101,1,223,223,7,226,677,224,102,2,223,223,1006,224,599,1001,223,1,223,1108,226,677,224,102,2,223,223,1006,224,614,101,1,223,223,107,226,677,224,1002,223,2,223,1005,224,629,101,1,223,223,108,226,677,224,1002,223,2,223,1005,224,644,101,1,223,223,8,226,677,224,1002,223,2,223,1005,224,659,1001,223,1,223,107,226,226,224,1002,223,2,223,1006,224,674,101,1,223,223,4,223,99,226]
# input_intcode = [3,12,6,12,15,1,13,14,13,4,13,99,-1,0,1,9]

## Part 1
# input_intcode = [3,15,3,16,1002,16,10,16,1,16,15,15,4,15,99,0,0]
# input_intcode = [3,23,3,24,1002,24,10,24,1002,23,-1,23,101,5,23,23,1,24,23,23,4,23,99,0,0]
# input_intcode = [3,31,3,32,1002,32,10,32,1001,31,-2,31,1007,31,0,33,1002,33,7,33,1,33,31,31,1,32,31,31,4,31,99,0,0,0]
input_intcode = [3,8,1001,8,10,8,105,1,0,0,21,38,59,84,93,110,191,272,353,434,99999,3,9,101,5,9,9,1002,9,5,9,101,5,9,9,4,9,99,3,9,1001,9,3,9,1002,9,2,9,101,4,9,9,1002,9,4,9,4,9,99,3,9,102,5,9,9,1001,9,4,9,1002,9,2,9,1001,9,5,9,102,4,9,9,4,9,99,3,9,1002,9,2,9,4,9,99,3,9,1002,9,5,9,101,4,9,9,102,2,9,9,4,9,99,3,9,101,2,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,1001,9,2,9,4,9,3,9,101,2,9,9,4,9,3,9,1001,9,1,9,4,9,3,9,102,2,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,1002,9,2,9,4,9,3,9,101,2,9,9,4,9,3,9,102,2,9,9,4,9,99,3,9,102,2,9,9,4,9,3,9,101,2,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,1002,9,2,9,4,9,3,9,1001,9,1,9,4,9,3,9,1001,9,1,9,4,9,3,9,101,2,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,101,2,9,9,4,9,3,9,1001,9,2,9,4,9,99,3,9,102,2,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,1002,9,2,9,4,9,3,9,101,2,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,1001,9,1,9,4,9,3,9,1001,9,1,9,4,9,3,9,1002,9,2,9,4,9,3,9,102,2,9,9,4,9,3,9,101,1,9,9,4,9,99,3,9,1001,9,2,9,4,9,3,9,101,2,9,9,4,9,3,9,1001,9,1,9,4,9,3,9,102,2,9,9,4,9,3,9,101,2,9,9,4,9,3,9,1001,9,2,9,4,9,3,9,101,2,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,102,2,9,9,4,9,3,9,1002,9,2,9,4,9,99,3,9,101,2,9,9,4,9,3,9,1002,9,2,9,4,9,3,9,1001,9,2,9,4,9,3,9,102,2,9,9,4,9,3,9,1001,9,2,9,4,9,3,9,1001,9,2,9,4,9,3,9,101,1,9,9,4,9,3,9,1001,9,1,9,4,9,3,9,101,1,9,9,4,9,3,9,1001,9,1,9,4,9,99]


## Part 2
# input_intcode = [3,26,1001,26,-4,26,3,27,1002,27,2,27,1,27,26,27,4,27,1001,28,-1,28,1005,28,6,99,0,0,5]
input_intcode = [3,52,1001,52,-5,52,3,53,1,52,56,54,1007,54,5,55,1005,55,26,1001,54,-5,54,1105,1,12,1,53,54,53,1008,54,0,55,1001,55,1,55,2,53,55,53,4,53,1001,56,-1,56,1005,56,6,99,0,0,0,0,10]

class IntcodeComputer

    attr_reader :input_intcode

    def initialize(input_intcode)
        @input_intcode = input_intcode
    end

    def magic_smoke(inputs)
        current_index = 0
        current_instruction_opcode = @input_intcode[current_index]
    
        until current_instruction_opcode % 100 == 99
    
            current_opcode = current_instruction_opcode % 100
            current_mode = current_instruction_opcode / 100
    
            param_mode_3 = current_mode / 100
            param_mode_2 = ( current_mode - (param_mode_3 * 100) ) / 10
            param_mode_1 = ( current_mode - (param_mode_3 * 100) ) % 10
    
            first_index = param_mode_1 == 0 ? @input_intcode[current_index + 1] : current_index + 1
            second_index = param_mode_2 == 0 ? @input_intcode[current_index + 2] : current_index + 2
            third_index = param_mode_3 == 0 ? @input_intcode[current_index + 3] : current_index + 3
    
            # first_value = param_mode_1 == 0 ? @input_intcode[thrid_index] : thrid_index
            # second_value = param_mode_2 == 0 ? @input_intcode[thrid_index] : thrid_index
            # third_index = param_mode_3 == 0 ? @input_intcode[thrid_index] : thrid_index
    
            case current_opcode
            when 1
                @input_intcode[third_index] = @input_intcode[first_index] + @input_intcode[second_index]
                current_index += 4
            when 2
                @input_intcode[third_index] = @input_intcode[first_index] * @input_intcode[second_index]
                current_index += 4
            when 3
                input = inputs.shift()
                @input_intcode[first_index] = input
                current_index += 2
            when 4
                return @input_intcode[first_index]
                current_index += 2
            when 5
                current_index = !@input_intcode[first_index].zero? ? @input_intcode[second_index] : current_index + 3
            when 6
                current_index = @input_intcode[first_index].zero? ? @input_intcode[second_index] : current_index + 3
            when 7
                @input_intcode[third_index] = @input_intcode[first_index] < @input_intcode[second_index] ? 1 : 0
                current_index += 4
            when 8
                @input_intcode[third_index] = @input_intcode[first_index] == @input_intcode[second_index] ? 1 : 0
                current_index += 4
            else
                return "Invalid Input"
            end
            current_instruction_opcode = @input_intcode[current_index]
        end
    
        return @input_intcode
    end
    
    def magic_smoke_detector (param_modes, current_index)
        # param_mode_1 = param_modes / 100
        # param_mode_2 = ( param_modes - (param_mode_1 * 100) ) / 10
        # param_mode_3 = ( param_modes - (param_mode_1 * 100) ) % 10
    
        # first_index = current_index + 1
        # second_index = current_index + 2
        # thrid_index = current_index + 3
    
    end
    
    def smoke_magic(input)
    
        
        nouns = Array(0..99)
        verbs = Array(0..99)
    
        nouns.each do |noun|
            verbs.each do |verb|
                test_input = input.dup
                test_input[1] = noun
                test_input[2] = verb
                return [noun, verb] if magic_smoke(test_input)[0] == 19690720
            end
        end
        
    end

    def amplifier(phase_settings = [0,1,2,3,4], input = 0)
        return input if phase_settings.length == 0
        max_signal = 0
        phase_settings.each_with_index do |setting, idx|
            amp_a = self.magic_smoke([setting, input])
            new_setting = phase_settings[0...idx]+phase_settings[idx+1..phase_settings.length]
            signal = amplifier(new_setting, amp_a)
            
            max_signal = signal if max_signal < signal
        end
        return max_signal

    end

    def feedbackLoop()
        self.amplifier([5,6,7,8,9], input = 0)
    end
end

int_comp = IntcodeComputer.new(input_intcode)

amp_e = 0
# goal_reached = false
counter = 0
until counter == 5 #amp_e >= 139629729
    # goal_reached = true if amp_e == 139629729
    amp_a = int_comp.magic_smoke([9,amp_e])
    amp_b = int_comp.magic_smoke([7,amp_a])
    amp_c = int_comp.magic_smoke([8,amp_b])
    amp_d = int_comp.magic_smoke([5,amp_c])
    amp_e = int_comp.magic_smoke([6,amp_d])
    puts "amp_a #{amp_a}"
    puts "amp_b #{amp_b}"
    puts "amp_c #{amp_c}"
    puts "amp_d #{amp_d}"
    puts "amp_e #{amp_e}"
    counter += 1
end
puts "counter #{counter}"
puts "amp_e #{amp_e}"

# p magic_smoke(input_intcode_pre_fire)
# p smoke_magic(input_intcode)

# p int_comp.amplifier()