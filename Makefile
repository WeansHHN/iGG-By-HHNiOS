export THEOS=/home/weans/theos

ARCHS = arm64 
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

include $(THEOS)/makefiles/common.mk


TWEAK_NAME = pumenuigg

pumenuigg_LDFLAGS += JRMemory.framework/JRMemory
pumenuigg_FRAMEWORKS =  UIKit Foundation Security QuartzCore CoreTelephony AVFoundation AudioToolbox CoreGraphics CoreText Accelerate GLKit SystemConfiguration GameController 


pumenuigg_EXTRA_FRAMEWORKS += JRMemory
pumenuigg_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
pumenuigg_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value
pumenuigg_FILES = hhnios.mm 


include $(THEOS_MAKE_PATH)/tweak.mk




