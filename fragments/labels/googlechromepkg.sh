googlechromepkg)
    name="Google Chrome"
    type="pkg"
    #
    # Note: this url acknowledges that you accept the terms of service
    # https://support.google.com/chrome/a/answer/9915669
    #
    appNewVersion=$(curl -fs "https://chromiumdash.appspot.com/fetch_releases?channel=stable&platform=mac&num=1&offset=0" | grep -o '"version":"[0-9.]*"' | head -1 | sed -E 's/"version":"([0-9.]+)"/\1/')
    downloadURL="https://dl.google.com/chrome/mac/stable/accept_tos%3Dhttps%253A%252F%252Fwww.google.com%252Fintl%252Fen_ph%252Fchrome%252Fterms%252F%26_and_accept_tos%3Dhttps%253A%252F%252Fpolicies.google.com%252Fterms/googlechrome.pkg"
    expectedTeamID="EQHXZ8M8AV"
    #updateTool="/Library/Google/GoogleSoftwareUpdate/GoogleSoftwareUpdate.bundle/Contents/Resources/GoogleSoftwareUpdateAgent.app/Contents/MacOS/GoogleSoftwareUpdateAgent"
    #updateToolArguments=( -runMode oneshot -userInitiated YES )
    #updateToolRunAsCurrentUser=1
    ;;