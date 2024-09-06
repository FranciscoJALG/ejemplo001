class StringManipulator
    def reverseString(str)
        str.reverse
    end


    def capitalizeString(str)
        str.split.map(&:capitalize).join(' ')
    end

    def countVowels(str)
        str.downcase.count('aeiou')
    end
end
    manipulator = StringManipulator.new

    puts manipulator.reverseString("Hola Mundo")
    puts manipulator.capitalizeString("hola mundo")
    puts manipulator.countVowels("Hola Mundo")
    put "Hola"