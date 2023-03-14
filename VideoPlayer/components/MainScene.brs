' entry point of MainScene
sub Init()
    ' limit work done in init
    ' set background color for scene applied only if backgrounduri is empty
    m.top.backgroundColor = "0x662D91"
    m.top.backgroundUri = "pkg:/images/background.jpg"
    m.loadingIndicator = m.top.findNode("loadingIndicator") 'store node to m
    InitScreenStack()
    ShowGridScreen()
    RunContentTask() ' retrieve content
end sub

function OnKeyEvent(key as String, press as Boolean) as Boolean
    result = false
    if press
        if key = "back"
            numberOfScreens = m.screenStack.Count()
            ' close top screen if there are 2 or more screens in stack
            if numberOfScreens > 1
                CloseScreen(invalid)
                result = true
            end if
        end if
    end if
    return result
end function
