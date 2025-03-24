tpcermonia_assignment:
    type: assignment
    actions:
        on assignment:
        - trigger name:proximity state:true radius:1
    interact scripts:
    - tpcerimonia_interact
tpcerimonia_interact:
    type: interact
    steps:
        1:
            proximity trigger:
                entry:
                    script:
                    - teleport <player> <location[-7567,104,781,1,28,world]>

tpbolo_assignment:
    type: assignment
    actions:
        on assignment:
        - trigger name:proximity state:true radius:1
    interact scripts:
    - tpbolo_interact
tpbolo_interact:
    type: interact
    steps:
        1:
            proximity trigger:
                entry:
                    script:
                    - teleport <player> <location[-167,64,0,5,-93,world]>
