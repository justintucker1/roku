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
