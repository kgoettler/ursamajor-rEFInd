![](screenshot.png)

A clean theme for the [rEFInd UEFI Boot Manager](http://www.rodsbooks.com/refind/)
based on the Ursa Major colorscheme.

Icons are included for a variety of Linux distributions, as well as macOS and 
Windows.

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

## Configuration

By default, rEFInd will create entries for any `.efi` files found in the EFI
directory on your boot volume. 

You can exclude certain directories containing `.efi` files by passing them
to the `dont_scan_dirs` token of the `refind.conf` file:

```bash
# Exclude any .efi files found in /EFI/BOOT and /EFI/old
dont_scan_dirs /EFI/BOOT,/EFI/old
```

You can also exclude specific `.efi` files themselves by passing them to the 
`dont_scan_files` token of the `refind.conf` file:

```bash
# Exclude /EFI/ubuntu/mmx64.efi and any .efi file named shimx64.efi
dont_scan_files /EFI/ubuntu/mmx64.efi,shimx64.efi
```

You can also change the icon used for a particular `.efi` file by placing a
`.png` file of the same name in the directory with it:

```bash
$ ls /boot/EFI/BOOT

BOOTX64.EFI BOOTX64.PNG
```

## Additional Information

Additional information about configuring rEFInd may be found [here](http://www.rodsbooks.com/refind/configfile.html).
