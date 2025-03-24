chat_format:
    type: world
    debug: false
    events:
        on player chats:
        - determine "raw_format:<<placeholder[utils_parse:2_luckperms_prefix]><placeholder[chathead]><reset><player.name>> <context.message>"