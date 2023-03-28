fx_version 'cerulean'
game 'gta5'

author 'Noah W. <noah@plmonline.net>'
description 'A Creator Code command, that is only once usable'
version '1.0.0'
-- What to run
client_scripts {
    'client/*.*'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/*.*'
}