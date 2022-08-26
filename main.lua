require("player1")
require("ball")
require("player2")
require("background")

score1 = 0
score2 = 0

function love.load()
  -- AI:load()
   Player1:load()
   Ball:load()
   Player2:load()
   Background:load()
   font = love.graphics.newFont(30)
end

function love.update(dt)
  -- AI:update(dt)
   Player1:update(dt)
   Ball:update(dt)
   Player2:update(dt)
   Background:update(dt)
end   

function love.draw()
--AI:draw()
   Background:draw()
   Player1:draw()
   Ball:draw()
   Player2:draw()
   love.graphics.setFont(font)
   love.graphics.print("P1's score: " .. score1, 50, 50)
   love.graphics.print("P2's score: " .. score2, 1000, 50) 
    if (score1 == 5) then 
        love.graphics.print("Player 1 WINS!", 500, 250 ) 
        love.timer.sleep(5)
    end
    if score2 == 5      then
        love.graphics.print("Player 2 WINS!", 500, 450 )  
    end
        if score1 == 5 then
            love.timer.sleep(5)
        end
end

function checkCollision(a, b)
   if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
      return true
   else
      return false
   end
end