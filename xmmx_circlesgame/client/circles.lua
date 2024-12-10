local gameResultPromise = nil

local function StartCircleGame(difficulty, time, mode, title)
    gameResultPromise = promise.new()

    Wait(100)
    SendNUIMessage({
        action = "START_GAME",
        difficulty = difficulty or "easy",
        time = time or 30,
        mode = mode or "letters",
        title = title or "Circles Game",
    })
    SetNuiFocus(true, true)

    return Citizen.Await(gameResultPromise)
end

RegisterNUICallback('CIRCLEGAME_SUCCESS', function(data, cb)
    SetNuiFocus(false, false)

    if gameResultPromise then
        gameResultPromise:resolve(true)
        if Config.Debug then print("Circles Game Succeeded") end
        gameResultPromise = nil
    end

    cb('ok')
end)

RegisterNUICallback('CIRCLEGAME_FAILED', function(data, cb)
    SetNuiFocus(false, false)

    if gameResultPromise then
        gameResultPromise:resolve(false)
        if Config.Debug then print("Circles Game Failed") end
        gameResultPromise = nil
    end

    cb('ok')
end)

exports('StartCircleGame', StartCircleGame)