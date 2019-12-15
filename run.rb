require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"

require 'pry'

new_yorker = Magazine.new("New Yorker", 3.0)
vogue = Magazine.new("Vogue", 5.0)
sports = Magazine.new("Sports Illustrated", 2.5)
yoga = Magazine.new("Yoga", 7.0)

alona = Person.new("Alona")
meredith = Person.new("Meredith")
tony = Person.new("Tony")

alona.subscribe_to(yoga)

new_yorker.add_subscriber(meredith)
new_yorker.add_subscriber(tony)
new_yorker.add_subscriber(alona)

vogue.add_subscriber(tony)

yoga.add_subscriber(meredith)


binding.pry

