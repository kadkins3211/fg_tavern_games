function getTestWindow()
    return "game_main_window"
end

aRecords = {
    ["testData"] = {
        aDataMap = { "test"},
        aDisplayIcon = {"button_test_icon","button_test_icon_down"},
        fGetLink = getTestWindow
    }
}

function onInit()
    Debug.chat("Records", aRecords)
    for kRecordType,vRecordType in pairs(aRecords) do
		LibraryData.overrideRecordTypeInfo(kRecordType, vRecordType);
	end
end
