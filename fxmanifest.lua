fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'sc_package'
author 'Scube Scripts'
description 'This script allows you to create packages and get any items from them.'
version '2.0.2'

client_scripts {
    'main/client.lua'
}

server_scripts {
    'main/updater.lua',
    'main/server.lua'
}
 
shared_script {
    '@ox_lib/init.lua',
    'config.lua'
}

dependencies {
    'es_extended',
    'ox_lib'
  }