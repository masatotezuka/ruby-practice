a, b = 1, 2
a, b = [1, 2]
puts a, b
num_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# 取得する要素を指定
puts num_array[2, 6]

# 偶数番目の要素を取得
puts num_array.values_at(0, 2, 4, 6, 8)

# 最初の要素を取得
puts num_array[0]
num_array.first

# 最後の要素を取得
puts num_array[num_array.size - 1]
num_array[num_array.length - 1]
num_array.last
num_array[-1]

# do...end
sum = 0
num_array.each_with_index do |num, index|
    sum += num
end

# {}
sum1 = 0
num_array.each { |num| sum1 += num }
puts sum

# map
new_num_array = num_array.map {|num| num * 10}
new_num_array2 = num_array.map do |num|
    num * 20
end

#select
p num_array.select {|num| num % 3 == 0}
# =>[0, 3, 6, 9]

# reject
p num_array.reject {|num| num % 3 == 0}
# =>[1, 2, 4, 5, 7, 8, 10]

# find
p num_array.find {|num| num.odd?}
# => 1

p num_array.find(&:odd?)
# => 1
# 「&:メソッド名」の条件
# 1. ブロック引数が1つだけである
# 2. ブロックの中で呼び出すメソッドには引数がない
# 3. ブロックの中ではブロック引数に対してメソッドを1回呼び出す以外の処理がない

# inject
sum2 = num_array.inject(0) {|result,num| result + num}
puts "inject result:#{sum2}"

p "Range"
p [*1...5]
# => [1, 2, 3, 4]
p [*1..5]
# => [1, 2, 3, 4, 5]

a_num_arr = [*1..5]
b_num_arr = [*6..10]
c_num_arr = a_num_arr + b_num_arr
p c_num_arr
p [*a_num_arr,6,7,8]

p "Ruby".chars
p "Ruby,Java,Perl,PHP".split(',')

currencies = {:japan => 'yen',:us => 'doller', :india => 'rupee'}
puts currencies[:japan]
# シンボルを使うとメモリの使用量が少なくなる

# 省略記法
puts "省略記法\n"
puts %w!apple melon orange!

text = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
TEXT
p text

