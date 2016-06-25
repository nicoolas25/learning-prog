#
# Here is a few operations that can happen on the datatype we've seen.
#

# String

name = "Alice"

"Hello " + name   # Concatenation
"Hello #{name}"   # Extrapolation
"Alice".length    # Length
" Alice ".strip   # Remove extra characters from front and back
"34".to_i         # Convert to Integer
"3.14".to_f       # Convert to Float

# Boolean

1 >= 2            # Comparison
3 == 3            # Equality
3 != 4            # Inequality
true && true      # And
true || false     # Or
!true             # Not

# Numbers

3 + 5             # Addition
4 - 4             # Substraction
8 / 2             # Disivion (integer)
4 * 2             # Multiplication
4 % 3             # Rest of the division
42.to_s           # Convert to string

# Try this with float...

#
# Here are two advanced types.
#

# Array

numbers = [1, 2, 3]

numbers.first        # Get the first element
numbers.last         # Access the last element
numbers.index(1)     # Search
numbers + [4, 5]     # Concatenation
numbers << 4         # Appending
numbers.slice(0, 2)  # Getting a part of an Array
numbers.insert(2, 4) # Inserting at a specific index
numbers[0]           # Access via the index
numbers[0] = 0       # Replace a value in the Array

# Hash

genders = { "Alice" => "female", "Bob" => "male" }

genders.fetch("Alice")              # Access
genders.fetch("Kevin", "unknown")   # Default value
genders.has_key?("Kevin")           # Checking presence
genders.keys                        # Getting the kays (as an Array)
genders.values                      # Getting the values (as an Array)
genders["Alice"]                    # Shortcut for accessing
genders["Alice"] = "male"           # Setting a value
