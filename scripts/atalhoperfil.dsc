atalhoperfil:
    type: world
    debug: false
    events:
        on player sends packet class:ServerboundSeenAdvancementsPacket:
            - execute as_player profile

ajeitarconquista:
    type: world
    events:
        on server prestart:
        - advancement id:dummyperfil icon:baked_potato "title:Você não deveria estar vendo isso" "description:Se você estiver vendo essa tela, provavelmente algo deu errado." parent:nugget frame:task x:1

entregarconquista:
    type: world
    events:
        after player spawns:
        - advancement id:dummyperfil grant:<player>