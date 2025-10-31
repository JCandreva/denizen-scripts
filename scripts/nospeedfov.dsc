zoom_on_speed:
    type: world
    debug: false
    events:
        after player potion effects added effect:SPEED:
            - adjust <player> fov_multiplier:0.15
        after player potion effects removed effect:SPEED:
            - adjust <player> fov_multiplier
        after player joins:
            - if <player.has_effect[SPEED]>:
                - adjust <player> fov_multiplier:0.15