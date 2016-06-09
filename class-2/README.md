#Week 1 - Class 2
##Lab Assignment
* Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns
* Use **reduce** to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”
* Declare and implement a dictionary that can contain as values Strings, Ints, etc
* Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use **filter**
* Write examples for **union, intersect, subtract, exclusive** Or set operations
* Write a function that counts repeating words and prints out the count of each
* Add two numbers without using “+”

###Reading Assignment
* Swift Programming Guide
  * Arrays
  * Dictionaries
  * Sets

##Other Resources
* [Reading Assignments](../../Resources/ra-grading-standard/)
* [Grading Rubrics](../../Resources/)
* [Lecture Resources](lecture/)
* [Lecture Slides](https://www.icloud.com/keynote/000Q51_0ArHLkwqSH0T9uNmQA#Week1_Day2)

##Topics
- Arrays
- Dictionaries
- Sets

##Arrays

An array is an ordered collection of values of the same type. the elements in the array are zero-indexed

- arrays are useful when you want to store your items in a particular ordered
- just like the previous types you've read about, like String or Int, when you create an array, you must declare it as either a constant or a variable

let stringsArray = [String]()
let stringsArray = ["Mars", "Jupiter"]
var stringsArray = ["Mars", "Jupiter"]
var intArray = [Int](count: 5, repeatedValue: 0)

- use the isEmpty property to check if there's at least one object
- you can get the number of objects using the count property
- arrays provide the first property to fetch the first object of an array
- arrays provide the last property to fetch the last object of an array

##Accessing Values
- another way to get values from an array is by calling minElement(). this method returns the element with the lowest value in the array - not the lowest index
- arrays have a maxElement() method
- you can access elements in an array is by using the subscript syntax
- you can use the subscript syntax with ranges to fetch more than a single value from an array
- you can check if there's at least one occurrence of a specific element in an array by using contains(_:)
- you could even test for the existence of an element in a specific range

you can make all kinds of changes to mutable arrays: adding and removing elements, updating existing values, and moving elements around into a different order

##Iterating
- you can do this using a for-in loop
- enumerate method

##Sequence operations
- filter
- reduce
- map

Arrays are stored as a continuous block in memory.

- The cost of fetching an element is O(1). Since all values are sequential, it's easy to do random access and fetch a value at a particular index
- the complexity of adding an element depends on the position in which you add the new element. If you add to the beginning or end it will be O(1). In the middle with be O(N)
- the complexity of deleting is similar to inserting elements
- if the element you're searching for is the first element in the array, then the search will end after a single operation. if the element doesn't exist, you need to perform N operations until you realize that the element is not found. On average, searching for an element will take N/2 operations, therefore searching has a complexity of O(N)

if you create an array
var  arr = [0, 1, 2,]
var arr1 = arr

arr1 is a copy of arr, it passed by value

##Dictionaries
a dictionary is an unordered collection of pairs, where each pair is comprised of a key and a value

- dictionaries are useful when you want to look up values by a means of an identifier
- key's cannot be repeated
- keys can be pointing to a different value
- keys have to be of the same types
- all values have to be of the same types

let dictionary = [String : String]()
let dictionary = ["name" : "Mars"]
let dictionary = [:]

- dictionaries have the same isEmpty and count properties as arrays
- dictionaries support subscripting to access values. unlike arrays, you don't access by index, but rather by its key

you can make all kinds of changes to mutable dictionaries
- updateValue(_:, forKey:)
- removeValue(_:, forKey:)

##Dictionary Iterations
- for in loops also works when you want to iterate over a dictionary. but since the items in a dictionary are pairs, you need to use a tuple
- it's also possible to iterate over just the keys

##Sequence operations
- you can use reduce(_:combine:) to replace the previous code snippet with a single line of code
- filter

Hashing is the process of transforming a value - string, int, double, bool, etc - to a numeric value, known as the hash value. in swift, all basic types are hashable and have a hashvalue property

- a numeric representation of a type

##Big O Analysis
- the cost of fetching is constant time or O(1)
- the cost of inserting is a constant time or O(1)
- the cost of deleting is constant time or O(1)
- the cost of searching is constant time or O(1)

Dictionaries are very efficient as a result of this

##Sets
a set is an unordered collection of unique values of the same type. it can be extremely useful when you want to ensure that an item doesn't appear more than once in your collection, and the order of your items isn't important

let set: Set = [1, 2, 3, 4]

- like arrays and dictionaries, sets support the count and isEmpty properties
- can use contains(_:) to check for the existence of a specific element
- can also use the first and last properties, which return one of the elements in the set. however, because sets are unordered, you can't know exactly which item you'll get

##Mutability
- insert(_:) adds the element to the set; if the element already exists, the method does nothing
- remove(_:) returns the removed element if it's in the set, or nil otherwise

one of the most powerful features of sets is their support of set operations, which let you combine two sets into one, create a set with only the common values of two sets, and more.

- union(_:) creates a new set with all the values of the two sets
- intersect(_:) creates a new set with only the values common to both sets
- subtract(_:) creates a new set by removing values that appear in the second set
- exclusiveOr(_:) creates a new set with the values that appear in one of the sets, but not both

##Big O Analysis
- Sets have a similar implementation to those of dictionaries
- they also require elements to be hashable
- running time of all operations is identical to those of dictionaries


write a function that counts repeating words and prints out the count of each
add two numbers without using "+"
