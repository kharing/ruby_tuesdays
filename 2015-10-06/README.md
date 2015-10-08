## Exercise #1

Write a ruby script `person_01.rb` that implements a class `Person` so that it is possible to execute the following
code:

```ruby
class Person

  # write your code here

end

person = Person.new("Angela", "Merkel")
puts person.full_name
```

If you run the script above, the script should print out "Angela Merkel" to your terminal:

```
$ ruby person.rb
$ Angela Merkel
```

## Exercise #2

Extend the class `Person` so that it is possible to execute the following code:

```ruby
person = Person.new("Angela", "Merkel")
person.last_name = "Davis"
puts person.first_name
puts person.last_name
puts person.full_name
```

The script should print out the following lines to your terminal:

```
$ ruby person_02.rb
$ Angela
$ Davis
$ Angela Davis
```

## Exercise #3

Extend the class `Person` so that it is possible to execute the following code:

```ruby
angela = Person.new("Angela", "Merkel", "61", "Hamburg")
angela.greet
```

The script should print out the following when being executed:

```
$ ruby person_03.rb
$ Hello! My name is Angela Merkel, I am 61 years old and I was born in Hamburg.
```

## Exercise #4

Write a ruby script `facebook_user.rb` that implements a class called `FacebookUser` so that it is possible to execute
the following code:

```ruby
class FacebookUser

  # write your code here

end

user = FacebookUser.new("bart@thesimpsons.com", "KhwS2J7")
user.change_password!("KhwS2J7aaa", "NewPassword")
user.change_password!("KhwS2J7", "NewPass")
user.change_password!("KhwS2J7", "SecretPass")
user.change_password!("NewPass", "SecretPass")
```

For security reasons, it should only be possible to change the password of the Facebook user with
`FacebookUser#change_password!(old_password, new_password)` if the old password, given as the first argument to the
method, equals the current password of the user.

The script should print out the following when being executed:

```
$ ruby facebook_user.rb
$ Password could not be changed. The old password was wrong.
$ Password successfully changed.
$ Password could not be changed. The old password was wrong.
$ Password successfully changed.
```

## Exercise #5

Write a ruby script `calculator.rb` that implements a class called `Calculator` so that it is possible to execute the
following code:

```ruby
class Calculator

  # write your code here

end

calc1 = Calculator.new(8,4)
calc1.add
calc1.subtract

calc2 = Calculator.new(9,3)
calc2.multiply
calc2.divide
```

The script should print out the following when being executed:
```
$ ruby calculator.rb
$ 12
$ 4
$ 27
$ 3
```
