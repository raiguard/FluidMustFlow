local simulations = {}

simulations.introduction = {
  init = [[
    game.surfaces[1].create_entities_from_blueprint_string{
      string = "0eNq9l9uSojAQht8l12SKhJP6KltTFmLLZBcDFRJrXYt33+ABT83YeDHeYIB86b+70x0ObFU5aIzSli0OTBW1btni14G1qtR51d+z+wbYgikLWxYwnW/70doVlju9BlOa2l9ZFzDlh3/ZQnQBbXq7zavqZqLsPgMG2iqr4GTEcbBfarddgfHkYX7rVq3Nraq1ZzZ1q45//Woew9OA7f0l82QNqvxa1c70vOizt+yBKQcmVFBYowoO2qvac+8SMJu8AGSJ+LrEWhk/7/jML7xymw2YZav+eaQIhx+yckRTI0fUCExNPDAb1QC3NT+H54kbfSQncPqRdAgpGUhKb5T2j3iP/AaU4aCUbBKfXVCe+eBZBJxRLeTze+7l9WUL1ipdtv17Z9QX5Ls9r1XVY8AUfs28hGPq+QT2d3LrjB9LT9zW635KbnkFeWsZpn72hnpJUT+frl7+uHoRXuW7bTO+kZ4kS4wmiLSIRJP00CSjoUHJ0Rtkms3xfQUFveZN7QtVX6zyPzBePiICPLmHF87sEGKIArEUFen0avTkhhgDZy8SYcBJNCtnY16snR1xYx9TDwwJqufjTRLhCipXhlO4MYbFoi7FHXY0gygoifX3sQQSeLuQ0T3E8t9OF3hvDM+WYZh4grckOQbJ5MyJv7ExfZHG54NMSCkNMiNvtuyyO0JKo5H0FibCUTJqMrmHCXELxs5SIbkdiktxGEnASEyusedNLF9LjuSUTTzHsFiMomh6baBY+7CJqlqXmHwy77p9dK25AX+a0BwvO5IMTekF46Icw2QTXJiSAzOj5+Ulx18fUgvj1vD2Mc1/ZB0/xhY3n34B24FpTz6eiTibyyyeJ3GWRF33H+iKo/I=",
      position = {-2, -1},
    }
  ]],
}

simulations.auto_join = {
  init = [[
    global.player = game.create_test_player({ name = "foo" })
    global.character = global.player.character
    global.character.teleport({ 0, 3})

    game.camera_player = global.player

    step_0 = function()
      game.camera_player_cursor_position = { 0, 3 }
      game.camera_player_cursor_direction = defines.direction.east
      target_cursor_position = { -4, -1 }
      script.on_nth_tick(1, function()
        local finished = game.move_cursor({ position = target_cursor_position })
        if finished then
          step_1()
        end
      end)
    end

    step_1 = function()
      global.character.cursor_stack.set_stack{ name = "duct-small", count = 8 }
      target_cursor_position = { 4, -1 }
      script.on_nth_tick(1, function()
        local finished = game.move_cursor({ position = target_cursor_position, speed = 0.1 })

        if global.player.can_build_from_cursor({ position = game.camera_player_cursor_position }) then
          global.player.build_from_cursor({ position = game.camera_player_cursor_position, direction = defines.direction.east })
        end

        if finished then
          step_2()
        end
      end)
    end

    step_2 = function()
      target_cursor_position = { 0, 3 }
      script.on_nth_tick(1, function()
        local finished = game.move_cursor({ position = target_cursor_position })
        if finished then
          finish()
        end
      end)
    end

    finish = function()
      global.finished_tick = game.tick

      script.on_nth_tick(1, function()
        if game.tick == global.finished_tick + 90 then
          for _, entity in pairs(game.surfaces[1].find_entities_filtered({ name = "duct-long" })) do
            entity.destroy()
          end
          step_0()
        end
      end)
    end

    step_0()

    -- Copy of control.lua

    --- Calculates the midpoint between two positions.
    --- @param pos_1 Position
    --- @param pos_2 Position
    --- @return Position
    local function get_midpoint(pos_1, pos_2)
      return {
        x = (pos_1.x + pos_2.x) / 2,
        y = (pos_1.y + pos_2.y) / 2,
      }
    end

    --- @param e on_built_entity|on_robot_built_entity|script_raised_built|script_raised_revive
    local function join_ducts(e)
      --- @type LuaEntity
      local entity = e.entity or e.created_entity
      if not entity or not entity.valid then
        return
      end

      -- Straight ducts only have one fluidbox
      for _, neighbour in pairs(entity.neighbours[1]) do
        if entity.name == neighbour.name then
          local direction = entity.direction
          local force = entity.force
          local last_user = entity.last_user
          local name = entity.name == "duct-small" and "duct" or "duct-long"
          local position = get_midpoint(entity.position, neighbour.position)
          local surface = entity.surface

          entity.destroy({ raise_destroy = true })
          neighbour.destroy({ raise_destroy = true })

          surface.create_entity({
            name = name,
            position = position,
            direction = direction,
            force = force,
            player = last_user,
            raise_built = true,
            create_build_effect_smoke = false,
          })

          -- Only do one join per build
          break
        end
      end
    end

    local event_filter = { { filter = "name", name = "duct-small" }, { filter = "name", name = "duct" } }

    script.on_event(defines.events.on_built_entity, join_ducts, event_filter)
    script.on_event(defines.events.on_robot_built_entity, join_ducts, event_filter)
    script.on_event(defines.events.script_raised_built, join_ducts, event_filter)
    script.on_event(defines.events.script_raised_revive, join_ducts, event_filter)
  ]],
}

return simulations
