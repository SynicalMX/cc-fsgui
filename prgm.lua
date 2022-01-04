--    File System GUI 
--    Synical
--    Version 1.0.0

local folder_img = paintutils.loadImage("/fsgui/assets/folder.nfp")
local folderro_img = paintutils.loadImage("fsgui/assets/folder_ro.nfp")
local lua_img = paintutils.loadImage("/fsgui/assets/lua.nfp")
local other_img = paintutils.loadImage("/fsgui/assets/file.nfp")
local pathFiles

--Functions

    --Fetches file extenstion from the provided file
local function getFileExt(file)
    return file:match("^.+(%..+)$")
end

    --Updates the screen for the directory provided
local function updateScreen(curPath)
    if fs.attributes(curPath).isDir then
        pathFiles = fs.list(curPath)
        for k, v in pairs(pathFiles) do
            local ext = getFileExt(v)
            if ext == ".lua" then
                paintutils.drawImage(lua_img, term.getCursorPos())
            elseif fs.attributes(v).isDir then
                if fs.attributes(v).isReadOnly then
                    paintutils.drawImage(folderro_img, term.getCursorPos())
                else
                    paintutils.drawImage(folder_img, term.getCursorPos())
                end
            else
                paintutils.drawImage(other_img, term.getCursorPos())
            end
            local color = "0"
            local background = "f"
            for i=1, string.len(v) do
                color = color.."0"
                background = background.."f"
            end
            term.blit(" "..v, color,  background)
            print("\n")
        end
    else
        shell.run("edit", curPath)
    end
end

--init
local input = ""
updateScreen("")

while true do
    local event, dir, x, y = os.pullEvent("mouse_scroll")
    term.scroll(y)
  end