echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Common Tree [1/5]'
# Sweet-Common Tree
git clone https://github.com/NutellaSimpDev/device_xiaomi_sm8250-common.git -b crdroid device/xiaomi/sm8250-common

echo 'Cloning Vendor tree [2/5]'
# Device Vendor Tree
git clone https://github.com/NutellaSimpDev/vendor_xiaomi_apollo.git -b crdroid vendor/xiaomi

echo 'Cloning Kernel tree [3/5]'
# Kernel Tree
git clone https://github.com/VoidUI-Devices/kernel_xiaomi_sm8250.git -b aosp-13 kernel/xiaomi/sm8250

echo 'Cloning Miuicamera [4/4]'
# Memecam
git clone https://gitlab.com/kamikaonashi/apollo-meme-cam.git vendor/xiaomi/apollo-miuicamera
echo 'Completed, Now proceeding to lunch'

echo 'Cloning ViperFX [5/5]'
# Kernel Tree
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git -b v4a packages/apps/ViPER4AndroidFX