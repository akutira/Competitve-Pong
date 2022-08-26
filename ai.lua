

AI = {}


function AI:load()
   self.width = 20
   self.height = 100
   self.x = love.graphics.getWidth() - self.width - 50
   self.y = love.graphics.getHeight() / 2
   self.yVel = 0
   self.speed = 500

   self.timer = 0
   self.rate = 0.5
end


function AI:update(dt)
   self:move(dt)
   self.timer = self.timer + dt
   self:checkBoundaries() -- Calls the "checkBoundaries"-function
   if self.timer > self.rate then
      self.timer = 0
      self:acquireTarget()
   end
end


function AI:move(dt)
   self.y = self.y + self.yVel * dt
end


function AI:acquireTarget()
   if Ball.y + Ball.height < self.y then
      self.yVel = -self.speed
   elseif Ball.y > self.y + self.height then
      self.yVel = self.speed
   else
      self.yVel = 0
   end
end

function AI:checkBoundaries()
    if self.y < 0 then -- If the Y position is smaller than 0 ()
       self.y = 0 -- Set the Y position to be 0
    elseif self.y + self.height > love.graphics.getHeight() then -- Else if the bottom side of the player paddle is greater than the window height then
       self.y = love.graphics.getHeight() - self.height -- Set the Y position to be equal to the window height - the paddles height
    end
 end


function AI:draw()
   love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end