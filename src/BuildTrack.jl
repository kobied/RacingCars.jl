module BuildTrack

using Configurations, Colors

const CONFIG_FILE = joinpath(@__DIR__,"../config/game.toml")


@option struct WindowConfigs
    HEIGHT = 400
    WIDTH = 400
    BACKGROUND = "purple"
end

@option struct GameConfigs
    window::WindowConfigs
end

game_config = from_toml(GameConfigs, CONFIG_FILE)
    
end