puts "じゃんけん..."


def janken
puts "(0)グー(1)チョキ(2)パー(3)戦わない"


player1 = gets.to_i
player2 = rand(3)

jankens = ["グー","チョキ","パー","戦わない"]

puts "あなた：#{jankens[player1]}"
puts "相手：#{jankens[player2]}"

if player1 == player2
  puts "あいこで"
  return true

elsif player1 == 0 && player2 == 1 || player1 == 1 && player2 == 2 || player1 == 2 && player2 == 0
  puts "じゃんけん勝ち。あっち向いて（指を指す）"
  yubi_sasu
  
elsif player1 == 3 
  puts "じゃんけんを放棄した"

else 
  puts "じゃんけん負け。あっち向いて（顔を動かす）"
  kao_sasu
  
end
end


#----------------------------------------------

def yubi_sasu
 puts "あっち向いて"
 puts "(0)上(1)下(2)右(3)左"
 player1_yubi =  gets.to_i
 player2_kao = rand(4)
 
 directions = ["上","下","右","左"]
 
 puts "あなた：#{directions[player1_yubi]}"
 puts "相手：#{directions[player2_kao]}"
 
 if player1_yubi == player2_kao
   puts "あなたの勝ちです"
 else
   janken
 end
  
end
#----------------------------------------------
def kao_sasu
  puts "あっち向いて"
  puts "(0)上(1)下(2)右(3)左"
  
  player1_kao =  gets.to_i
  player2_yubi = rand(4)
  
  directions = ["上","下","右","左"]
  
  puts "あなた：#{directions[player1_kao]}"
  puts "相手：#{directions[player2_yubi]}"
  
  if player1_kao == player2_yubi
    puts "あなたの負けです"
  else
    janken
  end
  
end

return_game = true

while return_game
  
  return_game = janken
  
end
