#!/bin/bash
scriptName="UUP Converter v0.1.1"

editions="analogonecore
andromeda
cloude
clouden
core
corecountryspecific
coren
coresinglelanguage
coresystemserver
education
educationn
enterprise
enterpriseeval
enterpriseg
enterprisegn
enterprisen
enterpriseneval
enterprises
enterpriseseval
enterprisesn
enterprisesneval
iotuap
onecoreupdateos
professional
professionalcountryspecific
professionaleducation
professionaleducationn
professionaln
professionalsinglelanguage
professionalworkstation
professionalworkstationn
serverarm64
serverarm64core
serverazurecor
serverazurecorcore
serverazurenano
serverazurenanocore
servercloudstorage
servercloudstoragecore
serverdatacenter
serverdatacenteracor
serverdatacenteracorcore
serverdatacentercor
serverdatacentercorcore
serverdatacentercore
serverdatacentereval
serverdatacenterevalcor
serverdatacenterevalcorcore
serverdatacenterevalcore
serverdatacenternano
serverdatacenternanocore
serverhypercore
serverrdsh
serverrdshcore
serversolution
serversolutioncore
serverstandard
serverstandardacor
serverstandardacorcore
serverstandardcor
serverstandardcorcore
serverstandardcore
serverstandardeval
serverstandardevalcor
serverstandardevalcorcore
serverstandardevalcore
serverstandardnano
serverstandardnanocore
serverstoragestandard
serverstoragestandardcore
serverstoragestandardeval
serverstoragestandardevalcore
serverstorageworkgroup
serverstorageworkgroupcore
serverstorageworkgroupeval
serverstorageworkgroupevalcore
serverweb
serverwebcore
starter
startern"

