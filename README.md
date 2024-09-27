# Opencore EFI for GMK M5 Plus Hackintosh macOS


## Specifications:
- CPU: AMD Ryzen 7 5825U
- MEM: 16GB/32GB
- GPU: Radeon Vega 8
- WIFI: Intel AX210
- SSD: 2T
- NIC: 2.5G RTL8125Ethernet X 2

## Tested OS:
Monterey 12.7.6

## Current Status:
| **Feature**      | **Status**            | **Note**                  |
|------------------|-----------------------|---------------------------|
| CPU Performance  | ✅                    |
| Graphics Accel.  | ✅                    |
| Hardware Decode  | ❌                    | wait for Nootedred  
| Sleep/Wake       | ✅                    |
| USB Ports        | ✅                    |
| Wired Ethernet   | ✅                    |
| Headphone jack   | ✅                    |
| HDMI Audio       | ✅                    |
| HDMI Video       | ✅                    |
| DP               | ❌                    | 
| Audio            | ✅                    |
| WIFI             | ✅                    |
| Bluetooth        | ✅                    |
| Shutdown/Restart | ✅                    |

Note: DP port works only if hdmi plugged in and boot finished. It seems to be a Nootedred issue.

## Tips:
1. Default bios settings will work.
2. You can choose SMCAMDProcessor.kext instead of SMCProcessorAMD.kext, but SMCProcessorAMD is more stable and simple.
3. Chrome fix by running `open /Applications/Chrome.app --args --disable-gpu`, and in `chrome://flags`, disable `#enable-gpu-rasterization` and choose opengl `#use-angle` flags. And chrome seems usable.
4. Use GLFriend app to open chrome like apps is another option.
5. Virtualization you can use Parallels 13.1, need `SYSTEM_VERSION_COMPAT=1` environment variable. You can use [this launcher](https://github.com/mikigal/ryzen-hackintosh/blob/master/Resources/Parallels%20Desktop%20Launcher.app.zip).
6. Adobe software like Photoshop has intel_fast_memset issue, you can fix it by running [adobe_patch](https://github.com/mikigal/ryzen-hackintosh/blob/master/Resources/adobe_patch.sh). Older versions of Adobe software (e. g. up to 22.3.1 for Photoshop) need it's [legacy version](https://github.com/mikigal/ryzen-hackintosh/blob/master/Resources/adobe_patch_legacy.sh). For details about Adobe patching check thead on [macos86.it](https://www.macos86.it/topic/4822-photoshop-after-effects-cc-2021-premiere-pro-cc-2021-154-amd-hackintosh-fix/).
7. Some applications for macOS use MKL - Math Kernel Library. Unfortunately, it does not work on AMD CPUs natively - we need to patch it with [this script](https://github.com/mikigal/ryzen-hackintosh/blob/master/Resources/ryzen_patch.sh).
8. Fix sleep follow [opencore guide](https://dortania.github.io/OpenCore-Post-Install/universal/sleep.html)
   Mainly run: 
```
sudo pmset autopoweroff 0
sudo pmset powernap 0
sudo pmset standby 0
sudo pmset proximitywake 0
sudo pmset tcpkeepalive 0
```

## Credits
* Credit to [ChefKiss](https://github.com/ChefKissInc/NootedRed) for NootedRed and Guide.
* Credit to [mikigal](https://github.com/mikigal/ryzen-hackintosh) for ryzen-hackintosh.
* Credit to [Acidanthera](https://github.com/acidanthera) for all the wonderful job.
