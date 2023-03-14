sub InitScreenStack()
    m.screenStack = []
end sub

sub ShowScreen(node as Object)
    prev = m.screenStack.Peek() ' take current screen and store it
    if prev <> invalid
        prev.visible = false ' hides current screen
    end if
    'show new screen
    m.top.appendChild(node)
    node.visible = true
    node.setFocus(true)
    m.screenStack.push(node) ' add new screen to stack
end sub

sub CloseScreen(node as Object)
    if node = invalid or m.screenStack.peek()?.IsSameNode(node)
        last = m.screenStack.pop()
        last.visible = false
        m.top.removeChild(node) ' remove screen from scene

        ' take previous screen and make it visible
        prev = m.screenStack.peek()
        if prev <> invalid
            prev.visible = true
            prev.SetFocus(true)
        end if
    end if
end sub

