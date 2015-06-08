
module Basis
    Ver = "Module::定数"

    def hello 
        puts "Hello World"
    end

    def helloName(name)
        puts "Hello #{name}" 
    end

    module_function :hello, :helloName
end

puts Basis::Ver
Basis.hello
Basis.helloName("Ruby")
