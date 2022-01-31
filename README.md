# PLANNING

## Description

Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details

- Both players start with 3 lives
- They loose one life every time they get a question wrong
- At the end of every turn, the game should output new scores for both players
- Game ends when one of the players looses all their lives
- Game should announce who won and their score

## Tasks

### 1 - Extract Nouns for Classes

- Game
- Player
- Turns
- Question

### 2 - Write their Roles

**_Game_** - The game will prompt players with questions and let them know who won

- Should check players lives after each question
- Should give current score (lives available) after each question
- Should be the main game loop that the user interacts with
- Should update current_player after each loop

**_Turns_** - Will track which players turn it is (part of Game)

- Manage who `current_player` is
- current_player should be updated after each round

**_Player_** - The player will be responsible for answering questions as they are prompted to do so

- Answer questions when prompted
- Should keep track of lives available (state)
- Lives should be updated if player answers incorrectly

**_Question_** - The questions will be generated to add two numbers between 1 and 20

- Generate new questions
- Determine if question is answered correctly or not
- If answered incorrectly, update current players score (state), decreasing lives by 1

### 3 - Peer and Mentor Review

When game terminates, next player is most likely the winner

use a counter, odd questions is player 1, even is player 2

Loop

- ask question
- verify answer (.to_i) -> convert answer to integer
- check score (lives)
- change current_player
-
