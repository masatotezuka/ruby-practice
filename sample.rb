a, b = 1, 2
a, b = [1, 2]
print a, b
num_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# 取得する要素を指定
print num_array[2, 6]

# 偶数番目の要素を取得
print num_array.values_at(0, 2, 4, 6, 8)

# 最初の要素を取得
print num_array[0]
num_array.first

# 最後の要素を取得
print num_array[num_array.size - 1]
num_array[num_array.length - 1]
num_array.last
num_array[-1]

# do...end
sum = 0
num_array.each_with_index do |num, index|
    sum += num
    print "#{index}番目:#{sum}|"
end

# {}
sum1 = 0
num_array.each { |num| sum1 += num }
print sum

# map
new_num_array = num_array.map {|num| num * 10}
new_num_array2 = num_array.map do |num|
    num * 20
end

# inject
sum2 = num_array.inject(0) {|result,num| result + num}
print "inject result:#{sum2}"

currencies = {:japan => 'yen',:us => 'doller', :india => 'rupee'}
print currencies[:japan]
# シンボルを使うとメモリの使用量が少なくなる