update_life:
    type: world
    events:
        after player spawns:
        - if <player.scoreboard_team_name.equals[Alpha]>:
            - health <player> 28
        - if <player.scoreboard_team_name.equals[Beta]>:
            - health <player> 14

clock:
    type: world
    debug: false
    events:
        after delta time secondly:
        - define time <world[world].time.div[1000].add[6]>
        - if <[time]> >= 24:
            - define time <[time].sub[24]>
        - define hour <[time].round_down>
        - define minute <[time].sub[<[hour]>].mul[60].round>
        - if <[minute]> < 10:
            - define minute 0<[minute]>
        - if <[hour]> == 0:
            - bossbar auto tempo players:<server.online_players> color:red "title:Tempo: <[hour]>:<[minute]> <red>HORA DO CRIME" style:SOLID progress:<[time].div[24]>
            - stop
        - if <world[world].time.period.equals[night]>:
            - bossbar auto tempo players:<server.online_players> color:yellow "title:Tempo: <[hour]>:<[minute]> <red>NOITE! (pvp ativado)" style:SOLID progress:<[time].div[24]>
        - else:
            - bossbar auto tempo players:<server.online_players> color:blue "title:Tempo: <[hour]>:<[minute]>" style:SOLID progress:<[time].div[24]>

death:
    type: world
    debug: false
    events:
        after player dies:
        - if <player.scoreboard_team_name.equals[Beta]>:
            - announce "<red><player> morreu!"