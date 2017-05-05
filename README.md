# Dice Exercise in Ruby

This was a coding exercise given to me by a prospective employer. It specified that it should be done in an **object oriented language**. That rules out JavaScript. While you can write object-oriented JS, it's hard to imagine anyone arguing that it's an object oriented language a la Java, C++, and C#, which were specifically mentioned in the exercise prompt as language options. I know Ruby slightly better than I know those three, so I chose Ruby.

# The prompt

1. Build an application that rolls a six-sided die to obtain a random value between 1 and 6.
2. Introduce the concept of a cup so that multiple dice can be rolled at one time.
3. Create a loaded die that, given a predetermined number, will land on that number 50% of the time (we can't be too obvious with our loaded die).

The output should look similar to this:

`Rolling 1 die: 4
Rolling 2 dice in a cup: 8
Rolling 6 dice in a cup: 23
Rolling 12 dice in a cup: 41
Rolling 120 dice in a cup: 415
Rolling a loaded die set to '1': 1
Rolling a loaded die set to '1': 3`
