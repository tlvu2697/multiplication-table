require_relative 'environment.rb'

builder = Builder::Simple.call [*2..3], [*1..10]
multiplication_table = builder.object

template = Template::Simple.call(multiplication_table)
puts template.object
