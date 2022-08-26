

Player2 = {} -- Table for the player

function Player2:load()
    self.width = 20
   self.height = 100
   self.x = love.graphics.getWidth() - self.width - 50 -- Variable that stores the player paddles X-position. Set to 50 pixels (from the left side of the window)
   self.y = love.graphics.getHeight() / 2 -- Variable that stores the player paddles Y-position. Set to half of the windows width (1280 / 2)
   self.width = 20 --Variable that stores the player paddles width. Set to 20 pixels wide.
   self.height = 100 --Variable that stores the player paddles height. Set to 100 pixels tall.
   self.speed = 500 -- Variable that stores the player paddles speed. Set to 500 pixels per second (since we multiply by DT in the update function.)
end


function Player2:update(dt)
   self:move(dt) -- Calls the "move"-function
   self:checkBoundaries() -- Calls the "checkBoundaries"-function
end


function Player2:move(dt)
   if love.keyboard.isDown("p") then -- If the "p"-key is pressed then
      self.y = self.y - self.speed * dt -- decrease the Y position by the speed * Delta time
   elseif love.keyboard.isDown(";") then -- Else if the ";"-key is pressed then
      self.y = self.y + self.speed * dt -- increase the Y position by the speed * Delta time
   end
end

function Player2:checkBoundaries()
   if self.y < 0 then -- If the Y position is smaller than 0 ()
      self.y = 0 -- Set the Y position to be 0
   elseif self.y + self.height > love.graphics.getHeight() then -- Else if the bottom side of the player paddle is greater than the window height then
      self.y = love.graphics.getHeight() - self.height -- Set the Y position to be equal to the window height - the paddles height
   end
end


function Player2:draw()
   love.graphics.rectangle("fill", self.x, self.y, self.width, self.height) -- Draws a rectangle at the X and Y position of the player.
end