mobGriefingEvents:
    type: world
    debug: false
    events:
        after player quits:
        - if <server.online_players.size> == 0:
            - gamerule <player.world> mobGriefing false
        after player joins:
        - if <server.online_players.size> == 1:
            - gamerule <player.world> mobGriefing true