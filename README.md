# Rock, Paper, Scissors: Week 3 Challenge at Makers Academy
The task: build a Rock, Paper, Scissors game web application. The game should follow the usual rules for RPS.
Users should have a name and be able to play against a computer.

## Languages and Tools
```
  - Ruby
  - Rspec
  - Cucumber
  - Capybara
  - Sinatra
  - HTML
  - ERB
```

### To Open
Clone this repository.
```
  $ git clone git@github.com:barr-code/rock-paper-scissors.git
```
Change into the directory.
```
  $ cd rock-paper-scissors
```
Install the gems.
```
  $ bundle install
```

### Run My Tests
```
  $ rspec
  $ cucumber
```

### Fire It Up
```
  $ rackup
```
Type the following into your browser address bar:
```
  http://localhost:9292
```
Play Rock, Paper, Scissors!

### What I Learned
I really struggled with this challenge. Not the logic of it, or even putting it on the web. Building the game in Ruby
and getting it working in Sinatra were actually quite straightforward. I had trouble testing. Because I did not fully
understand what I was doing with Cucumber, I was getting "ambiguous matches" for all my tests. As a result, I ended
up abandoning my TDD. Eventually, I did figure out how to use Cucumber properly, and I have since fixed up the Cucumber
tests for this challenge, as well as built the whole thing again from scratch [here](https://github.com/barr-code/RPS_2).
