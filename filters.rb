# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

require './candidates'

# Returns the candidate with :id. If none, returns nil
  def find(id)
      result = @candidates.find {|candidate| candidate[:id] == id}
  end
  
  # Returns true if the candidate has 2 years of experience or more. Returns false otherwise
  def experienced?(candidate)
    if candidate[:years_of_experience] >= 2
      return true
    end
    false
  end
  
  #Returns a subset of the candidates that meet the following criteria:
    #Are experienced
    #Have 100 or more Github points
    #Know at least Ruby or Python
    #Applied in the last 15 days
    #Are over the age of 17 (18+)
  def qualified_candidates(candidates)
    candidates.select do |candidate|
      experienced?(candidate) &&
      candidate[:github_points] >= 100 &&
      (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
      (Date.today - candidate[:date_applied]).to_i <= 15 &&
      candidate[:age] > 17
    end
  end
  
  # More methods will go below

puts find(5)
puts experienced?(@candidates[0])
puts experienced?(@candidates[1])
p qualified_candidates(@candidates)