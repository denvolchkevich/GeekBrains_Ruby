# Fourth lesson homework


# Методы Ruby Std-lib API
## Для модуля Base64

#### Метод модуля для кодирования строки в base64:

    require 'base64'
    str = Base64.encode64('This is encoded message')

#### Метод модуля для декодирования строки в base64:

    puts Base64.decode64(str)  # => This is encoded message


## Для модуля Benchmark:
#### Метод модуля, принимающий блок и вычисляющий время его выполнения

    require 'benchmark'

    n = 1_000_000

    Benchmark.bm(10) do |x|
      x.report('Report:') {1.upto(n) do ; a = '1' ; end}
    end

##### =>                   user     system      total        real
#####     Report:      0.090000   0.010000   0.100000 (  0.096221)


## Для модуля Find:
#### Метод модуля для рекурсивного обхода дерева каталогов относительно имени заданного каталога (передаётся в качестве аргумента)

    require 'find'

    Find.find('D:/Programs/Ruby/') {|path| p path if FileTest.directory?(path)}

## Для класса Digest::MD5:
#### Метод класса, вычисляющий md5 хэш от строки

    require 'digest/md5'

    md5 = Digest::MD5.new
    md5.update 'message1'

    md5.hexdigest # => "94af09c09bb9bb7b5c94fec6e6121482"

## Для модуля Timeout:
#### Метод модуля, выкидывающий исключение, если код исполняемый в блоке вычисляется более N секунд

    require 'timeout'

    Timeout.timeout(10) { sleep 3; puts 'ok'}  # => ok


# 2. Моделирование реальности
## Подумайте над любой задачей из реального мира, определите сущность из этой задачи и опишите её с помощью класса.

    class Flat

    attr_accessor :rooms, :address, :floor, :square, :price, :status

    def initialize data = {}
      @rooms = data[:rooms]
      @address = data[:address]
      @floor = data[:floor]
      @square = data[:square]
      @price = data[:price]
      @status = nil
    end

    def status
      p @status
    end

    def fee

    end

    def to_s
      "Flat info: rooms = #{@rooms}, address = #{@address}"
    end

    end

    flat_1 = Flat.new(:rooms => 3, :address => 'USA, NY, 7-th avenue, flat 67')

    puts flat_1


# Дополнительное поведение класса Point

    class Point

      include Comparable

      attr_accessor :x, :y

      def initialize x:, y:
        @x = x
        @y = y
      end

      def <=> point
        if point.class == Point
          p1 = @x**2 + @y**2
          p2 = point.x**2 + point.y**2
          Math.sqrt(p1) <=> Math.sqrt(p2)
        else
          nil
        end
      end

      ## Добавьте метод similar_quarter? для проверки того, лежат ли обе точки в одной четверти координатной плоскости. Метод должен возвращать true или false

      def similar_quarter?(point)
        @x*point.x > 0 && @y*point.y > 0
      end

      ## Метод проверяющий лежит ли точка в начале координат

      def origin?
        @x == 0 && @y == 0
      end

      ## Метод, устанавливающий точку в начало координат

      def set_origin!
        @x = 0
        @y = 0
      end

      ## Метод + для сложения двух объектов класса Point

      def + point
        Point.new(x: @x + point.x, y: @y + point.y)
      end

      def to_s
        "Point: x = #{@x}; y = #{@y}"
      end


    end

    puts Point.new(x: 1, y: 2).similar_quarter?(Point.new(x: 3, y: 4))  # => True
    puts Point.new(x: 1, y: 2).def origin?  # => false
    puts Point.new(x: 1, y: 2) + Point.new(x: 3, y: 4)  # => Point: x = 4; y = 6
    puts Point.new(x: 1, y: 2) < Point.new(x: 3, y: 4)  # => True


# 5. Вычисление площади и периметра
## Напишите класс Rectangle для вычисления периметра и площади прямоугольника.
## Класс Rectangle должен реализовывать 2 метода: Rectangle#area и Rectangle#perimeter — для вычисления площади и периметра соответственно.

    class Rectangle


      def initialize start_point, end_point
        @start_point = start_point
        @end_point   = end_point
      end

      def width
        @width ||= @end_point.x - @start_point.x
      end

      def height
        @height ||= @end_point.y - @start_point.y
      end

      def area
        width * height
      end

      def perimeter
        (width + height) * 2
      end

    end

    ground = Rectangle.new(Point.new(x: 1, y: 1), Point.new(x: 10, y: 10))

    p ground.area  # => 81
    p ground.perimeter    # => 36

