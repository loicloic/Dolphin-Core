
			file(INSTALL /Users/chris/Desktop/OpenEmu-DolphinDev/Dolphin-Core/Core/Data/Sys /Users/chris/Desktop/OpenEmu-DolphinDev/Dolphin-Core/Core/Data/User
				DESTINATION /Users/chris/Desktop/OpenEmu-DolphinDev/Dolphin-Core/Core/Binaries/Dolphin-nogui.app/Contents/Resources
				)
			file(GLOB TRANSLATION_FILES RELATIVE /Users/chris/Desktop/OpenEmu-DolphinDev/Dolphin-Core/Core
				/Users/chris/Desktop/OpenEmu-DolphinDev/Dolphin-Core/Core/*.gmo
				)
			foreach(TRANSLATION_FILE ${TRANSLATION_FILES})
				string(REPLACE ".gmo" ".lproj" TRANSLATION_DIR
					${TRANSLATION_FILE}
					)
				# It would be better to copy to the new name as a single action,
				# but I can't figure out a way to let CMake do that.
				file(COPY /Users/chris/Desktop/OpenEmu-DolphinDev/Dolphin-Core/Core/${TRANSLATION_FILE}
					DESTINATION /Users/chris/Desktop/OpenEmu-DolphinDev/Dolphin-Core/Core/Binaries/Dolphin-nogui.app/Contents/Resources/${TRANSLATION_DIR}
					NO_SOURCE_PERMISSIONS
					)
				file(RENAME
					/Users/chris/Desktop/OpenEmu-DolphinDev/Dolphin-Core/Core/Binaries/Dolphin-nogui.app/Contents/Resources/${TRANSLATION_DIR}/${TRANSLATION_FILE}
					/Users/chris/Desktop/OpenEmu-DolphinDev/Dolphin-Core/Core/Binaries/Dolphin-nogui.app/Contents/Resources/${TRANSLATION_DIR}/dolphin-emu.mo
					)
			endforeach(TRANSLATION_FILE)
			