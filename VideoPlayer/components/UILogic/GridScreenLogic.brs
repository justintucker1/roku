sub ShowGridScreen()
    m.GridScreen = CreateObject("roSGNode", "GridScreen")
    m.GridScreen.ObserveField("rowItemSelected", "OnGridScreenItemSelected")
    ShowSCreen(m.GridScreen) ' show GridScreen
end sub

sub OnGridScreenItemSelected(event as Object)
    grid = event.GetRoSGNode()
    m.selectedIndex = event.GetData()
    rowContent = grid.content.GetChild(m.selectedIndex[0])
    itemIndex = m.selectedIndex[1]
    ShowVideoScreen(rowContent, itemIndex)
end sub