bootSourcesList="sources/alert.gif
sources/api-ms-win-core-apiquery-l1-1-0.dll
sources/api-ms-win-downlevel-advapi32-l1-1-0.dll
sources/api-ms-win-downlevel-advapi32-l1-1-1.dll
sources/api-ms-win-downlevel-advapi32-l2-1-0.dll
sources/api-ms-win-downlevel-advapi32-l2-1-1.dll
sources/api-ms-win-downlevel-advapi32-l3-1-0.dll
sources/api-ms-win-downlevel-advapi32-l4-1-0.dll
sources/api-ms-win-downlevel-kernel32-l1-1-0.dll
sources/api-ms-win-downlevel-kernel32-l2-1-0.dll
sources/api-ms-win-downlevel-ole32-l1-1-0.dll
sources/api-ms-win-downlevel-ole32-l1-1-1.dll
sources/api-ms-win-downlevel-shlwapi-l1-1-0.dll
sources/api-ms-win-downlevel-shlwapi-l1-1-1.dll
sources/api-ms-win-downlevel-user32-l1-1-0.dll
sources/api-ms-win-downlevel-user32-l1-1-1.dll
sources/api-ms-win-downlevel-version-l1-1-0.dll
sources/appcompat.xsl
sources/appcompat_bidi.xsl
sources/appcompat_detailed_bidi_txt.xsl
sources/appcompat_detailed_txt.xsl
sources/appraiser.dll
sources/ARUNIMG.dll
sources/arunres.dll
sources/autorun.dll
sources/cmisetup.dll
sources/compatctrl.dll
sources/compatprovider.dll
sources/cryptosetup.dll
sources/diager.dll
sources/diagnostic.dll
sources/diagtrack.dll
sources/diagtrackrunner.exe
sources/dism.exe
sources/dismapi.dll
sources/dismcore.dll
sources/dismcoreps.dll
sources/dismprov.dll
sources/ext-ms-win-advapi32-encryptedfile-l1-1-0.dll
sources/folderprovider.dll
sources/hwcompat.dll
sources/hwcompat.txt
sources/hwexclude.txt
sources/idwbinfo.txt
sources/imagingprovider.dll
sources/inf/setup.cfg
sources/input.dll
sources/lang.ini
sources/locale.nls
sources/logprovider.dll
sources/MediaSetupUIMgr.dll
sources/ndiscompl.dll
sources/nlsbres.dll
sources/ntdsupg.dll
sources/offline.xml
sources/pnpibs.dll
sources/reagent.admx
sources/reagent.dll
sources/reagent.xml
sources/rollback.exe
sources/schema.dat
sources/segoeui.ttf
sources/setup.exe
sources/setupcompat.dll
sources/SetupCore.dll
sources/SetupHost.exe
sources/SetupMgr.dll
sources/SetupPlatform.cfg
sources/SetupPlatform.dll
sources/SetupPlatform.exe
sources/SetupPrep.exe
sources/SmiEngine.dll
sources/spflvrnt.dll
sources/spprgrss.dll
sources/spwizeng.dll
sources/spwizimg.dll
sources/spwizres.dll
sources/sqmapi.dll
sources/testplugin.dll
sources/unattend.dll
sources/unbcl.dll
sources/upgloader.dll
sources/upgrade_frmwrk.xml
sources/uxlib.dll
sources/uxlibres.dll
sources/vhdprovider.dll
sources/w32uiimg.dll
sources/w32uires.dll
sources/warning.gif
sources/wdsclient.dll
sources/wdsclientapi.dll
sources/wdscore.dll
sources/wdscsl.dll
sources/wdsimage.dll
sources/wdstptc.dll
sources/wdsutil.dll
sources/wimprovider.dll
sources/win32ui.dll
sources/WinDlp.dll
sources/winsetup.dll
sources/wpx.dll
sources/xmllite.dll
sources/..-.*/appraiser.dll.mui
sources/..-.*/arunres.dll.mui
sources/..-.*/cmisetup.dll.mui
sources/..-.*/compatctrl.dll.mui
sources/..-.*/compatprovider.dll.mui
sources/..-.*/dism.exe.mui
sources/..-.*/dismapi.dll.mui
sources/..-.*/dismcore.dll.mui
sources/..-.*/dismprov.dll.mui
sources/..-.*/folderprovider.dll.mui
sources/..-.*/imagingprovider.dll.mui
sources/..-.*/input.dll.mui
sources/..-.*/logprovider.dll.mui
sources/..-.*/MediaSetupUIMgr.dll.mui
sources/..-.*/nlsbres.dll.mui
sources/..-.*/pnpibs.dll.mui
sources/..-.*/reagent.adml
sources/..-.*/reagent.dll.mui
sources/..-.*/rollback.exe.mui
sources/..-.*/setup.exe.mui
sources/..-.*/setupcompat.dll.mui
sources/..-.*/SetupCore.dll.mui
sources/..-.*/setupplatform.exe.mui
sources/..-.*/SetupPrep.exe.mui
sources/..-.*/setup_help_upgrade_or_custom.rtf
sources/..-.*/smiengine.dll.mui
sources/..-.*/spwizres.dll.mui
sources/..-.*/upgloader.dll.mui
sources/..-.*/uxlibres.dll.mui
sources/..-.*/vhdprovider.dll.mui
sources/..-.*/vofflps.rtf
sources/..-.*/vofflps_server.rtf
sources/..-.*/w32uires.dll.mui
sources/..-.*/wdsclient.dll.mui
sources/..-.*/wdsimage.dll.mui
sources/..-.*/wimprovider.dll.mui
sources/..-.*/WinDlp.dll.mui
sources/..-.*/winsetup.dll.mui"

infoColor="\033[1;94m"
errorColor="\033[1;91m"
resetColor="\033[0m"

if [ "$1" == "-?" -o "$1" == "--help" -o "$1" == "-h" ]; then
  echo "Usage:"
  echo "$0 [compression] [uups_directory]"
  echo ""
  echo "Compression options:"
  echo "wim - standard compression"
  echo "esd - solid compression"
  exit
fi

if ! which cabextract >/dev/null \
|| ! which wimlib-imagex >/dev/null \
|| ! which chntpw >/dev/null \
|| ! which genisoimage >/dev/null; then
  echo "One of required applications is not installed."
  echo "The following applications need to be installed to use this script:"
  echo " - cabextract"
  echo " - wimlib-imagex"
  echo " - chntpw"
  echo " - genisoimage"
  echo ""
  echo "If you use Debian or Ubuntu you can install these using:"
  echo "sudo apt-get install cabextract wimtools chntpw genisoimage"
  exit 1
