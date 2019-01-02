CHANGE THE FOLLOWING:

attr_accessor :username
to
attr_accessor :user

LINES:
5 (done)
72 (done)
90 (done)
92 (done)
153 (done)
203 (done)
208 (done)
248 (done)
254 (done)
313 to 319 (done)
341 (done)

===========================

find "username" and switch to "user_name" (done)

===========================

HERO class methods are now ROCKETSHIP class methods.
(done)

===========================

MISSIONS_FLIGHT class (the one you were testing/working on) is now BATTLE class. (done)

BATTLE (Join Class) will be added to Schema (done)

&

Schema will be updated to the CORRECT setup (because I had it wrong before) (done)

===========================

Once Schema is updated, I'll have to redo:

- the New Mission part of my CLI App to access the data properly.

- all the Classes ActiveRecord associations (has-many, belongs-to, etc) in their individual Class files. (WORKING ON IT! IT'S BREAKING.. NEED TO FIGURE THAT OUT TOMORROW!

============================

Make a Music Module to include all the music methods and make them neater and song specific.

============================

Adjust LOADING times and Uncomment when ready to present your CLI App!


============================

prompt = TTY::Prompt.new
selected_choices = prompt.collect do
  key(:name).select('Name?', User.pluck("user_name"))

  key(:)
end

  array_of_all_names =>
  User.pluck("user_name") OR Item.pluck("item_name")

  key(:age).ask('Age?', convert: :int)
