# TWRP INFINIX X688B
TWRP tree for Infinix Hot 11 Play

1.Getting Started
---------------
**Initialize local repo**
```
mkdir twrp-11
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11
```
**Sync up with this command:**
```bash
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
```

2.Preparing device for building
---------------
**Clone this repo**
```bash
git clone https://github.com/NeonzDump/twrp_infinix_X688B.git -b 11 device/infinix/X688B
```

3.Build
---------------
**Set up environment**
```bash
. build/envsetup.sh
```
**Build the recovery**
```bash
lunch twrp_X688B-eng
mka recoveryimage
```

* If also that is successful, congratulation!
* Go to `out/target/product/X688B/` and you will find your recovery.img
