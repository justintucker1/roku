' Channel entry point
sub Main()
    ShowChannelRSGScreen()
end sub

sub ShowChannelRSGScreen()
    'The roSGScreen object is a SceneGraph canvas displaying the contents of a scene node instance (duh)
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.SetMessagePort(m.port)
    ' every screen object has a Scene node
    scene = screen.CreateScene("MainScene")
    screen.show() ' invokes init method 

    ' event loop
    while(true)
        ' waiting for events from screen
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.IsSCreenClosed() then return
        end if  
    end while
end sub