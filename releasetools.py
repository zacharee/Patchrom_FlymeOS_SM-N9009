import common
import edify_generator

def MountSystem(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "format(" in edify.script[i] and "/dev/block/platform/msm_sdcc.1/by-name/system" in edify.script[i]:
            edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "/system", "");'
            return

def DeleteSystem(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "mount(" in edify.script[i] and "/system" in edify.script[i]:
            edify.script[i] = 'delete_recursive("/system");'
            return

def InstallSuperSU(info):
    bo1318 = info.input_zip.read("META/UPDATE-SuperSU.zip")
    common.ZipWriteStr(info.output_zip, "SuperSU/UPDATE-SuperSU.zip", bo1318)

def FlashSUperSU(info):
    info.script.AppendExtra(('ui_print("flash Supersu...");'))
    info.script.AppendExtra(('package_extract_dir("SuperSU", "/tmp/supersu");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "unzip", "/tmp/supersu/UPDATE-SuperSU.zip", "META-INF/com/google/android/*", "-d", "/tmp/supersu");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "sh", "/tmp/supersu/META-INF/com/google/android/update-binary", "dummy", "1", "/tmp/supersu/UPDATE-SuperSU.zip");'))

def InstallDolby(info):
    bo1318 = info.input_zip.read("META/Dolby.zip")
    common.ZipWriteStr(info.output_zip, "Dolby/Dolby.zip", bo1318)

def FlashDolby(info):
    info.script.AppendExtra(('ui_print("Flash Dolby Audio...");'))
    info.script.AppendExtra(('package_extract_dir("Dolby", "/tmp/Dolby");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "unzip", "/tmp/Dolby/Dolby.zip", "META-INF/com/google/android/*", "-d", "/tmp/Dolby");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "sh", "/tmp/Dolby/META-INF/com/google/android/update-binary", "dummy", "1", "/tmp/Dolby/Dolby.zip");'))

def FullOTA_InstallEnd(info):
    DeleteSystem(info)
    MountSystem(info)
    InstallSuperSU(info)
    FlashSUperSU(info)
    InstallDolby(info)
    FlashDolby(info)
