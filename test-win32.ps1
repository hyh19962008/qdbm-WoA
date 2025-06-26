# Stop on failure 
# Require pwsh >= 7.4
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest
$PSNativeCommandUseErrorActionPreference = $true

rm -Recurse -Force casket*
./dptest write -s casket 500 500000
./dptest write casket 50000 5000
./dptest read casket
./dptest read -wb casket
./dptest rcat -c casket 50000 50 500 32 8
./dptest combo casket
./dptest wicked -c casket 5000
./dptest wicked casket 500
./dpmgr repair casket
./dpmgr optimize casket
./dpmgr list casket
rm -Recurse -Force casket*
./crtest write -s casket 500 100000 5
./crtest write casket 50000 500 10
./crtest read casket
./crtest read -wb casket
./crtest rcat -c casket 50000 5 10 500 32 8
./crtest combo casket
./crtest wicked -c casket 5000
./crtest wicked casket 500
./crmgr repair casket
./crmgr optimize casket
./crmgr list casket
rm -Recurse -Force casket*
./crtest write -lob casket 1000 50 10
./crtest read -lob casket
rm -Recurse -Force casket*
./rltest write casket 5000
./rltest read casket 5000
./rlmgr list casket
rm -Recurse -Force casket*
./hvtest write casket 5000
./hvtest read casket 5000
./hvmgr optimize casket
./hvmgr list casket
rm -Recurse -Force casket*
./hvtest write -qdbm -s casket 500
./hvtest write -qdbm casket 5000
./hvtest read -qdbm casket 5000
rm -Recurse -Force casket*
./cbtest sort 5000
./cbtest strstr 500
./cbtest list 50000
./cbtest list -d 500
./cbtest map 50000 500
./cbtest map -d 500 5
./cbtest heap 50000 500
./cbtest heap -d 500 50
./cbtest wicked 5000
./cbtest misc
rm -Recurse -Force casket*
./vltest write -tune 32 31 32 32 casket 50000
./vltest read casket
./vltest rdup -tune 32 31 512 256 casket 50000 50000
./vltest combo casket
./vltest wicked -c casket 5000
./vltest wicked casket 500
./vlmgr repair casket
./vlmgr optimize casket
./vlmgr list casket
rm -Recurse -Force casket*
./vltest write -int -cz -tune 32 31 32 32 casket 50000
./vltest read -int -vc casket
./vltest rdup -int -cz -cc -tune 32 31 512 256 casket 50000 50000
./vltest combo -cz casket
./vltest wicked -cz -c casket 5000
./vltest combo -cy casket
./vltest wicked -cy -c casket 5000
./vltest combo -cx casket
./vltest wicked -cx -c casket 5000
rm -Recurse -Force casket*
./odtest write casket 500 50 5000
./odtest read casket
./odtest combo casket
./odtest wicked casket 500
rm -Recurse -Force casket*
echo '\n'
echo '#================================================================\n'
echo '# Checking completed.\n'
echo '#================================================================\n'