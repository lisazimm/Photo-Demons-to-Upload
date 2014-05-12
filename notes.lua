local function onComplete(event)
   local photo = event.target
   print( "photo w,h = " .. photo.width .. "," .. photo.height )
end

if media.hasSource( media.Camera ) then
   media.capturePhoto( { listener = onComplete } )
   filename=os.date( "*t" ) ..".jpg"

   --myPhoto.x= 1000
   --myPhoto.y=200
else
   native.showAlert( "Corona", "This device does not have a camera.", { "OK" } )
end

-- might want to make use of image groups
--can use filters
--app that wants to undermine the users expectations

   --myPhoto.x= 1000
   --myPhoto.y=200
--[[local button = display.newRect(120,240,80,70)

-- Button tap listener
local function pickPhoto( event )

    -- Note: Only use one of the media.show routines listed below

    -- Save photo to file in Temporary directory
     media.capturePhoto( {listener = onComplete[myPhoto] } )
     media.capturePhoto( {listener = onComplete, destination = {baseDir=system.TemporaryDirectory, filename=os.date ..".jpg", type="image"} } )
    -- Show photo on screen (no file save)  
   
end

button:addEventListener("tap", pickPhoto )

--local display.newImage( filename, 200, 200)

-- below code from corona labs
-- Need to get it centered


--local function onComplete(event)
  -- local photo = event.target
   --local photoFileName = os.date( "*t" ).jpg    -- returns table of date & time values
--print( date.year, date.month )  -- print year and month
--print( date.hour, date.min )    -- print hour and minutes
--print( os.date( "%c" ) ) 
  -- print( "photo w,h = " .. photo.width .. "," .. photo.height )
--end

--if media.hasSource( media.Camera ) then
  -- media.capturePhoto( { listener = onComplete }) -- screenCenterX, screenCenterY )
  -- if event.target == onComplete then 
    --display.newImage( photo, 300, 600)
   --end
--else
--   native.showAlert( "Corona", "This device does not have a camera.", { "OK" } )
--end

--[[

local myPhotoBombs={--array of images to be put into program
  [1]="scarybunny.png",
  [2]="clown.png",
  [3]="bat.png",
}
local allPhotoBombs= myPhotoBombs[1] .. " " .. myPhotoBombs[2] .. " " .. myPhotoBombs[3] 

local imageIndex=math.random(1,3)--randomization of the arrays

local randomPhotoBombs = display.newImage (myPhotoBombs[imageIndex])--random images display

local imageIndex=math.random(1,3)--randomization of the arrays

local group = display.newGroup()

group:insert(randomPhotoBombs)

local combined = display.capture(group,{saveToPhotoLibrary=true, isFullResolution=true } )

display.capture( displayObject, [imageIndex])--, saveToPhotoLibrary ] ) 
]]



   --myPhoto.x= 1000
   --myPhoto.y=200
--[[local button = display.newRect(120,240,80,70)

-- Button tap listener
local function pickPhoto( event )

    -- Note: Only use one of the media.show routines listed below

    -- Save photo to file in Temporary directory
     media.capturePhoto( {listener = onComplete[myPhoto] } )
     media.capturePhoto( {listener = onComplete, destination = {baseDir=system.TemporaryDirectory, filename=os.date ..".jpg", type="image"} } )
    -- Show photo on screen (no file save)  
   
end

button:addEventListener("tap", pickPhoto )

--local display.newImage( filename, 200, 200)

-- below code from corona labs
-- Need to get it centered


--local function onComplete(event)
  -- local photo = event.target
   --local photoFileName = os.date( "*t" ).jpg    -- returns table of date & time values
--print( date.year, date.month )  -- print year and month
--print( date.hour, date.min )    -- print hour and minutes
--print( os.date( "%c" ) ) 
  -- print( "photo w,h = " .. photo.width .. "," .. photo.height )
--end

--if media.hasSource( media.Camera ) then
  -- media.capturePhoto( { listener = onComplete }) -- screenCenterX, screenCenterY )
  -- if event.target == onComplete then 
   	--display.newImage( photo, 300, 600)
   --end
--else
--   native.showAlert( "Corona", "This device does not have a camera.", { "OK" } )
--end

--[[

local myPhotoBombs={--array of images to be put into program
	[1]="scarybunny.png",
	[2]="clown.png",
	[3]="bat.png",
}
local allPhotoBombs= myPhotoBombs[1] .. " " .. myPhotoBombs[2] .. " " .. myPhotoBombs[3] 

local imageIndex=math.random(1,3)--randomization of the arrays

local randomPhotoBombs = display.newImage (myPhotoBombs[imageIndex])--random images display

local imageIndex=math.random(1,3)--randomization of the arrays

local group = display.newGroup()

group:insert(randomPhotoBombs)

local combined = display.capture(group,{saveToPhotoLibrary=true, isFullResolution=true } )

display.capture( displayObject, [imageIndex])--, saveToPhotoLibrary ] ) 
]]