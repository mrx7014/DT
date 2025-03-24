ui_print "*******************************"
ui_print "*      DT - Device Tweaker    *"
ui_print "* Applying Performance Tweaks *"
ui_print "*******************************"
sleep 1
ui_print "- Optimizing boot time... 🚀"
sleep 1
ui_print "- Enhancing responsiveness & speed... ⚡"
sleep 1
ui_print "- Stabilizing FPS for smoother performance... 🎮"
sleep 1
ui_print "- Disabling data collection & tracking... 🔒"
sleep 1
ui_print "- Accelerating app launch & freeing RAM... 🏎️"
sleep 1
ui_print "- Extending battery life without performance drop... 🔋"
sleep 1
ui_print "- Switching rendering driver to Vulkan for better graphics... 🎨"
sleep 1
ui_print "- Improving RAM management for efficiency... 🧠"
sleep 1
ui_print "- Disabling unnecessary Google Mobile Services (GMS)... 📉"
sleep 1
ui_print "- Enabling aggressive RAM killer (Prop tweak)... 🗑️"
sleep 1
ui_print "- Stopping unnecessary log sending... 🚫"
sleep 1
ui_print "- Enabling hardware acceleration for smoother graphics... 🖥️"
sleep 1
ui_print "- Adding Vulkan X6739 properties... 🔧"
sleep 1
ui_print "- Updating Vulkan version to 1.3... 🆕"
sleep 1
ui_print "- Now start YAKT script 📃"
# shellcheck disable=SC2148
# shellcheck disable=SC2034
SKIPUNZIP=1
RM_RF() {
rm /sdcard/Documents/yakt/yakt.log 2>/dev/null
rm /sdcard/yakt.log 2>/dev/null
rm /sdcard/yakt/yakt.txt 2>/dev/null
rm "${MODPATH}/yakt.log" 2>/dev/null
rm "${MODPATH}/yakt-logging-error.log" 2>/dev/null
rm "${MODPATH}/LICENSE" 2>/dev/null
rm "${MODPATH}/README.md" 2>/dev/null
}
SET_PERMISSION() {
ui_print "- Setting Permissions"
set_perm_recursive "$MODPATH" 0 0 0755 0644
set_perm_recursive "${MODPATH}/yakt.sh" 0 0 0755 0700
}
MOD_EXTRACT() {
ui_print "- Extracting Module Files"
unzip -o "$ZIPFILE" yakt.sh -d "$MODPATH" >&2
unzip -o "$ZIPFILE" service.sh -d "$MODPATH" >&2
unzip -o "$ZIPFILE" module.prop -d "$MODPATH" >&2
}
MOD_PRINT() {
ui_print "- YAKT"
ui_print "- Installing"
}
set -x
RM_RF
MOD_PRINT
MOD_EXTRACT
SET_PERMISSION
sleep 4
ui_print "✅ Tweaks Applied Successfully!"
sleep 2
ui_print "📢 Join our Telegram channel for updates: ➡️ https://t.me/mrx7014cloud"
sleep 4