scansnaphomeix500)
    name="SSHDownloadInstaller"
    type="dmg"
    appNewVersion=$(curl "https://www.pfu.ricoh.com/global/scanners/scansnap/dl/setup/m-sshoffline-2_22_0.html?MODEL=100201" | grep "ScanSnap Home Offline Installer" | sed -n 's/.*<title>\(.*\)<\/title>.*/\1/p' | sed -n 's/.*Offline Installer \(.*\) Setup Program.*/\1/p')
    downloadURLVar1=$( echo "$appNewVersion" | sed 's/\.//g')
    downloadURLVar2=$( echo "$appNewVersion" | sed 's/\./_/g')
    downloadURL="https://origin.pfultd.com/downloads/ss/sshinst/m-$downloadURLVar1/MacSSHOfflineInstaller_$downloadURLVar2.dmg"
    expectedTeamID="XW4U7W2E9L"
    ;;
