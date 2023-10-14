fx_version 'cerulean'
game 'gta5'

name 'sc_package'
author 'Scube Scripts'
description 'This script allows you to create packages and get any items from them.'
version '1.0.1'

client_scripts {
    'config.lua',
    'main/client.lua'
}

server_scripts {
    'config.lua',
    'main/updater.lua',
    'main/server.lua'
}
 