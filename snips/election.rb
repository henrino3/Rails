class Election

  def initialize()
    @candidates = {'Henry':3,'Bubu':0}
    @registered = ""
    @leader_name = ""
    @leader_vote = 0
    @loser_name = ""
    @loser_vote = 0 
    puts "Starting Election"
  end


  def votefor(candidate)
    puts "Voting for #{candidate}"
    candidate = candidate.to_sym

    @candidates.each {|cand,votes|

      puts "#{cand} has #{votes} votes"
      if candidate == cand
        puts "Registered"
        @registered = 'Yes'
      end
    }

    if @registered == 'Yes'
      count(candidate)
    else
      puts "Registering #{candidate} as a candidate"
      @candidates[candidate] = 0
      count(candidate)
    end
  end

  def count(candidate)

    puts "Counting vote for #{candidate}"
    puts @candidates[candidate]
    @candidates[candidate] = @candidates[candidate] + 1
    puts "Your Vote has been counted"

  end


  def checkvotes()
    puts "\t CANDIDATE\tVOTE"
    @candidates.each {|cand,votes|
      puts "\t #{cand}\t#{votes}"
    }


  end

  def leading()
    max = 0
    leader = ""
    @candidates.each {|cand,votes|
      if votes > max
        max = votes
        leader = cand
      end

    }

    puts "Election Leader is #{leader} with #{max}"
  end

  def losing()
    min = 0
    loser = ""
    @candidates.each {|cand,votes|                                                                        │
    if votes < min
      min = votes
      loser = cand
    end 
    }

    puts "Election Loser is #{loser} with #{min}"
  end


  now = Election.new

  #  now.votefor("Henry")

end
