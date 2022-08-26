Background = {}

function Background:load()
    self.universe = love.graphics.newImage("Graphics/universe.png")
 
 end
 
 
 function Background:update(dt)
    
 end
 
 
 function Background:draw()
    love.graphics.draw(self.universe, 0, 0)
 end