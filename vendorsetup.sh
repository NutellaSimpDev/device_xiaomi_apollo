echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Common Tree [1/3]'
# Sweet-Common Tree
git clone https://github.com/NutellaSimpDev/device_xiaomi_sm8250-common.git -b skyline device/xiaomi/sm8250-common

echo 'Cloning Vendor tree [2/3]'
# Device Vendor Tree
git clone https://github.com/NutellaSimpDev/vendor_xiaomi_apollo.git -b skyline vendor/xiaomi

echo 'Cloning Kernel tree [3/3]'
# Kernel Tree
git clone https://github.com/VoidUI-Devices/kernel_xiaomi_sm8250.git -b aosp-13 kernel/xiaomi/sm8250
echo 'Completed, Now proceeding to lunch'
