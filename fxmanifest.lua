fx_version 'cerulean'
game'gta5'

author 'WixryDev'
description 'Multiple small resources in one resource mapped.'
version '1.0.1'

shared_scripts {
    'shared.lua',
    '@es_extended/imports.lua'
}

client_scripts {
    'shared.lua',
    'client/**.lua'
}

server_scripts {
    'server/**.lua'
}
