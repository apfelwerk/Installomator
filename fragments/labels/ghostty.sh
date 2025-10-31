ghostty)
    name="Ghostty"
    type="dmg"
    appNewVersion="$(curl -s https://ghostty.org/download | sed -n 's/.*href="\([^"]*Ghostty\.dmg\)".*/\1/p' | sed -n 's|.*release.files.ghostty.org/\([^/]*\)/Ghostty\.dmg.*|\1|p')"
    downloadURL="https://release.files.ghostty.org/$appNewVersion/Ghostty.dmg"
    expectedTeamID="24VZTF6M5V"
    ;;
    