def get_discriminant (a_array)
    return a_array[1]**2 - 4*a_array[2]*a_array[0]
end

def get_roots (a_array)
    @x1 = (-a_array[1] + Math.sqrt(get_discriminant(a_array)))/2
    @x2 = (-a_array[1] - Math.sqrt(get_discriminant(a_array)))/2
    if @x1 == @x2 
        return "x=#{@x1}"
    end
    if @x1 != @x2 
        return "x1=#{@x1}, x2=#{@x2}"
    end 
end

def result (a_array)
    @D = get_discriminant(a_array)
    case 
    when (@D>=0) 
     puts "D=#{@D}, #{get_roots(a_array)}"
    when (@D<0)  
     puts "D=#{@D}, Корней нет"
    end
end

puts "Введите коэффициенты, using 'Enter':"
coefficient_array = []    
3.times do
  coefficient = gets.chomp
  coefficient_array.push(coefficient.to_f)
end

result(coefficient_array)
