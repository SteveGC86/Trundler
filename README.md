# Trundler
## Two sided market place Rails app

### The Problem
Numerous people are not able to leave the house or people are too busy with their everyday lives to spend hours shopping for the weeks groceries.

### The Solution
Trundler is a platform that allows an individual to advertise their weekly grocery list and pay someone else to purchase and drop off the required groceries. Trundler connects people who need groceries with people who need work. Trundler has a chat feature that allows the shopper to contact the user if a given item is not available and allows the user to choose an alternative. The chat feature also allows the user to contact the shopper and adjust the drop off address and time.

### Design Process
#### Figma

#### DB Design

#### Work Flow Diagrams

### Gems

### Challenges
#### Devise
Friday May the fourth will be a day that I will long remember. Many time whilst learning to code I have hit hurdles but this one made me question what I was even doing here.

It all began with 'Devise'. I was undable to get the users profile imafe to display, regardless of what syntax I tried it did not work. It took numerous hours of trying and ended up with my Users and Users-profile tables no longer recognising each other.

I ended up restarting the project rm -rf Trundler. Unfortunately that meant that my near finished README died with it. Long story short, I learnt that I had not read through the tutorial properly and that I had left a line of code out of my profile model ":Attachment.new(:image)" that stores the image in a way that can be later recognised by the model.
#### Heroku
I had not completed all that much, three static pages and two tables, surely Heroku would be able to handle that first push. HA. To my demise it hasn't worked and I have spent the past three hours attempting to solve it. Devise.secret_key was not set, so I set it. Same error. Precompilling failed, i rails assets:procompile. Same error. I have assumed the fetal position and don't plan on leaving until I'm fed beer and donuts. 3 hours later I'm still awaiting said donuts.
