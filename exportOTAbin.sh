echo "compressing..."
python ./lzss.py --encode /Users/sverreknutsen/Library/Arduino15/RemoteSketchbook/ArduinoCloud/380a5e2c-4626-41a3-a960-d2a047870242/BalconyWatering_jun18a/build/esp32.esp32.esp32doit-devkit-v1/BalconyWatering_jun18a.ino.bin ./OTA_bin/firmware.lzss
echo "creating ota bin..."
python ./bin2ota.py ESP32 ./OTA_bin/firmware.lzss ./OTA_bin/firmware.ota
echo "push to git repo for webb access..."
git add -u
git commit -m "new firmware"
git push