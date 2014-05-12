
--local physics = require("physics")
--local camera = require( "camera" )
 
--local camera = Camera:new()

local physics = require("physics")
display.setStatusBar( display.HiddenStatusBar )
local screenWidth = display.contentWidth
local screenHeight = display.contentHeight
local screenCenterX = display.contentCenterX
local screenCenterY = display.contentCenterY

settings = {
    orientation =
    {
        default = "landscapeRight",
    }
}
application =
{
    content =
    {
        width = "screenWidth",
        height = "screenHeigth",
        scale = "letterBox",
        xAlign = "screenCenterX",
        yAlign = "screenCenterY",
    }
}


physics.start( )
physics.setGravity( gx, gy )

local background = display.newRect( 600, 600, screenWidth, screenHeight ) -- sky
background:setFillColor(1,1,1,1) 
background.x = screenCenterX -- center background
background.y = screenCenterY -- center background
-- new function

local function filename(onComplete)
 local newPhoto = display.newImage(filename) --, 0,0)
  --local s = display.contentHeight / newPhoto.contentHeight
   --newPhoto:scale (s,s)
 -- newPhoto.x = 150 --screenCenterX - 30 -- I've tried a lot of variations here, but photo is still in left hand corner
 --newPhoto.y = 200 --screenCenterY + 100
end 

-- code used for this function from Corona's media library
local function onComplete(event)
   local photo = event.target 
   --local filename=os.date( "*t" ) .. ".jpg" -- saves photo by year, month, day, hour, minute, second, weekday, day of the year, and daylight saving flag, a boolean
   local w = display.contentWidth / photo.contentWidth
   --local s = display.contentHeight / photo.contentHeight
   photo:scale (w*.75,w*.75)
   photo.x=display.contentWidth / 2
   photo.y=display.contentHeight / 3.5
   print( "photo w,h = " .. photo.width .. "," .. photo.height )
   --local spider = "spider.png"


local myPhotoBombs = {}

--[[local scarybunny = "scarybunny.png"
scarybunny.x = display.contentWidth/2
scarybunny.y = display.contentHeight /2 

local clown = "clown.png"
clown.x = display.contentWidth/2
clown.y = display.contentHeight /2 

local bat = "bat.png"
bat.x = display.contentWidth/2
bat.y = display.contentHeight /2 

local spider = "spider.png"
spider.x = display.contentWidth/2
spider.y = display.contentHeight /2 
]]
--[[
local myPhotoBombs=
{
  [1]="scarybunny.png", 
  [2]="clown.png",
  [3]="bat.png",
  --[4]="spider",
}

local allPhotoBombs= myPhotoBombs[1]  .. " " .. myPhotoBombs[2] .. " " .. myPhotoBombs[3]

local imageIndex=math.random(1,3)--randomization of the arrays


local randomImages = display.newImage (myPhotoBombs[imageIndex],300,600)--random images display]]
local randomPhotoBombs = display.newImage ("spider.png", screenCenterX*1.27,screenCenterY*.3)
local spiderDrop = display.newImage( "spiderDrop.png")
spiderDrop.x = screenCenterX / .59
physics.addBody( spiderDrop)--, {bounce = 0.8})

local myshutters = display.newImage( "shuttersNew.png", display.contentCenterX*3.1, display.contentCenterY*.6 )
--local mydoor = display.newImage( "door.png", display.contentCenterX, display.contentCenterY*1.7 )
end

if media.hasSource( media.Camera ) then
         --desitination = ({baseDir=system.TemporaryDirectory, filename=os.date( "*t" ) .. ".jpg", type="image"} )
media.capturePhoto( { listener = onComplete } )--destination = {baseDir=system.TemporaryDirectory, filename="image.jpg", type="image"} } )
--photo.x=150
   --photo.y=250
else
   native.showAlert( "Corona", "This device does not have a camera.", { "OK" } )
end
---- Button tap listener
--local group = display.newGroup( )

local button = display.newRect(display.contentCenterX,display.contentCenterY*1.3,500,100)
button:setFillColor(1,1)

local addButtonText = display.newEmbossedText("Take Photo", display.contentCenterX, display.contentCenterY*1.3,"Garamond", 60 )
--local addButtonText = display.newText( "Take Photo", display.contentCenterX,display.contentCenterY*1.7,"Garamond", 30 )
addButtonText:setTextColor(139,0,0)

--group:insert(addButtonText,button)

local function pickPhoto( event )
media.capturePhoto( { listener = onComplete, destination = {baseDir=system.TemporaryDirectory, filename="image.jpg", type="image"} } )
end

button:addEventListener("tap", pickPhoto )
--local buttonText = "Take Photo"



--[[--local button = display.newRect(120,240,80,70)

-- Button tap listener
local function pickPhoto( event )

    -- Note: Only use one of the media.show routines listed below

    -- Save photo to file in Temporary directory
    media.capturePhoto( {listener = onComplete, destination = {baseDir=system.TemporaryDirectory, filename="image.jpg", type="image"} } )

    -- Show photo on screen (no file save)  
    media.capturePhoto( {listener = onComplete } )
end]]

button:addEventListener("tap", pickPhoto )



