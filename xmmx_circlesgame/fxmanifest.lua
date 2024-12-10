fx_version 'cerulean'
games { 'gta5', 'rdr3' }
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

lua54 'yes'
author 'XMMX DEVELOPMENT'
description 'A Circles Minigame for FiveM & RedM'
version '1.2'

shared_scripts { 'config.lua' }

client_scripts { 'client/*.lua' }

server_scripts { 'server/*.lua' }

ui_page 'web/index.html'

files {
    'web/index.html',
    'web/js/*.js',
    'web/css/*.css',
    'web/assets/*.wav',
    'web/assets/*.svg'
}