# Volume Booster Magisk Module

## Descriptions
- Increases maximum audio volumes
- Patching \*mixer\*paths\*.xml files systemlessly

## Changelog

v1.0
- Support NoMount metamodule
- Resets module folders/files permissions at post-fs-data
- Move _uninstall.log to /data/adb/logs/

v0.9
- Fix wrong target in latest KernelSU

v0.8
- Improve /odm and /my_product support detection

v0.7
- Fix bug in uninstall.sh

v0.6
- Add RX8 Digital Volume & RX9 Digital Volume support

v0.5
- Fix conflict with modules_update while installing via recovery if Magisk installed

v0.4
- Redirect /sdcard to /data/media/"$UID"
- Add optional debug.log=1 for more detailed install log
- Kitsune Mask detection
- Restarts android.hardware.audio@4.0-service-mediatek

v0.3
- Add support ctl name RX0 Digital Volume until RX7 Digital Volume
- Move uninstall log to /data/media/0/..._uninstall.log

v0.2
- KernelSU support
- Adds new line RX* Digital Volume if it doesn't exist
- Creates /sdcard/optionals.prop file if it doesn't exist
- Magisk v26.1 support
- Save install log at /sdcard/..._recovery.log while installing via Recovery
- Save uninstall log in /data/adb/modules/..._uninstall.log

v0.1
- Initial release

## Requirements
Magisk or Kitsune Mask or KernelSU or Apatch installed

## Installation Guide & Download Link
- Install this module https://devuploads.com/6h6kmenwd3wh via Magisk app or Kitsune Mask app or KernelSU app or Apatch app or Recovery if Magisk or Kitsune Mask installed
- This is also an audio mod so, you need to install AML Magisk Module https://t.me/ryukinotes/34 if using any other else audio mod module
- Reboot

## Optionals
- https://t.me/ryukinotes/61
- Global: https://t.me/ryukinotes/35

## Troubleshootings
Global: https://t.me/ryukinotes/34

## Support & Bug Report
- https://t.me/ryukinotes/54
- If you don't do above, issues will be closed immediately

## Credits and Contributors
- https://t.me/viperatmos
- https://t.me/androidryukimodsdiscussions
- You can contribute ideas about this Magisk Module here: https://t.me/androidappsportdevelopment

## Sponsors
https://t.me/ryukinotes/25


