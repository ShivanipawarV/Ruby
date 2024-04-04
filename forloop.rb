# array=[]
# puts "enter the lenght of the array: "
# len=gets.chomp.to_i
# len.times do 
#     puts "enter the value in to the array: "
#     number=gets.chomp.to_i
#     array << number
# end
# for i in array do
#     square=i*i 
#     puts "the square of number #{i} is #{square}."
# end

def hash_from_arrays(a,b)
    hash={}
    a.length.times do |i|
        hash[a[i]]=b[i]
    end
    hash
end

a=%w[red blue green]
b=[1,2,3]
puts hash_from_arrays(a,b)
