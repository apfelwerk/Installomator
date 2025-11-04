affinityapp)
    name="Affinity"
    type="dmg"
    appName="Affinity.app"
    curlOptions=(
        -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.1 Safari/605.1.15"
        -H "accept-encoding: gzip, deflate, br"
        -H "Referrer Policy: strict-origin-when-cross-origin"
        -H "upgrade-insecure-requests: 1"
        -H "sec-fetch-dest: document"
        -H "sec-gpc: 1"
        -H "sec-fetch-user: ?1"
        -H "accept-language: en-US,en;q=0.9"
        -H "accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
        -H "sec-fetch-mode: navigate"
    )
    downloadURL="https://downloads.affinity.studio/Affinity.dmg"
    appNewVersion=""
    lastModified=$( curl -fsIL "${curlOptions[@]}" "$downloadURL" | awk 'tolower($1)=="last-modified:" { $1=""; sub(/^ /,""); print }' | tail -n1 )
    if [[ -n $lastModified ]]; then
        appNewVersion=$(date -jf "%a, %d %b %Y %H:%M:%S %Z" "$lastModified" "+%Y.%m.%d" 2>/dev/null)
    fi
    expectedTeamID="5HD2ARTBFS"
    ;;
