#Це симулятор бомжа яким можна керувати 
#Гра завершується якщо персонаж померає тобто health == 0 і ви програєте
#Або персонаж має авторитет серед інших бомжів authority == 100 ви виграєте
class BomgGame
  
  def initialize name
    @name = name
    @sated = 100       #Ситий на всі сто
    @cashBalance = 0  # має 0 грн в кармані
    @authority = 0     #авторитет в компашці бомжів дорівнює 0
    @wantsSleep = false #не хоче спати
    @health = 100       # Рівень здоровя максимум

    puts 'Вітаю! Ви створили персонажа ' + @name + ' тепер ви керуєте бомжем.'
    puts 'Вам потрібно керувати його рішеннями. Це може призвести до покращення його авторитету серед інших. Або до його смерті від погіршення здоровя.'
  end

  def walk
    4.times do
       puts @name + ' порпається в своєму смітнику...'
    end   
    puts @name + ' знайшов в смітнику папір та пляшки які здав на прийомці'
    @cashBalance += 50
    puts 'Тепер на балансі бомжа ' + @cashBalance.to_s + 'грн'
    @authority += 10
    @sated -= 40
  end

  def shopping
    puts 'Ви можете витрати ти гроші на їжу та книжку для навчання натисніть 1'
    puts 'Або скинутися з друзяками на бухлішко введіть 2'
    puts 'Заощадити кошти введіть 3'
    @num = gets.chomp 
    if @num.to_i == 1
      puts @name + ' наївся та став розумнішим'
      @sated += 10  
      @authority += 25
      @cashBalance -=50
    end
    if @num.to_i == 2
      puts @name + ' напився з друзяками'
      @sated -= 30
      @authority += 35
      @health -= 46
      @cashBalance -=50
    end
    live?
    winer?
  end  

  def errorShopping 
    if @num.to_i == 3 
      puts @name + ' заощадив кошти'
      @sated -= 20
      @authority += 5
      @cashBalance -=50
    end
    if (@num.to_i != 1 and @num.to_i != 2 and @num.to_i != 3)
      puts 'Дуже прикро ви ввели не правельні данні '
      @sated -= 25
      @authority += 0
    end  
  end

  def sleep
    puts 'Настав час спати але ще можна побухати з корєфанами'
    puts 'для того щоб спати натисніть 1'
    puts 'для того щоб побухати натисніть 2'
    @num = gets.chomp 
    if @num.to_i == 1
      puts @name + ' виспався'
      @sated -= 25  
      @authority += 0
      @wantsSleep = false
    end
    if @num.to_i == 2
      puts @name + ' далі запив з друзяками'
      @sated -= 30
      @authority += 10
      @health -= 25
      @wantsSleep = true
    end
    live?
    winer?
  end

  private

  def live?
    if @health.to_i <= 0
      puts 'Дуже прикро, але ' + @name + ' помер. Так-як ви зробили не обдумані рішення в його житті!'
      exit
    end 
  end

  def winer?
    if @authority.to_i >= 100
      puts @name + ' досяг максимального авторитету. Вітаю ви перемогли!!!'
      exit
    end
    
  end
  def satedBomg?
    if @sated.to_i <= 0
      @health = 0
      exit
    end 
    
  end

end
puts 'Введіть імя вашого персонажа'
name = gets.chomp
player = BomgGame.new name.to_s
player.walk
player.shopping
player.errorShopping
player.sleep
player.walk
player.shopping
player.errorShopping
player.sleep
player.shopping
player.walk
player.shopping
player.shopping
player.sleep
player.walk
player.shopping
player.errorShopping
player.sleep
player.walk
player.shopping
player.errorShopping
player.sleep
player.shopping
player.walk
player.shopping
player.shopping
player.sleep
player.walk
player.shopping
player.errorShopping
player.sleep
player.walk
player.shopping



