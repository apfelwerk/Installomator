insta360studio)
    name="Insta360 Studio"
    type="pkgInZip"
    downloadURL="https://wassets.insta360.com/common/a8bf763e56b94cc283df47428b15783b/Insta360_Studio_5.8.8_release_insta360(RC_build53)_20260109_114123_signed_1767949918094.zip"
    appNewVersion=$(echo "$downloadURL" | sed -E 's/.*Insta360_Studio_([0-9.]+)_.*/\1/')
    archiveName="Insta360_Studio.zip"
    packageName="Insta360_Studio.pkg"
    packageID="com.insta360.insta360Studio"
    expectedTeamID="UBX9CH9GDX"
    ;;
    