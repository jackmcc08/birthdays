<<~REQUIREMENTS

I want a program that I can load in IRB that allows me to
- Store all of my friends’ birthdays so I can keep track of them
- See them all at once with their names and birthdays each on a line in a tidy format
- Check whose birthday it is today - the program can check through the birthdays I have stored and check each one to see if it’s someone’s birthday, and tells me something like "It's Mary Poppin's birthday today! They are 124 years old!" - otherwise it won't say anything.

More requirements:
- Test-drive extracting a birthday class
- Isolate your birthday list class using a mock for Birthday

REQUIREMENTS

<<~USER_STORIES

as a user
I want to be able to store my friends birthdays

user
birthday list.store - Input birthday
birthday list.store - "birthday stored"

>birthday_list.store("Jack McCarthy", "14th June 1990")
>> "Birthday stored!"

as a user
I want to be able to display all of the stored birthdays
each birthday should be displayed with the name and birthday on a single line

as a user
I want to check if it is anyone's birthday today
if it is someones birthday then I want to display it
"It's Mary Poppin's birthday today! They are 124 years old!"
if it isn't then display nothing



USER_STORIES
