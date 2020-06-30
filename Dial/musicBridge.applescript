

script musicBridge
    
    property parent : class "NSObject"
    
    to playPause()
        tell application "Music" to playpause
    end playPause
    
    to gotoNextTrack()
        if application "Music" is running then
            tell application "Music" to next track
        end if
    end gotoNextTrack
    
    to gotoPreviousTrack()
        if application "Music" is running then
            tell application "Music" to previous track
        end if
    end gotoPreviousTrack
    
end script
