# $count=0

class Calc
    attr_accessor :real, :imag

    @@countp = 0
    @@countm = 0

    def initialize(real, imag)


        @real, @imag = real, imag
    end
    def +(com)
        @@countp+=1

        Calc.new(@real + com.real,
                     @imag + com.imag
                            )
        # if (com.class=)
    end
  
    def *(com)
        @@countm+=1

        Calc.new(@real*com.real -  @imag*com.imag,
        @real*com.imag + @imag*com.real
               )
    end
    def add(arr=Array.new)
        @temp=arr[0]
        for num in arr[1..arr.length-1]
            @temp+=num
            
        end
        @temp
    end
    def multi(arr=Array.new)
        @temp1=arr[0]
        for num in arr[1..arr.length-1]
            @temp1*=num
        end
        @temp1
    end
    def self.get_stats
        "#{@@countm}   #{@@countp}"
    end
  end

num1 = Calc.new(3, 1)
num2 = Calc.new(2, 2)
num3 = Calc.new(3,3)
puts (num1+num2+num3).inspect
puts (num1*num2*num3).inspect
puts num1.add([num1,num2]).inspect
puts num1.multi([num1,num2]).inspect
puts Calc.get_stats
# puts num1.add([(1,1),(2,2),(3,3)]).inspect
# puts Calc.countp

  