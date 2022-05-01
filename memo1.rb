puts "じゃんけん..."
puts "0（グー）1（チョキ）2（パー）"

def janken_time

my_hand = gets.to_i
program_hand = rand(2)

janken = ["グーを出しました","チョキを出しました","パーを出しました"]

puts "ホイ！"
puts"-----------------"
puts "あなた:#{janken[my_hand]}, 相手:#{janken[program_hand]}"
puts "----------------"

win = (my_hand == 0 && program_hand == 1) || (my_hand == 1 && program_hand == 2) || (my_hand == 2 && program_hand == 0)
lose = !(win)

if my_hand == program_hand
    puts "あいこで..."
    puts "0（グー）1（チョキ）2（パー）"
    return true
    
  elsif win
    puts "あなたの勝ちです。あっち向いてホイに移行します"
    @result = "win"
    puts ""#ここにputsを入れると正常に稼働した

  elsif lose
    puts "あなたの負けです。あっち向いてホイに移行します"
    @result = "lose"
    puts ""#ここにputsを入れると正常に稼働した
end
  
end

next_game = true

while next_game
   next_game = janken_time
end




if @result == "win"
   puts "あっち向いて〜"
   puts "0（上）1（下）2（左）3（右）"

   my_hand_2 = gets.to_i
   program_hand_2 = rand(3)

   acchimuite_hoi = ["上","下","左","右"]

   puts "ホイ！"
   puts "-----------------"
   puts "あなた:#{acchimuite_hoi[my_hand_2]}, 相手:#{acchimuite_hoi[program_hand_2]}"
   puts "-----------------"
   
   rejanken = my_hand_2 != program_hand_2
   
   if my_hand_2 == program_hand_2
      puts "あなたの勝ちです"
    
  　elsif rejanken
      puts "やり直しです、じゃんけん..."
      @result = "rejanken"
    
   end
   
end

if @result == "lose"
   puts "あっち向いて〜"
   puts "0（上）1（下）2（左）3（右）"
  
   my_hand_2 = gets.to_i
   program_hand_2 = rand(3)
  
   acchimuite_hoi = ["上","下","左","右"]
   
   rejanken = my_hand_2 != program_hand_2
  
   puts "ホイ！"
   puts"-----------------"
   puts "あなた:#{acchimuite_hoi[my_hand_2]}, 相手:#{acchimuite_hoi[program_hand_2]}"
   puts "----------------"
   
   if my_hand_2 == program_hand_2 
      puts "あなたの負けです"
      
    elsif rejanken 
      puts "やり直しです、じゃんけん..."
      @result = "rejanken"
      
   end
   
end

if @result == "rejanken"
   janken_time 
   
end