print("Install GUI File System? Y/N")
local input = true
local install
while input do
    local event, character = os.pullEvent("char")
    print(character)
    if character == "y" or "Y" then
        install = true
    else
        install = false
    end
    input = false
end

if install then
    print("Installing Main Files...")
    shell.run("wget", "https://raw.githubusercontent.com/SynicalMC/cc-fsgui/main/files.lua")
    shell.run("wget", "https://raw.githubusercontent.com/SynicalMC/cc-fsgui/main/prgm.lua")
    shell.run("mkdir", "/fsgui/assets")
    shell.run("move", "prgm.lua /fsgui/")
    shell.run("cd", "/fsgui/assets/")
    print("Done!\nInstalling images...")
    shell.run("wget", "https://raw.githubusercontent.com/SynicalMC/cc-fsgui/main/assets/file.nfp")
    shell.run("wget", "https://raw.githubusercontent.com/SynicalMC/cc-fsgui/main/assets/lua.nfp")
    shell.run("wget", "https://raw.githubusercontent.com/SynicalMC/cc-fsgui/main/assets/folder.nfp")
    shell.run("wget", "https://raw.githubusercontent.com/SynicalMC/cc-fsgui/main/assets/folder_ro.nfp")
    shell.run("move", "file.nfp /fsgui/assets/")
    shell.run("move", "lua.nfp /fsgui/assets/")
    shell.run("move", "folder.nfp /fsgui/assets/")
    shell.run("move", "folder_ro.nfp /fsgui/assets/")
    print("Done!\nType 'files' to open the gui!")
end
