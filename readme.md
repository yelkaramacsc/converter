UUP converter
-------------

### Description
A basic UUP converter aimed for Linux users who don't have access to any
Windows machine, but want or need to create an ISO image for latest Windows
Insider version downloaded from UUP dump.

For obvious reasons this script will never support integration of Cumulative
Updates to created images.

### Usage
```
./convert.sh [compression] [uups_directory]
```

###### Compression options:
 * wim - standard wim compression (`/Compress:max` in DISM)
 * esd - solid esd compression (`/Compress:recovery` in DISM)

### Usage examples
 * `./convert.sh` - starts the conversion using files from `UUPs` directory and
   creates an ISO image with `install.wim`

 * `./convert.sh esd` - starts the conversion using files from `UUPs` directory
   and creates an ISO image with `install.esd`

 * `./convert.sh wim MyUUP` - starts the conversion using files from `MyUUP`
   directory and creates an ISO image with `install.wim`

### Requirements
This script uses the following commands to do its work:
 * cabextract - to extract cabs
 * wimlib-imagex - to export files from metadata ESD
 * chntpw - to modify registry of first index of boot.wim
 * xorriso - to create ISO image

If you use Debian or Ubuntu based distribution you can quickly install these
using the following command:

```
sudo apt-get install cabextract wimtools chntpw xorriso
```

If you use any other distribution, then you will need to check its repository
for packages needed to run this script.
