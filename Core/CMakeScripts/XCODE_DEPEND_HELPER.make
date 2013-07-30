# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# For each target create a dummy rule so the target does not have to exist
$(SRCROOT)/Core/Source/Core/Core/Debug/libcore.a:
$(SRCROOT)/Core/Externals/LZO/Debug/liblzo2.a:
$(SRCROOT)/Core/Source/Core/DiscIO/Debug/libdiscio.a:
$(SRCROOT)/Core/Externals/Bochs_disasm/Debug/libbdisasm.a:
$(SRCROOT)/Core/Source/Core/InputCommon/Debug/libinputcommon.a:
$(SRCROOT)/Core/Source/Core/Common/Debug/libcommon.a:
$(SRCROOT)/Core/Source/Core/AudioCommon/Debug/libaudiocommon.a:
$(SRCROOT)/Core/Externals/SFML/Debug/libsfml-network.a:
$(SRCROOT)/Core/Externals/SDL/Debug/libSDL.a:
$(SRCROOT)/Core/Externals/miniupnpc/Debug/libminiupnpc.a:
$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/Debug/libvideosoftware.a:
$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/Debug/libvideoogl.a:
$(SRCROOT)/Core/Source/Core/VideoCommon/Debug/libvideocommon.a:
$(SRCROOT)/Core/Externals/SOIL/Debug/libSOIL.a:
$(SRCROOT)/Core/Externals/GLew/Debug/libGLEW.a:
$(SRCROOT)/Core/Externals/soundtouch/Debug/libSoundTouch.a:
$(SRCROOT)/Core/Source/Core/Core/MinSizeRel/libcore.a:
$(SRCROOT)/Core/Externals/LZO/MinSizeRel/liblzo2.a:
$(SRCROOT)/Core/Source/Core/DiscIO/MinSizeRel/libdiscio.a:
$(SRCROOT)/Core/Externals/Bochs_disasm/MinSizeRel/libbdisasm.a:
$(SRCROOT)/Core/Source/Core/InputCommon/MinSizeRel/libinputcommon.a:
$(SRCROOT)/Core/Source/Core/Common/MinSizeRel/libcommon.a:
$(SRCROOT)/Core/Source/Core/AudioCommon/MinSizeRel/libaudiocommon.a:
$(SRCROOT)/Core/Externals/SFML/MinSizeRel/libsfml-network.a:
$(SRCROOT)/Core/Externals/SDL/MinSizeRel/libSDL.a:
$(SRCROOT)/Core/Externals/miniupnpc/MinSizeRel/libminiupnpc.a:
$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/MinSizeRel/libvideosoftware.a:
$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/MinSizeRel/libvideoogl.a:
$(SRCROOT)/Core/Source/Core/VideoCommon/MinSizeRel/libvideocommon.a:
$(SRCROOT)/Core/Externals/SOIL/MinSizeRel/libSOIL.a:
$(SRCROOT)/Core/Externals/GLew/MinSizeRel/libGLEW.a:
$(SRCROOT)/Core/Externals/soundtouch/MinSizeRel/libSoundTouch.a:
$(SRCROOT)/Core/Source/Core/Core/RelWithDebInfo/libcore.a:
$(SRCROOT)/Core/Externals/LZO/RelWithDebInfo/liblzo2.a:
$(SRCROOT)/Core/Source/Core/DiscIO/RelWithDebInfo/libdiscio.a:
$(SRCROOT)/Core/Externals/Bochs_disasm/RelWithDebInfo/libbdisasm.a:
$(SRCROOT)/Core/Source/Core/InputCommon/RelWithDebInfo/libinputcommon.a:
$(SRCROOT)/Core/Source/Core/Common/RelWithDebInfo/libcommon.a:
$(SRCROOT)/Core/Source/Core/AudioCommon/RelWithDebInfo/libaudiocommon.a:
$(SRCROOT)/Core/Externals/SFML/RelWithDebInfo/libsfml-network.a:
$(SRCROOT)/Core/Externals/SDL/RelWithDebInfo/libSDL.a:
$(SRCROOT)/Core/Externals/miniupnpc/RelWithDebInfo/libminiupnpc.a:
$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/RelWithDebInfo/libvideosoftware.a:
$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/RelWithDebInfo/libvideoogl.a:
$(SRCROOT)/Core/Source/Core/VideoCommon/RelWithDebInfo/libvideocommon.a:
$(SRCROOT)/Core/Externals/SOIL/RelWithDebInfo/libSOIL.a:
$(SRCROOT)/Core/Externals/GLew/RelWithDebInfo/libGLEW.a:
$(SRCROOT)/Core/Externals/soundtouch/RelWithDebInfo/libSoundTouch.a:
$(SRCROOT)/Core/Source/Core/Core/Release/libcore.a:
$(SRCROOT)/Core/Externals/LZO/Release/liblzo2.a:
$(SRCROOT)/Core/Source/Core/DiscIO/Release/libdiscio.a:
$(SRCROOT)/Core/Externals/Bochs_disasm/Release/libbdisasm.a:
$(SRCROOT)/Core/Source/Core/InputCommon/Release/libinputcommon.a:
$(SRCROOT)/Core/Source/Core/Common/Release/libcommon.a:
$(SRCROOT)/Core/Source/Core/AudioCommon/Release/libaudiocommon.a:
$(SRCROOT)/Core/Externals/SFML/Release/libsfml-network.a:
$(SRCROOT)/Core/Externals/SDL/Release/libSDL.a:
$(SRCROOT)/Core/Externals/miniupnpc/Release/libminiupnpc.a:
$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/Release/libvideosoftware.a:
$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/Release/libvideoogl.a:
$(SRCROOT)/Core/Source/Core/VideoCommon/Release/libvideocommon.a:
$(SRCROOT)/Core/Externals/SOIL/Release/libSOIL.a:
$(SRCROOT)/Core/Externals/GLew/Release/libGLEW.a:
$(SRCROOT)/Core/Externals/soundtouch/Release/libSoundTouch.a:


# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.bdisasm.Debug:
PostBuild.lzo2.Debug:
PostBuild.SoundTouch.Debug:
PostBuild.SDL.Debug:
PostBuild.sfml-network.Debug:
PostBuild.miniupnpc.Debug:
PostBuild.SOIL.Debug:
PostBuild.GLEW.Debug:
PostBuild.audiocommon.Debug:
PostBuild.common.Debug:
PostBuild.core.Debug:
PostBuild.discio.Debug:
PostBuild.Dolphin-nogui.Debug:
PostBuild.core.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.lzo2.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.discio.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.bdisasm.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.inputcommon.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.common.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.audiocommon.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.sfml-network.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SDL.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.miniupnpc.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videosoftware.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videoogl.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videocommon.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.core.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videosoftware.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videoogl.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videocommon.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.bdisasm.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.inputcommon.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.sfml-network.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SOIL.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.GLEW.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.common.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SoundTouch.Debug: $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
$(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui:\
	$(SRCROOT)/Core/Source/Core/Core/Debug/libcore.a\
	$(SRCROOT)/Core/Externals/LZO/Debug/liblzo2.a\
	$(SRCROOT)/Core/Source/Core/DiscIO/Debug/libdiscio.a\
	$(SRCROOT)/Core/Externals/Bochs_disasm/Debug/libbdisasm.a\
	$(SRCROOT)/Core/Source/Core/InputCommon/Debug/libinputcommon.a\
	$(SRCROOT)/Core/Source/Core/Common/Debug/libcommon.a\
	$(SRCROOT)/Core/Source/Core/AudioCommon/Debug/libaudiocommon.a\
	$(SRCROOT)/Core/Externals/SFML/Debug/libsfml-network.a\
	$(SRCROOT)/Core/Externals/SDL/Debug/libSDL.a\
	$(SRCROOT)/Core/Externals/miniupnpc/Debug/libminiupnpc.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/Debug/libvideosoftware.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/Debug/libvideoogl.a\
	$(SRCROOT)/Core/Source/Core/VideoCommon/Debug/libvideocommon.a\
	$(SRCROOT)/Core/Source/Core/Core/Debug/libcore.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/Debug/libvideosoftware.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/Debug/libvideoogl.a\
	$(SRCROOT)/Core/Source/Core/VideoCommon/Debug/libvideocommon.a\
	$(SRCROOT)/Core/Externals/Bochs_disasm/Debug/libbdisasm.a\
	$(SRCROOT)/Core/Source/Core/InputCommon/Debug/libinputcommon.a\
	$(SRCROOT)/Core/Externals/SFML/Debug/libsfml-network.a\
	$(SRCROOT)/Core/Externals/SOIL/Debug/libSOIL.a\
	$(SRCROOT)/Core/Externals/GLew/Debug/libGLEW.a\
	$(SRCROOT)/Core/Source/Core/Common/Debug/libcommon.a\
	$(SRCROOT)/Core/Externals/soundtouch/Debug/libSoundTouch.a
	/bin/rm -f $(SRCROOT)/Core/Binaries/Debug/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui


PostBuild.inputcommon.Debug:
PostBuild.videocommon.Debug:
PostBuild.videoogl.Debug:
PostBuild.videosoftware.Debug:
PostBuild.bdisasm.Release:
PostBuild.lzo2.Release:
PostBuild.SoundTouch.Release:
PostBuild.SDL.Release:
PostBuild.sfml-network.Release:
PostBuild.miniupnpc.Release:
PostBuild.SOIL.Release:
PostBuild.GLEW.Release:
PostBuild.audiocommon.Release:
PostBuild.common.Release:
PostBuild.core.Release:
PostBuild.discio.Release:
PostBuild.Dolphin-nogui.Release:
PostBuild.core.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.lzo2.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.discio.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.bdisasm.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.inputcommon.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.common.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.audiocommon.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.sfml-network.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SDL.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.miniupnpc.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videosoftware.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videoogl.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videocommon.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.core.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videosoftware.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videoogl.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videocommon.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.bdisasm.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.inputcommon.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.sfml-network.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SOIL.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.GLEW.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.common.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SoundTouch.Release: $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
$(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui:\
	$(SRCROOT)/Core/Source/Core/Core/Release/libcore.a\
	$(SRCROOT)/Core/Externals/LZO/Release/liblzo2.a\
	$(SRCROOT)/Core/Source/Core/DiscIO/Release/libdiscio.a\
	$(SRCROOT)/Core/Externals/Bochs_disasm/Release/libbdisasm.a\
	$(SRCROOT)/Core/Source/Core/InputCommon/Release/libinputcommon.a\
	$(SRCROOT)/Core/Source/Core/Common/Release/libcommon.a\
	$(SRCROOT)/Core/Source/Core/AudioCommon/Release/libaudiocommon.a\
	$(SRCROOT)/Core/Externals/SFML/Release/libsfml-network.a\
	$(SRCROOT)/Core/Externals/SDL/Release/libSDL.a\
	$(SRCROOT)/Core/Externals/miniupnpc/Release/libminiupnpc.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/Release/libvideosoftware.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/Release/libvideoogl.a\
	$(SRCROOT)/Core/Source/Core/VideoCommon/Release/libvideocommon.a\
	$(SRCROOT)/Core/Source/Core/Core/Release/libcore.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/Release/libvideosoftware.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/Release/libvideoogl.a\
	$(SRCROOT)/Core/Source/Core/VideoCommon/Release/libvideocommon.a\
	$(SRCROOT)/Core/Externals/Bochs_disasm/Release/libbdisasm.a\
	$(SRCROOT)/Core/Source/Core/InputCommon/Release/libinputcommon.a\
	$(SRCROOT)/Core/Externals/SFML/Release/libsfml-network.a\
	$(SRCROOT)/Core/Externals/SOIL/Release/libSOIL.a\
	$(SRCROOT)/Core/Externals/GLew/Release/libGLEW.a\
	$(SRCROOT)/Core/Source/Core/Common/Release/libcommon.a\
	$(SRCROOT)/Core/Externals/soundtouch/Release/libSoundTouch.a
	/bin/rm -f $(SRCROOT)/Core/Binaries/Release/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui


PostBuild.inputcommon.Release:
PostBuild.videocommon.Release:
PostBuild.videoogl.Release:
PostBuild.videosoftware.Release:
PostBuild.bdisasm.MinSizeRel:
PostBuild.lzo2.MinSizeRel:
PostBuild.SoundTouch.MinSizeRel:
PostBuild.SDL.MinSizeRel:
PostBuild.sfml-network.MinSizeRel:
PostBuild.miniupnpc.MinSizeRel:
PostBuild.SOIL.MinSizeRel:
PostBuild.GLEW.MinSizeRel:
PostBuild.audiocommon.MinSizeRel:
PostBuild.common.MinSizeRel:
PostBuild.core.MinSizeRel:
PostBuild.discio.MinSizeRel:
PostBuild.Dolphin-nogui.MinSizeRel:
PostBuild.core.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.lzo2.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.discio.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.bdisasm.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.inputcommon.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.common.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.audiocommon.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.sfml-network.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SDL.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.miniupnpc.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videosoftware.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videoogl.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videocommon.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.core.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videosoftware.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videoogl.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videocommon.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.bdisasm.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.inputcommon.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.sfml-network.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SOIL.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.GLEW.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.common.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SoundTouch.MinSizeRel: $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
$(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui:\
	$(SRCROOT)/Core/Source/Core/Core/MinSizeRel/libcore.a\
	$(SRCROOT)/Core/Externals/LZO/MinSizeRel/liblzo2.a\
	$(SRCROOT)/Core/Source/Core/DiscIO/MinSizeRel/libdiscio.a\
	$(SRCROOT)/Core/Externals/Bochs_disasm/MinSizeRel/libbdisasm.a\
	$(SRCROOT)/Core/Source/Core/InputCommon/MinSizeRel/libinputcommon.a\
	$(SRCROOT)/Core/Source/Core/Common/MinSizeRel/libcommon.a\
	$(SRCROOT)/Core/Source/Core/AudioCommon/MinSizeRel/libaudiocommon.a\
	$(SRCROOT)/Core/Externals/SFML/MinSizeRel/libsfml-network.a\
	$(SRCROOT)/Core/Externals/SDL/MinSizeRel/libSDL.a\
	$(SRCROOT)/Core/Externals/miniupnpc/MinSizeRel/libminiupnpc.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/MinSizeRel/libvideosoftware.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/MinSizeRel/libvideoogl.a\
	$(SRCROOT)/Core/Source/Core/VideoCommon/MinSizeRel/libvideocommon.a\
	$(SRCROOT)/Core/Source/Core/Core/MinSizeRel/libcore.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/MinSizeRel/libvideosoftware.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/MinSizeRel/libvideoogl.a\
	$(SRCROOT)/Core/Source/Core/VideoCommon/MinSizeRel/libvideocommon.a\
	$(SRCROOT)/Core/Externals/Bochs_disasm/MinSizeRel/libbdisasm.a\
	$(SRCROOT)/Core/Source/Core/InputCommon/MinSizeRel/libinputcommon.a\
	$(SRCROOT)/Core/Externals/SFML/MinSizeRel/libsfml-network.a\
	$(SRCROOT)/Core/Externals/SOIL/MinSizeRel/libSOIL.a\
	$(SRCROOT)/Core/Externals/GLew/MinSizeRel/libGLEW.a\
	$(SRCROOT)/Core/Source/Core/Common/MinSizeRel/libcommon.a\
	$(SRCROOT)/Core/Externals/soundtouch/MinSizeRel/libSoundTouch.a
	/bin/rm -f $(SRCROOT)/Core/Binaries/MinSizeRel/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui


PostBuild.inputcommon.MinSizeRel:
PostBuild.videocommon.MinSizeRel:
PostBuild.videoogl.MinSizeRel:
PostBuild.videosoftware.MinSizeRel:
PostBuild.bdisasm.RelWithDebInfo:
PostBuild.lzo2.RelWithDebInfo:
PostBuild.SoundTouch.RelWithDebInfo:
PostBuild.SDL.RelWithDebInfo:
PostBuild.sfml-network.RelWithDebInfo:
PostBuild.miniupnpc.RelWithDebInfo:
PostBuild.SOIL.RelWithDebInfo:
PostBuild.GLEW.RelWithDebInfo:
PostBuild.audiocommon.RelWithDebInfo:
PostBuild.common.RelWithDebInfo:
PostBuild.core.RelWithDebInfo:
PostBuild.discio.RelWithDebInfo:
PostBuild.Dolphin-nogui.RelWithDebInfo:
PostBuild.core.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.lzo2.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.discio.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.bdisasm.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.inputcommon.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.common.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.audiocommon.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.sfml-network.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SDL.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.miniupnpc.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videosoftware.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videoogl.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videocommon.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.core.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videosoftware.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videoogl.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.videocommon.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.bdisasm.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.inputcommon.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.sfml-network.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SOIL.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.GLEW.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.common.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
PostBuild.SoundTouch.RelWithDebInfo: $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui
$(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui:\
	$(SRCROOT)/Core/Source/Core/Core/RelWithDebInfo/libcore.a\
	$(SRCROOT)/Core/Externals/LZO/RelWithDebInfo/liblzo2.a\
	$(SRCROOT)/Core/Source/Core/DiscIO/RelWithDebInfo/libdiscio.a\
	$(SRCROOT)/Core/Externals/Bochs_disasm/RelWithDebInfo/libbdisasm.a\
	$(SRCROOT)/Core/Source/Core/InputCommon/RelWithDebInfo/libinputcommon.a\
	$(SRCROOT)/Core/Source/Core/Common/RelWithDebInfo/libcommon.a\
	$(SRCROOT)/Core/Source/Core/AudioCommon/RelWithDebInfo/libaudiocommon.a\
	$(SRCROOT)/Core/Externals/SFML/RelWithDebInfo/libsfml-network.a\
	$(SRCROOT)/Core/Externals/SDL/RelWithDebInfo/libSDL.a\
	$(SRCROOT)/Core/Externals/miniupnpc/RelWithDebInfo/libminiupnpc.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/RelWithDebInfo/libvideosoftware.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/RelWithDebInfo/libvideoogl.a\
	$(SRCROOT)/Core/Source/Core/VideoCommon/RelWithDebInfo/libvideocommon.a\
	$(SRCROOT)/Core/Source/Core/Core/RelWithDebInfo/libcore.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoSoftware/RelWithDebInfo/libvideosoftware.a\
	$(SRCROOT)/Core/Source/Plugins/Plugin_VideoOGL/RelWithDebInfo/libvideoogl.a\
	$(SRCROOT)/Core/Source/Core/VideoCommon/RelWithDebInfo/libvideocommon.a\
	$(SRCROOT)/Core/Externals/Bochs_disasm/RelWithDebInfo/libbdisasm.a\
	$(SRCROOT)/Core/Source/Core/InputCommon/RelWithDebInfo/libinputcommon.a\
	$(SRCROOT)/Core/Externals/SFML/RelWithDebInfo/libsfml-network.a\
	$(SRCROOT)/Core/Externals/SOIL/RelWithDebInfo/libSOIL.a\
	$(SRCROOT)/Core/Externals/GLew/RelWithDebInfo/libGLEW.a\
	$(SRCROOT)/Core/Source/Core/Common/RelWithDebInfo/libcommon.a\
	$(SRCROOT)/Core/Externals/soundtouch/RelWithDebInfo/libSoundTouch.a
	/bin/rm -f $(SRCROOT)/Core/Binaries/RelWithDebInfo/Dolphin-nogui.app/Contents/MacOS/Dolphin-nogui


PostBuild.inputcommon.RelWithDebInfo:
PostBuild.videocommon.RelWithDebInfo:
PostBuild.videoogl.RelWithDebInfo:
PostBuild.videosoftware.RelWithDebInfo:
