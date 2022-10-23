# Write your code here.
require "pry"

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    puts "The line is currently: #{katz_deli.map.with_index(1) do |person, num|"#{num}. #{person}"
      end.join(" ")}"
  end
end

def take_a_number(current, joining)
  current << joining
  current.each.with_index(1) { |person, num|
    if person == joining
      puts "Welcome, #{joining}. You are number #{num} in line."
    end
  }
end

def now_serving(current)
  if current.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{current.shift}."
  end
end

katz_deli = []

take_a_number(katz_deli, "Ada")
take_a_number(katz_deli, "Grace")
take_a_number(katz_deli, "Kent")

line(katz_deli)

now_serving(katz_deli)

line(katz_deli)

take_a_number(katz_deli, "Matz")

line(katz_deli)

now_serving(katz_deli)

line(katz_deli)
