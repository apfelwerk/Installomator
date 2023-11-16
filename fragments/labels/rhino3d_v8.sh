rhino3d_v8)
    name="Rhino 8"
    type="dmg"
    downloadURL=$(curl -fs "https://files.mcneel.com/rhino/8/mac/updates/commercialUpdates.xml" | xmllint --xpath '//rss/channel/item[1]/enclosure/@url' - | sed 's/.*url="\(.*\)".*/\1/')
    appNewVersion=$(curl -fs "https://files.mcneel.com/rhino/8/mac/updates/commercialUpdates.xml" | xmllint --xpath '//rss/channel/item[1]/title/text()' - | sed -E 's/.*Build ([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+).*/\1/')
    expectedTeamID="D6XDM4N99E"
    ;;
