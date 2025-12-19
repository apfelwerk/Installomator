synologydriveclient)
    name="Synology Drive Client"
    type="pkgInDmg"
    # packageID="com.synology.CloudStation"
    versionKey="CFBundleVersion"
    appVersion=$(curl -sf https://archive.synology.com/download/Utility/SynologyDriveClient | grep -m 1 /download/Utility/SynologyDriveClient/ | sed "s|.*>\(.*\)<.*|\\1|")
    appShortVersion=$(sed 's#.*-\(\)#\1#' <<< "$appVersion")
    downloadURL="https://global.download.synology.com/download/Utility/SynologyDriveClient/${appVersion}/Mac/Installer/synology-drive-client-${appShortVersion}.dmg"
    # appNewVersion=$(appVersionP1=$(curl -sf https://archive.synology.com/download/Utility/SynologyDriveClient | grep -m 1 /download/Utility/SynologyDriveClient/ | sed "s|.*>\(.*\)-.*|\\1|") && sed 's/\(.\{0\}\)./\17/' <<< "$appVersionP1")
    appNewVersion="$appShortVersion"
    expectedTeamID="X85BAK35Y4"
    ;;