fi

if ! [ -z $1 ]; then
  type="$1"
else
  type="wim"
fi

if ! [ "$type" == "wim" -o "$type" == "esd" ]; then
  echo -e "$errorColor""Incorrect compression type.""$resetColor"
  echo "Possible options: wim, esd"
  exit 1
fi

if ! [ -z $2 ]; then
  uupDir="$2"
else
  uupDir="UUPs"
fi

if ! [ -d "$uupDir" ]; then
  echo -e "$errorColor""Specified directory containing UUP files does not exist!""$resetColor"
  exit 1
fi

if [ "$type" == "esd" ]; then
  compressParam="--solid"
else
  compressParam="--compress=maximum"
  type="wim"
fi

function cleanup() {
  rm -rf ISODIR
  rm -rf "$tempDir"
}

if [ -e ISODIR ]; then
  rm -rf ISODIR
fi

list=
for i in $editions; do
    list="$list -ie \"$i""_..-.*.esd\""
done

metadataFiles=$(find "$uupDir" 2>/dev/null | eval grep $list)
if [ $? != 0 ]; then
  echo -e "$errorColor""No metadata ESDs found.""$resetColor"
  exit 1
fi

list=

lang=$(echo "$metadataFiles" | grep _..-.*.esd | head -1 | sed 's/.*_//g;s/.esd//g')
metadataFiles=$(echo "$metadataFiles" | grep "$lang" | sort | uniq)
firstMetadata=$(echo "$metadataFiles" | head -1)

tempDir=`mktemp -d`
extractDir="$tempDir/extract"

echo -e "\033[1m$scriptName\033[0m"

for file in `find "$uupDir" -type f -name "*.cab"`; do
  fileName=`basename $file .cab`
  echo -e "$infoColor""CAB -> ESD:""$resetColor"" $fileName"

  mkdir "$extractDir"
  cabextract -d "$extractDir" "$file" >/dev/null 2>/dev/null
  if [ $? != 0 ]; then
    echo -e -e "$errorColor""Failed to extract $fileName.cab""$resetColor"
    cleanup
    exit 1
  fi

  wimlib-imagex capture "$extractDir" "$tempDir/$fileName.esd" >/dev/null
  if [ $? != 0 ]; then
    echo -e "$errorColor""Failed to create $fileName.esd""$resetColor"
    cleanup
    exit 1
  fi

  rm -rf "$extractDir"
done

fileName=
file=
extractDir=

export WIMLIB_IMAGEX_IGNORE_CASE=1
mkdir ISODIR

echo ""
echo -e "$infoColor""Creating ISO structure...""$resetColor"
wimlib-imagex apply "$firstMetadata" 1 ISODIR --no-acls 2>/dev/null
if [ $? != 0 ]; then
  echo -e "$errorColor""Failed to create ISO structure""$resetColor"
  cleanup
  exit 1
fi

echo ""
echo -e "$infoColor""Exporting winre.wim...""$resetColor"
wimlib-imagex export "$firstMetadata" 2 "$tempDir/winre.wim" --compress=maximum --boot
if [ $? != 0 ]; then
  echo -e "$errorColor""Failed to export winre.wim""$resetColor"
  cleanup
  exit 1
fi

echo ""
echo -e "$infoColor""Creating boot.wim...""$resetColor"
cp "$tempDir/winre.wim" ISODIR/sources/boot.wim
wimlib-imagex info ISODIR/sources/boot.wim 1 "Microsoft Windows PE" --image-property FLAGS=9 >/dev/null

wimlib-imagex extract ISODIR/sources/boot.wim 1 --dest-dir="$tempDir" "/Windows/System32/config/SOFTWARE" --no-acls >/dev/null
if [ $? != 0 ]; then
  echo -e "$errorColor""Failed to extract registry""$resetColor"
  cleanup
  exit 1
fi

