![](screenshot.png)

A clean theme for the [rEFInd UEFI Boot Manager](http://www.rodsbooks.com/refind/)
based on the Ursa Major colorscheme.

## Installation

1. Find the rEFInd directory on your boot volume. For me, it's `/boot/EFI/refind`.
   (Note: you will likely need to do this as root)

2. Clone this repository to the `themes` directory inside the rEFInd directory.

```bash
cd /boot/EFI/refind
mkdir themes
cd themes
git clone https://github.com/kgoettler/ursamajor-rEFInd.git
```

3. Add the following line to the bottom of the `refind.conf` file in the 
   rEFInd directory

```bash
include themes/ursamajor-rEFInd/theme.conf
```

Icons are included for a variety of Linux distributions, as well as macOS and 
Windows.
