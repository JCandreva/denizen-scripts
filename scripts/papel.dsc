# Give paper with custom name
give_paper:
    type: command
    name: givepaper
    permissions: default
    usage: /givepaper [name]
    script:
    - define name <context.args[1]>
    - give paper 1 named "<name>"
