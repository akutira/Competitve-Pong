# Competitve-Pong
#### Video Demo:  <https://youtu.be/hZ7geRXsnAg>
#### Description:
Competitive Pong is a game where 2 players play the classic game pong against each other for points. When the ball reaches the other side, points are scored and the first to 5 points wins! The game also has an AI which players can play against. Once the game reaches 5 points, it announces the winner and closes the program.

First I started with projecting a player. After taking notes and watching guides on how to create player models that move, this is what I came up with in the end. The padel moves simply up and down. Its speed, size dimensions, and position can all be manually altered but these were the numbers that I felt most comfortable with after a few tests playing the game. In addition, there is also a class that confines the boundaries of the paddle to the screen so that the player can't just press up or down and leave the screen.

Next is ball.lua which is essential in pong. Without the ball what would the players do. Just like the player, the ball's dimensions can all be altered, (speed was a big factor in order to make the pacing of the game more fun). However, the ball has a lot more classes than the player. The collision box classes are essential in order for the ball to get reflected back by the padel and in order to count points when the ball touches the sides of the stage. In order to do this I played around with the boundary settings and  with the dimensions of the player sprite. I even did research and implemented a way for the ball to bounce back in different directions based on where the ball hits the paddle. Similar to the Player, the ball is restricted by the screen vertically as it bounces if the ball touches the top or bottom border but goes through the right and left border and scores point accordingly.

Creating player 2 was just a matter of copying player 1's code and altering the buttons to press in order to move and reversing the hitbox detection to the opposite side.

There is an additional AI function which I tried implementing a menu system in order to switch between Player 2 and AI within the game but I still need practice on that. The AI function works by following where the ball is with a bit of delay so that it is possible to beat the AI.
