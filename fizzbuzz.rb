# def fb(num)
#     i=1
#     until i > num
#         if i%3==0 && i%5==0
#             return "fizzbuzz"
#         elsif i%3==0
#             return "fizz"
#         elsif i%5==0
#             return "buzz"
#         else
#             return i
#         end
#     end
# end

num = 30
i=1
until i > num
    if i%3==0
        puts "fizzbuzz"
    elsif i%5==0
        puts "fizz"
    elsif i%3==0 && i%5==0
        puts "buzz"
    else
        puts i
    end
    # p i
    i+=1
end