Config = Config or {}

Config = {
    VerChk      = true,     -- Enable or Disable Version Checks?
    Debug       = true,     -- Enables the test commands.
}

if Config.Debug then
    ---@param level:   "easy", "medium", "hard".
    ---@param time:    time in seconds.
    ---@param mode:    "letters", "numbers", and "mixed".
    ---@param title:   Title to show beside the time.

    -- EXMAPLES:
    -- exports.xmmx_circlesgame:StartCircleGame("easy", 30, "letters", "Test Game:")
    -- exports.xmmx_circlesgame:StartCircleGame("easy", 30, "numbers", "Test Game:")
    -- exports.xmmx_circlesgame:StartCircleGame("easy", 30, "mixed", "Test Game:")
    -- exports.xmmx_circlesgame:StartCircleGame("medium", 30, "letters", "Test Game:")
    -- exports.xmmx_circlesgame:StartCircleGame("medium", 30, "numbers", "Test Game:")
    -- exports.xmmx_circlesgame:StartCircleGame("medium", 45, "mixed", "Test Game:")
    -- exports.xmmx_circlesgame:StartCircleGame("hard", 45, "letters", "Test Game:")
    -- exports.xmmx_circlesgame:StartCircleGame("hard", 45, "numbers", "Test Game:")
    -- exports.xmmx_circlesgame:StartCircleGame("hard", 50, "mixed", "Test Game:")


    RegisterCommand("circlegame", function()
        local level  = "medium"
        local time   = 30
        local mode   = "letters"
        local title  = "Test Game:"
        exports.xmmx_circlesgame:StartCircleGame(level, time, mode, title)
    end)
end