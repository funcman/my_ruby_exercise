# encoding: utf-8
# 添加上面一行才能保证正常的中文输出，否则报“invalid multibyte char (US-ASCII)”

puts "= My Ruby Exercise ====================================================="

puts 'Hello World!'
puts "I'm Hezekiah Ho."
puts '我的网名是"funcman"。'
# 本行以及下一行都是是注释行
#puts "显示不出来"

puts "========================================================================"

puts "壹加壹等于几？", 1+1
puts "二减二等于几？", 2-2
puts "三乘以三得几？", 3*3
puts "四除以四得几？", 4/4
puts "五除以六余几", 5%6
puts "七大于八？", 7>8
puts "九点九小于等于十？", 9.9<=10
puts "零点零等于零？", 0.0==0

puts "========================================================================"

a = 100
b = 200.0
c = a + b
puts "a is #{a} and b is #{b}, c=a+b"
puts "c+10 is #{c+10}"

puts "========================================================================"

my_cn_name = '何某某'
my_age = 18
my_height = 1.8
my_city = '安庆'
puts "- 你中文名字叫什么？"
puts "- #{my_cn_name}。", "  我的中文名叫%s。" % my_cn_name
puts "- 说一下你的资本资料。"
puts "- 我今年%d岁，身高%.2f公尺，我是%s人。" % [my_age, my_height, my_city]
puts "- "+ "." * 6
puts #此处换行
w1 = "以上对话完全虚构"
w2 = "如有雷同纯属巧合"
puts "(" + w1 + "，" + w2 + ")"

puts "========================================================================"

formatter = "%s %s %s"
puts formatter % [1, 2, 3]
puts formatter % [0.1, 2.3, 4.5]
puts formatter % ["一", "二", "三"]
puts formatter % [true, false, true]
puts formatter % [formatter, formatter, formatter]

puts "========================================================================"

puts "这是我" + <<TEXT
自学Ruby时写的练习代码，用于日后对Ruby的回顾。\n我恐怕不会常用Ruby，学了却不记录下来，容易很快忘掉。
TEXT

puts "========================================================================"

puts <<TEXT
Ruby转义字符：
\t* \\\\ 斜杠\\
\t* \\t Tab符
\t* \\n 换行符
\t* \\\" 双引号
\t* \\\' 单引号
实际上在这里不需要转义字符就可以任意输出引号"和'。
TEXT

puts "========================================================================"

puts "What's your name?"
name = STDIN.gets.chomp()         # chomp()可以去除\n符
print "Hi, #{name}. "
puts "And how old are you?"
age = STDIN.gets.chomp()
begin
    print "OK, I guess you was born in %d.\n" % (Integer(Time.new.strftime("%Y")) - Integer(age))
rescue
    print "OK...OK... I no longer asked your age.\n"
end

puts "========================================================================"

if ARGV.size >= 2
    first, second = ARGV
    puts "%s %s" % [ARGV[0], first]
    puts "%s %s" % [ARGV[1], second]
    puts $0
else
    puts "Arguments don't exist or not enough argument."
end

puts "========================================================================"

puts "Open a file, input the filename please:"
print "> "
filename = STDIN.gets.chomp()
if filename.strip.size > 0
    begin
        File.open(filename) do |file|
            puts "Here is your file: #{filename}"
            puts file.read()
        end
    rescue
        puts "Can't open the file. Perhaps the file does not exist."
    end
else
    puts "Nothing is opened."
end
puts "= END =================================================================="
