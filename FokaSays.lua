
require('luau')

_addon.name = 'FokaSays'
_addon.author = 'Cliff'
_addon.commands = {'fokasays'}
_addon.version = '0.0.1'

settings = {}

-- Check for keyword
windower.register_event('chat message', function(message, player, mode, is_gm)
    
    if message:lower():match('disband now':lower()) then
        windower.send_command('input /pcmd breakup')

    elseif message:lower():match('no npc':lower()) then
        windower.send_command('input /returnfaith all')

    elseif message:lower():match('follow foka':lower()) then
        windower.send_command('input /follow Foka')
        windower.send_command('input /ja '..windower.to_shift_jis("スペクトラルジグ")..' <me>')
        
    end
end)
