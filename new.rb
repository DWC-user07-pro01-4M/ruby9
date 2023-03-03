# 設計図
# インスタンスメソッド
class Car
    # 設計図の内容
    def run(distance)
        puts "車で#{distance}キロ走ります。"
    end
end
# インスタンスの作成
car = Car.new
# インスタンスの呼び出し
car.run(5)


# 追加
class Car
    def run(distance)
        puts "車で#{distance}キロ走ります。"
    end

    def turn(direction)
        puts "#{direction}に曲がります。"
    end
end
car = Car.new
car.run(5)

# 追加分のインスタンス作成
car = Car.new
car.turn("右")


# クラスメソッド
class Car
    # selfはクラス自身を指す
    def self.run(distance)
        puts "車で#{distance}キロ走ります。"
    end
end
Car.run(10)


# 変更
class Car
    def move(distance,direction)
        self.run(distance)
        self.turn(direction)
    end

    def run(distance)
        puts "車で#{distance}キロ走ります。"
    end

    def turn(direction)
        puts "#{direction}に曲がります。"
    end
end

car = Car.new
car.move(25,"左")

Car.run(10)


# 演習問題
class Car
    def self.turn(direction)
        puts "車で#{direction}に曲がります。"
    end
end
Car.turn("右")