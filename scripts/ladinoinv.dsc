ladinoinv:
  type: world
  debug: false
  events:
    after player starts sneaking:
    - flag <player> sneakstart:<util.current_time_millis>
    after tick every:5:
      - foreach <server.online_players> as:__player:
          - define classe <placeholder[mmocore_class]>
          - if <[classe]> == Ladino:
            - if <player.is_sneaking> && <util.current_time_millis.sub[<player.flag[sneakstart]>]> > 5000:
              - invisible <player> true
              - flag <player> ladinoinv:true
    after player stops sneaking flagged:ladinoinv:
      - flag <player> ladinoinv:!
      - invisible <player> false
    on entity targets player flagged:ladinoinv:
      - determine cancelled
    on player tries to attack entity flagged:ladinoinv:
      - adjust <player> is_sneaking:false
      - flag <player> ladinoinv:!
      - invisible <player> false
