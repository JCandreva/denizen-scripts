luzesmain:
    type: world
    debug: false
    events:
        after target physics:
        - if <context.location> == <location[-75,88,-30,secretisland]>:
            - ratelimit <context.location> 10s
            - run luzesilha
        - if <context.location> == <location[2078,151,2055,pmcproject]>:
            - ratelimit <context.location> 10s
            - run luzesgelo
luzesilha:
    type: task
    debug: false
    script:
    - adjustblock <location[-77,84,-30,secretisland]> switched:true no_physics
    - playsound <location[-73,81,-24,secretisland]> sound:ui_button_click
    - wait 0.5s
    - adjustblock <location[-75,84,-30,secretisland]> switched:true no_physics
    - playsound <location[-73,81,-24,secretisland]> sound:ui_button_click
    - wait 0.5s
    - adjustblock <location[-73,84,-30,secretisland]> switched:true no_physics
    - playsound <location[-73,81,-24,secretisland]> sound:ui_button_click
    - wait 1s
    - adjustblock <location[-77,85,-30,secretisland]> switched:true no_physics
    - playsound <location[-73,81,-24,secretisland]> sound:ui_button_click
    - wait 0.5s
    - adjustblock <location[-75,85,-30,secretisland]> switched:true no_physics
    - playsound <location[-73,81,-24,secretisland]> sound:ui_button_click
    - wait 0.5s
    - adjustblock <location[-73,85,-30,secretisland]> switched:true no_physics
    - playsound <location[-73,81,-24,secretisland]> sound:ui_button_click
    - wait 1s
    - adjustblock <location[-77,86,-30,secretisland]> switched:true no_physics
    - adjustblock <location[-75,86,-30,secretisland]> switched:true no_physics
    - adjustblock <location[-73,86,-30,secretisland]> switched:true no_physics
    - playsound <location[-73,81,-24,secretisland]> sound:block_note_block_bell
    - wait 0.5s
    - animate <npc[15]> sleep
    - wait 4.5s
    - adjustblock <location[-77,84,-30,secretisland]> switched:false no_physics
    - adjustblock <location[-75,84,-30,secretisland]> switched:false no_physics
    - adjustblock <location[-73,84,-30,secretisland]> switched:false no_physics
    - adjustblock <location[-77,85,-30,secretisland]> switched:false no_physics
    - adjustblock <location[-75,85,-30,secretisland]> switched:false no_physics
    - adjustblock <location[-73,85,-30,secretisland]> switched:false no_physics
    - adjustblock <location[-77,86,-30,secretisland]> switched:false no_physics
    - adjustblock <location[-75,86,-30,secretisland]> switched:false no_physics
    - adjustblock <location[-73,86,-30,secretisland]> switched:false no_physics
    - animate <npc[15]> stop_sleeping

luzesgelo:
    type: task
    debug: false
    script:
    - adjustblock <location[2080,147,2055,pmcproject]> switched:true no_physics
    - playsound <location[2079,143,2051,pmcproject]> sound:ui_button_click
    - wait 0.5s
    - adjustblock <location[2078,147,2055,pmcproject]> switched:true no_physics
    - playsound <location[2079,143,2051,pmcproject]> sound:ui_button_click
    - wait 0.5s
    - adjustblock <location[2076,147,2055,pmcproject]> switched:true no_physics
    - playsound <location[2079,143,2051,pmcproject]> sound:ui_button_click
    - wait 1s
    - adjustblock <location[2080,148,2055,pmcproject]> switched:true no_physics
    - playsound <location[2079,143,2051,pmcproject]> sound:ui_button_click
    - wait 0.5s
    - adjustblock <location[2078,148,2055,pmcproject]> switched:true no_physics
    - playsound <location[2079,143,2051,pmcproject]> sound:ui_button_click
    - wait 0.5s
    - adjustblock <location[2076,148,2055,pmcproject]> switched:true no_physics
    - playsound <location[2079,143,2051,pmcproject]> sound:ui_button_click
    - wait 1s
    - adjustblock <location[2080,149,2055,pmcproject]> switched:true no_physics
    - adjustblock <location[2078,149,2055,pmcproject]> switched:true no_physics
    - adjustblock <location[2076,149,2055,pmcproject]> switched:true no_physics
    - playsound <location[2079,143,2051,pmcproject]> sound:block_note_block_bell
    - wait 0.5s
    - animate <npc[16]> sleep
    - wait 4.5s
    - adjustblock <location[2080,147,2055,pmcproject]> switched:false no_physics
    - adjustblock <location[2078,147,2055,pmcproject]> switched:false no_physics
    - adjustblock <location[2076,147,2055,pmcproject]> switched:false no_physics
    - adjustblock <location[2080,148,2055,pmcproject]> switched:false no_physics
    - adjustblock <location[2078,148,2055,pmcproject]> switched:false no_physics
    - adjustblock <location[2076,148,2055,pmcproject]> switched:false no_physics
    - adjustblock <location[2080,149,2055,pmcproject]> switched:false no_physics
    - adjustblock <location[2078,149,2055,pmcproject]> switched:false no_physics
    - adjustblock <location[2076,149,2055,pmcproject]> switched:false no_physics
    - animate <npc[16]> stop_sleeping
