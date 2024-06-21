# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

require './candidates'

  def find(id)
      # Returns the candidate with :id. If none, returns nil
      result = @candidates.find {|candidate| candidate[:id] == id}
  end
  
  def experienced?(candidate)
    # Your code Here
  end
  
  def qualified_candidates(candidates)
    # Your code Here
  end
  
  # More methods will go below

puts find(5)