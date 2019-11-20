# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'
p 'Problem 1'
puts

def hello_world lang
    if lang.downcase == 'en' || lang == ''
        'Hello, World'
    elsif lang.downcase == 'es'
        'Hola Mundo'
    elsif lang.downcase == 'de'
        'Hallo Welt'
    else
        'Not a valid entry.'
    end
end
p hello_world ''
p hello_world 'en'
p hello_world 'es'
p hello_world 'de'
p hello_world 'e'



# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'
puts
p 'Problem 2a'
puts

def assign_grade num
    if num <= 100 && num >= 90
        'A'
    elsif num < 90 && num >= 80
        'B'
    elsif num < 80 && num >= 70
        'C'
    elsif num < 70 && num >= 65
        'D'
    elsif num < 65 && num >= 0
        'F'
    else
        'Not a valid entry.'
    end
end
p assign_grade 96
p assign_grade 75
p assign_grade -1



# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.
puts
p 'Problem 2b'
puts

def assign_grade num
    if num <= 100 && num >= 90
        'A'
    elsif num < 90 && num >= 80
        'B'
    elsif num < 80 && num >= 70
        'C'
    elsif num < 70 && num >= 65
        'D'
    elsif num < 65 && num >= 0
        'F'
    else
        'Not a valid entry.'
    end
end
p assign_grade 96
p assign_grade 75
p assign_grade -1


# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'
puts
p 'Problem 3a'
puts

def pluralizer(num, noun)
    if num > 1
        "#{num} #{noun}s"
    elsif num == 1
        "#{num} #{noun}"
    else
        'Not a valid entry.'
    end
end
p pluralizer(4, 'calling bird')
p pluralizer(3, 'French hen')
p pluralizer(2, 'turtle dove')



# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
puts
p 'Problem 3b'
puts

def pluralizer(num, noun)
    if num > 1
        if noun.slice(noun.length-2, 2) == 'ss'
            "#{num} #{noun}es"
        elsif noun == 'goose'
            "#{num} geese"
        elsif noun == 'child'
            "#{num} #{noun}ren"
        elsif noun[-1] != 's'
            "#{num} #{noun}s?"
        else
            "No idea."
        end
    elsif num == 1
        "#{num} #{noun}"
    else
        'Not a valid entry.'
    end
end
p pluralizer(5, 'class')
p pluralizer(8, 'goose')
p pluralizer(12, 'child')
p pluralizer(3, 'platypus')
p pluralizer(2, 'thing')