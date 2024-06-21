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
  
  def qualified_candidates(candidates)
    # Your code Here
  end
  
  # More methods will go below

puts find(5)
puts experienced?(@candidates[0])
puts experienced?(@candidates[1])

#puts @candidates[2]
#puts @candidates[2][:years_of_experience]