echo -e "cd Microsoft\\Windows NT\\CurrentVersion\nnv 1 SystemRoot\ned SystemRoot\nX:\\\$Windows.~bt\\Windows\ncd WinPE\nnv 1 InstRoot\ned InstRoot\nX:\\\$Windows.~bt\nq\ny\n" | chntpw -e "$tempDir/SOFTWARE" >/dev/null
wimlib-imagex update ISODIR/sources/boot.wim 1 --command "add $tempDir/SOFTWARE /Windows/System32/config/SOFTWARE" >/dev/null
wimlib-imagex update ISODIR/sources/boot.wim 1 --command "delete /Windows/System32/winpeshl.ini" >/dev/null

wimlib-imagex export "$tempDir/winre.wim" 1 ISODIR/sources/boot.wim "Microsoft Windows Setup"
if [ $? != 0 ]; then
  echo -e "$errorColor""Failed to create second index of boot.wim""$resetColor"
  cleanup
  exit 1
fi

wimlib-imagex extract "$firstMetadata" 3 "/Windows/System32/xmllite.dll" --no-acls --dest-dir="ISODIR/sources" >/dev/null
wimlib-imagex info ISODIR/sources/boot.wim 2 --image-property FLAGS=2 >/dev/null
wimlib-imagex info ISODIR/sources/boot.wim 2 --boot >/dev/null

list=
for i in $bootSourcesList; do
    list="$list -oie \"$i\""
done

files=$(find ISODIR -regex ".*/sources/.*" | eval grep $list)
list=

echo "delete /Windows/System32/winpeshl.ini" >"$tempDir/update.txt"
echo "add ISODIR/setup.exe /setup.exe" >>"$tempDir/update.txt"
echo "add ISODIR/sources/background_cli.bmp /sources/background.bmp" >>"$tempDir/update.txt"
for i in $files; do
    echo "add ISODIR/$i /$i" >>"$tempDir/update.txt"
done

wimlib-imagex update ISODIR/sources/boot.wim 2 <"$tempDir/update.txt" >/dev/null
if [ $? != 0 ]; then
  echo -e "$errorColor""Failed add required files to second index of boot.wim""$resetColor"
  cleanup
  exit 1
fi

wimlib-imagex optimize ISODIR/sources/boot.wim
rm "ISODIR/sources/xmllite.dll"

echo ""
echo -e "$infoColor""Creating install.$type...""$resetColor"
for metadata in $metadataFiles; do
  metadataName=`basename $metadata .esd`
  echo -e "$infoColor""Exporting $metadataName...""$resetColor"
  wimlib-imagex export "$metadata" 3 ISODIR/sources/install.$type "$metadataName" $compressParam --ref="$uupDir/*.esd" --ref "$tempDir/*.esd"
  if [ $? != 0 ]; then
    echo -e "$errorColor""Failed export index to install.$type""$resetColor"
    cleanup
    exit 1
  fi

  echo ""
  echo -e "$infoColor""Adding winre.wim for $metadataName...""$resetColor"
  wimlib-imagex update ISODIR/sources/install.$type 1 --command "add $tempDir/winre.wim /Windows/System32/Recovery/winre.wim"
  echo ""
done

info=`wimlib-imagex info "$firstMetadata" 3`
major=`echo "$info" | grep -i "^Major Version:" | sed "s/.*  //g"`
minor=`echo "$info" | grep -i "^Minor Version:" | sed "s/.*  //g"`
build=`echo "$info" | grep -i "^Build:" | sed "s/.*  //g"`
spbuild=`echo "$info" | grep -i "^Service Pack Build:" | sed "s/.*  //g"`
label="$major.$minor.$build.$spbuild""_$lang"

echo -e "$infoColor""Creating ISO image...""$resetColor"
genisoimage -b "boot/etfsboot.com" --no-emul-boot --eltorito-alt-boot -e "efi/microsoft/boot/efisys.bin" --no-emul-boot --udf --hide "*" -V "$label" -o "$label.iso"  ISODIR
if [ $? != 0 ]; then
  echo -e "$errorColor""Failed to create ISO""$resetColor"
  cleanup
  exit 1
fi

cleanup
echo -e "\033[1;92mDone.""$resetColor"
