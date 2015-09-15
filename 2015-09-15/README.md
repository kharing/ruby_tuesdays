## Exercise #1: Bob - the disinterested teenager

Bob is a disinterested teenager. In conversation, his responses are very
limited.

Bob answers 'Sure.' if you ask him a question.

He answers 'Whoa, chill out!' if you yell at him.

He says 'Fine. Be that way!' if you address him without actually saying
anything.

He answers 'Whatever.' to anything else.

Write a script that acts as you were chatting with Bob in an instant messaging
chat. The program/chat ends after you type “Bye” and Bob replies with “Bye”.

```ruby
$ ruby chat_with_bob.rb

You: Hi Bob! Can you please make coffee?

Bob: Sure.

You: MAKE COFFEE!

Bob: Whoa, chill out!

You:

Bob: Fine. Be that way!

You: I like you, Bob.

Bob: Whatever.

You: I have to go. Bye

Bob: Bye

```

### Hints:

- Your program must run in a loop
- print “You: ” will print the text (also called prompt) without a line break at
  the end
- You need a method that checks if a String ends with a “?” or a “Bye” (Use
  Google to find it or go to the Ruby docs, e.g., http://devdocs.io/ruby/)
- You need to test if all the characters of the entered text are upcase
- You need a method that checks if a String is the empty string.
- You can exit your program with the method exit

## Exercise #2: FizzBuzz

- Write a program that prints the numbers from 1 to 100.
- But for multiples of 3 print “Fizz” instead of the number.
- And for the multiples of 5 print “Buzz” instead of the number.
- For numbers which are multiples of both 3 and 5 print “FizzBuzz”.

### Hints:

- You need to iterate over the numbers from 1 to 100 with the Range#each method.
  (http://devdocs.io/ruby/range#method-i-each)
- You need the modulo division operator (%) to check if a number is a multiple
  of another number. (The remainder of the division must be 0 for the number to
  be a multiple.)
