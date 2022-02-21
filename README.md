# connect4_bc

From the command line:
- Enter `$ruby runner.rb` to start the game

Or visit our replit [here](https://replit.com/@zorromcleod/connect4game#lib/board.rb):
- Once the page loads, click the green 'Run' button to start the game

## possible refactors
* make tests pass - board has been changed to a 2d array, currently working on refactoring:
[x] main menu works as suspected
[x] game starts and prints the board
[x] computer.add_piece works
[ ] player.add_piece(gets.chomp) works - problem with invalid piece placement, computer still places piece if you choose an invalid column
[ ] win_checker has been updated with new board format - only horizontal and vertical wins work, haven't gotten to diagonal


* try deleting all attr_accessors

* shorten winchecker

* consider making a turn class
