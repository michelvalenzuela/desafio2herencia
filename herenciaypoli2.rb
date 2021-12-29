#EJERCICIO 1
class Person
    def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
    end
    def birthday
    @age += 1
    end
    
    def talk
        puts "hola soy tu clase padre"
    end
    def introduce
        puts "Hola soy tu clase padre"
    end
end

class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

a1 = Person.new('test','testing','15')
a2 = Student.new('test1','testing1','16')
a3 = Teacher.new('test2','testing2','17')
a4 = Parent.new('test3','testing3','18')

a1.talk
a2.talk
a3.talk
a4.talk


#EJERCICIO 2

module Habilidades
    module Volador
        def volar
        'Estoy volandooooo!'
        end
        def aterrizar
        'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
        'Estoy nadando!'
        end
        def sumergir
        'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
        'Puedo caminar!'
        end
    end
end
module Alimentacion
    module Herbivoro
        def comer
        'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
        'Puedo comer carne!'
        end
    end
end

class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end

end

class Ave < Animal
    include Habilidades
    include Alimentacion
end

class Mamifero < Animal
    include Habilidades
    include Alimentacion
end


class Insecto < Animal
    include Habilidades
    include Alimentacion
end

class Pinguino < Ave
    extend Caminante
    extend Nadador
    extend Carnivoro
end

class Paloma < Ave
    extend Volador
    extend Herbivoro
    
    
end

class Pato < Ave
    extend Volador
    extend Nadador
    extend Herbivoro    
end

class Perro < Mamifero
    extend Caminante
    extend Carnivoro
    extend Herbivoro
    
end

class Gato < Mamifero
    extend Caminante
    extend Carnivoro
end

class Vaca < Mamifero
    extend Caminante
    extend Herbivoro
end

class Mosca < Insecto
    extend Volador
    extend Herbivoro
    
end

class Mariposa < Insecto
    extend Volador
    extend Herbivoro
end

class Abeja < Insecto
    extend Volador
    extend Herbivoro
    
end

test1 = Pinguino.new('pajaro')