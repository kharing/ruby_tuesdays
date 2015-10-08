## Exercise: Do you remember Bob?

This is how our [solution for Bob looked like](https://github.com/babbel/ruby_tuesdays/tree/master/2015-09-15#exercise-1-bob---the-disinterested-teenager):

```ruby
while true
  print "You: "
  entered = gets.strip

  if entered.end_with?("?")
    puts "Bob: Sure."
  elsif entered.empty?
    puts "Bob: Fine. Be that way!"
  elsif entered == entered.upcase puts "Bob: Whoa, chill out!" elsif entered.end_with?("Bye")
    puts "Bob: Bye."
    exit
  else
    puts "Bob: Whatever."
  end
end
```

* refactor the code above using classes,
  * Hint: there may be more teenagers than Bob that have a different name and maybe different behavior
* use methods to add semantics to the inexpressive conditions used in `if-elsif-else`,
* use instance variables and accessors to maintain state

## Bonus exercise: Grade school

This exercise has not been tackled during the course. Nevertheless, if you are curious try it and discuss your solutions in the [mailing list](https://groups.google.com/forum/#!forum/ruby-tuesdays)!

* Add a student's name to the roster for a grade
  * "Add Jim to grade 2.”
* Get a list of all students enrolled in a grade
  * "Which students are in grade 2?"
  * "We've only got Jim just now.”
* Bonus: Get a sorted list of all students in all grades. Grades should sort as 1, 2, 3, etc., and students within a grade should be sorted alphabetically by name.
  * "Who all is enrolled in school right now?"
  * "Grade 1: Anna, Barb, and Charlie. Grade 2: Alex, Peter, and Zoe. Grade 3..."

Note that all our students only have a first name. (It's a small town, what do you want?)

What we as a user of your grade school would at least like to do is:

```ruby
  school = School.new

  # Add students to school with specific grade
  school.enroll("Jim", 2)
  school.enroll("Bob", 2)
  school.enroll("Bart", 3)
  school.enroll("Alice", 3)

  # Get all students of a grade
  school.print_students_in_grade(2)
  # => The students in grade #2 are: Bob, Jim

  # Get students of non-existing grade
  school.print_students_in_grade(42)
  # => Currently, there are no students enrolled in grade #42.

  # Get all students of the school sorted by grade and in alphabetical order.
  school.print_students_by_grade  # => The students in grade #2 are: Bob, Jim
  # => The following students are currently enrolled in your school:
  # => The students in grade #2 are: Bob, Jim
  # => The students in grade #3 are: Alice, Bart
```

