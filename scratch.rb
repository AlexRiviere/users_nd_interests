=begin
  # **Problem**
# =>objective: given an array, return a string with all array elements separated by commas

# =>input: arr

# =>output: string

# =>rules:

# =>explicit	-	

# =>implicit/edge cases - empty array?


# **Data Structure**


# **Implementation Notes**


# **Algorithm**
  empty string, add each with comma except last
 
  
def array_to_comma_sep_string(arr)
  result = ""
  length = arr.size
  arr.each_with_index do |interest, idx|
    if idx < length - 1
      result << "#{interest}, "
    else
      result << "#{interest}"
    end
  end
  
  result
end

p array_to_comma_sep_string(["woodworking", "cooking", "reading"]) #== "woodworking, cooking, reading"

=end 




=begin
# **Problem**
# =>objective: 

# =>input: 

# =>output:

# =>rules:

# =>explicit	-	

# =>implicit/edge cases -


# **Data Structure**


# **Implementation Notes**


# **Algorithm**

=end

def count_interests
    
end