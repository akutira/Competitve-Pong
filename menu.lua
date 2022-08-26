local menu = {}
local game = {}
function menu:draw()
    love.graphics.print("Press Enter to continue", 10, 10)
end

function menu:keyreleased(key, code)
    if key == 'return' then
        gamestate.switch(game)

    end
end

function game:enter()
    Entities.clear()
    -- setup entities here
end

function game:update(dt)
    Entities.update(dt)
end

function game:draw()
    Entities.draw()
end

function love.load()
    Gamestate.registerEvents()
    Gamestate.switch(menu)
end
















-- function create_menus()
--     local startbutton = loveframes.Create("button")
--     startbutton:SetSize( 150, 30)
--     startbutton:SetPos(width/2-150/2, 150)
--     startbutton:SetState("startmenu")
--     startbutton:SetText("Play!")
--     startbutton.OnClick = function(object)
--         gamestate = "playing"
--         loveframes.SetState("playing")
--     end

--     local quitbutton = loveframes.Create("button")
--     quitbutton:SetSize( 150, 30)
--     quitbutton:SetPos(width/2-150/2, 200)
--     quitbutton:SetState("startmenu")
--     quitbutton:SetText("Quit!")
--     quitbutton.OnClick = function(object)
--         love.quit()
--     end

--     local pausebutton = loveframes.Create("button")
--     pausebutton:SetSize( 300, 200)
--     pausebutton:SetPos(500,400)
--     pausebutton:SetState("playing")
--     pausebutton:SetText("||")
--     pausebutton.OnClick = function(object)
--         gamestate = "paused"
--         loveframes.SetState("paused")
--     end
-- end

