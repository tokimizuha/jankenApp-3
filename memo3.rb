class Janken
  def start
    type
    play
    direction
    hoi
  end
  
    puts "じゃんけん..."
  
  def type
    @options = {0 => "グー",1 => "チョキ",2 => "パー"}
    @options.each { |key, name| puts "#{key}(#{name})" }
  end
  
  def play
    @my_hand = @options[gets.to_i]
    @program_hand = @options[rand(2)]
    puts "ホイ！"
    puts "------------"
    puts "あなた:#{@my_hand}"
    puts "相手:#{@program_hand}"
    result
  end
  
  def result
    if @my_hand == @program_hand
      puts "あいこで..."
      play
      elsif (@my_hand == "グー" && @program_hand == "チョキ")||(@my_hand == "チョキ" && @program_hand == "パー")||(@my_hand == "パー" && @program_hand == "グー")
      puts "---あなたの勝ちです---"
      elsif (@my_hand == "グー" && @program_hand == "パー")||(@my_hand == "チョキ" && @program_hand == "グー")||(@my_hand == "パー" && @program_hand == "チョキ")
      puts "---あなたの負けです---"
    end
  end
  
  def direction
    puts "あっち向いて〜"
    @directions = {0 => "上",1 => "下",2 => "左",3 => "右"}
    @directions.each { |key, name| puts "#{key}(#{name})" }
  end
  
  def hoi
    @my_hand_2 = @directions[gets.to_i]
    @program_hand_2 = @directions[rand(3)]
    puts "ホイ！"
    puts "------------"
    puts "あなた:#{@my_hand_2}"
    puts "相手:#{@program_hand_2}"
    game
  end
  
  def game
    if @my_hand_2 == @program_hand_2
      puts "終了"
      exit
      else 
      puts "もう一度じゃんけんから始めます"
      start
    end
  end
  
end

j = Janken.new
j.start   