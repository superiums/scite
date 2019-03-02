local toClose = { ['('] = ')', ['{'] = '\n\t\n}', ['['] = ']', ['"'] = '"', ["'"] = "'" }
    function OnChar(charAdded)   
        if toClose[charAdded] ~= nil then   
            editor:InsertText(editor.CurrentPos,toClose[charAdded])   
        end   
    end  
function MyTab()
    cp=editor.CurrentPos
    scite.MenuCommand(IDM_ABBREV)
    if cp==editor.CurrentPos then
        editor:Tab()
    end
end