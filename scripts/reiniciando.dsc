reiniciar:
    type: task
    debug: false
    script:
    - title targets:<server.online_players> fade_in:1s stay:5s fade_out:0s subtitle:<black><placeholder[oraxen_tela]> "title:"
    - wait 1s
    - title targets:<server.online_players> fade_in:0s stay:60s fade_out:1s subtitle:<black><placeholder[oraxen_tela]> "title:Reiniciando..."
    - wait 5s
    - execute as_server stop
