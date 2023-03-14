sub RunContentTask()
    m.contentTask = CreateObject("roSGNode", "MainLoaderTask") ' create task to fetch feed
    m.contentTask.ObserveField("content", "OnMainContentLoaded")
    m.contentTask.control  ="run"
    m.loadingIndicator.visible = true
end sub

sub OnMainContentLoaded() ' invoked when content is ready
    m.GridScreen.SetFocus(true) 
    m.loadingIndicator.visible = false
    m.GridScreen.content = m.contentTask.content ' populate GridScreen with content
end sub
