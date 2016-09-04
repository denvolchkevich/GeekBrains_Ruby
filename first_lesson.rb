# First lesson homework



# Для класса Fixnum:
  # Метод, увеличивающий число на единицу

    1.next # => 2

  # Метод проверяющий является ли число нулём

    1.zero? # => false

  # Метод возвращающий модуль числа

    764.abs # => 764



# Для класса Float:
  # Метод, округляющий вещественное число вниз до целой части

    11.4.floor # => 11

  # Метод, возвращающий результат деления 2-х чисел в виде массива с целой частью и остатком от деления

    13.21.divmod 3 # => [4, 1.2100000000000009]



# Для класса String:
  # Метод, приводящий все символы в строке к нижнему регистру

    "Hello, Ruby".downcase # => "hello, ruby"

  # Метод, возвращающий следующий символ за текущим (согласно кодам ASCII)

    "a".next # => "b"

  # Метод изменяющий текущий объект строки, путём удаления предшествующих и завершающих пробельных символов

    "   Hello   ".strip # => "Hello"



# Для класса Array:
  # Метод, удаляющий все встречающиеся элементы в массиве равные заданному

    array_1 = [1, 2, 3, 4, 5]
    array_1.delete(1) # => [2, 3, 4, 5]

  # Метод, возвращающий текущий массив с элементами в случайном порядке

    array_1.shuffle # => [1, 5, 4, 2, 3]

  # Метод, превращающий массив в строку путём объединения его элементов

    array_1.join # => "12345"



#Для класса Hash:
  #Метод, проверяющий наличие заданного ключа в хэше

    hash_1 = {"Zero" => 0, "One" => 1, "Two" => 2}
    hash_1.has_key?("Zero") # => true

  # Метод, объединяющий 2 объекта хэшей

    hash_2 = {"Three" => 3, "Four" => 4}
    hash_1.merge(hash_2) # => {"Zero"=>0, "One"=>1, "Two"=>2, "Three"=>3, "Four"=>4}



# Для класса Range:
  # Метод, возвращающий максимальное значение диапазона

    range_1 = (1..100)
    range_1.max # => 100


# Модификация кода

    results = [10, 2, 5, 12, 11, 11, 4]

    index_watcher = 0

    puts "Количество очков по партиям"
    puts "="*27

    for sum in results

      puts "Партия: #{index_watcher.next} / Выпало очков: #{sum}"
      index_watcher += 1

    end


# Типы данных в реальном мире
  # Туристической группы -                                                            Hash
  # Количества денег на счету в банке -                                               BigDecimal
  # Списка книг и их количества -                                                     Hash
  # Признака есть ли у человека суперспособности -                                    Boolean
  # Количества соток для участка -                                                    Float
  # Количества очков жизни игрока -                                                   Fixnum
  # Имени пользователя -                                                              String
  # Содержания поста -                                                                String
  # Возрастной категории -                                                            Range
  # Названия социальной сети, которое будет использоваться в коде по всему проекту -  Symbol


# Расширение класса String

    class String

      def minus_string value
        self.delete value
      end

    end


    a = "Hello, Ruby"
    b = "by"

    puts a.minus_string(b)