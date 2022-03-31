require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.chomp.to_i
 
#続きを書いていきましょう！！(ifで条件分岐)

if memo_type == 1
      
  puts "拡張子を除いたファイルを入力してください。"
  
  title_name = gets.to_s.chomp
  
  puts "メモしたい内容を記入して下さい"
  puts "完了したらCtrl + Dを押します"
  
   memo = STDIN.readlines.to_s
    
     CSV.open("#{title_name}.csv","w") do |csv|
     csv << [memo]

      end
end
   
if memo_type == 2
  
  puts "拡張子を除いたファイルを入力してください。"
  
  title_name = gets.chomp.to_s
  
  puts "編集したい内容を記入して下さい"
  puts "完了したらCtrl + Dを押します"
  
    memo = STDIN.readlines.to_s
  
     CSV.open("#{title_name}.csv","a") do |csv|
     csv << [memo]

      end
end
  
  
  

