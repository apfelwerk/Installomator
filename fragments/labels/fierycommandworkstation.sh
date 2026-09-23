fierycommandworkstation)
    name="FieryCommandWorkStation"
    #appName="Fiery Command WorkStation Package.app"
    pkgName="/OSX/CWS Wrapper.pkg"
    type="pkgInDmg"

    latest=$(curl --fail --location --silent --show-error \
        -H "Content-Type: text/xml; charset=utf-8" \
        -H 'SOAPAction: "http://updates.efi.com/des/newSoftware"' \
        -d '<?xml version="1.0" encoding="utf-8"?>
    <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                   xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                   xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
        <soap:Body>
            <newSoftware xmlns="http://updates.efi.com/des/">
                <product_identifier>10001069</product_identifier>
                <host_id>12345</host_id>
                <os_name>Mac OS X</os_name>
                <os_version>12</os_version>
                <software_version>0.0.0.0</software_version>
                <software_language>EN</software_language>
                <custom_attribute1>CodeBase</custom_attribute1>
                <installed_updates/>
            </newSoftware>
        </soap:Body>
    </soap:Envelope>' \
        "https://liveupdate.fiery.com/des/hypatia.asmx" |
    xmllint --format - 2>/dev/null |
    awk '
    /<version>/ {
        line=$0
        sub(/^.*<version>/, "", line)
        sub(/<\//version>.*$/, "", line)
        gsub(/[[:space:]]/, "", line)
        ver=line
    }
    /<location_download>/ {
        line=$0
        sub(/^.*<location_download>/, "", line)
        sub(/<\//location_download>.*$/, "", line)
        gsub(/[[:space:]]/, "", line)
        if (line ~ /\.dmg([?&].*)?$/) {
            print ver "|" line
        }
    }' |
    sort -t'|' -k1,1n -k1.2,1n -k1.3,1n -k1.4,1n |
    tail -n1)

    downloadURL="$(echo "$latest" | cut -d"|" -f2 | tr -d '[:space:]')"
    appNewVersion="$(echo "$latest" | cut -d"|" -f1 | tr -d '[:space:]')"
    expectedTeamID="5N677U7DA8"
    ;;
