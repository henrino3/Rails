
class Election

attr_reader :leading, :losing

def initialize
@candidates = {}
end

def vote_for (name)

@candidates[name] = 0 if !@candidates[name]
@candidates[name] += 1

puts "u've votted suscessfully"

@leading = name if @leading.nil? || @candidates[name] > @candidates[@leading]
@losing  = name if @losing.nil?  || @candidates[name] < @candidates[@losing]
end

def count
puts @candidates.size
end

def candidates
@candidates.to_s
end

def votes
@candidates.each do |k, v|
puts "#{k.capitalize} has #{v} vottes"
end
end

def method_missing(*args)
puts @candidates[args[0].to_sym] || 0
end

end 

elect = Election.new
elect.vote_for(:henry)
elect.vote_for(:maxwell)
elect.vote_for(:mary)
elect.vote_for(:nana)
elect.vote_for(:kofi)

elect.count
puts "Leader is #{elect.leading}"
puts "Loser is #{elect.losing}"
elect.candidates
elect.votes
elect.mary