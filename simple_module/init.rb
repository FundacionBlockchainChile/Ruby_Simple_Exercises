require_relative 'modules/nameable.rb'
require_relative 'classes/person.rb'

person = Person.new
person.first_name = 'Sergio'
person.last_name = 'Castro'
person.last_name = 'Castro'
person.city = 'Santiago'
person.state = 'RM'
person.zip = '1234567'
p person.full_name()
p person.city_state_zip()