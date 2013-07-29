
			file(INSTALL /Users/loic/Desktop/dolphin-emu/Data/Sys /Users/loic/Desktop/dolphin-emu/Data/User
				DESTINATION /Users/loic/Desktop/dolphin-emu/Binaries/Dolphin.app/Contents/Resources
				)
			file(GLOB TRANSLATION_FILES RELATIVE /Users/loic/Desktop/dolphin-emu
				/Users/loic/Desktop/dolphin-emu/*.gmo
				)
			foreach(TRANSLATION_FILE ${TRANSLATION_FILES})
				string(REPLACE ".gmo" ".lproj" TRANSLATION_DIR
					${TRANSLATION_FILE}
					)
				# It would be better to copy to the new name as a single action,
				# but I can't figure out a way to let CMake do that.
				file(COPY /Users/loic/Desktop/dolphin-emu/${TRANSLATION_FILE}
					DESTINATION /Users/loic/Desktop/dolphin-emu/Binaries/Dolphin.app/Contents/Resources/${TRANSLATION_DIR}
					NO_SOURCE_PERMISSIONS
					)
				file(RENAME
					/Users/loic/Desktop/dolphin-emu/Binaries/Dolphin.app/Contents/Resources/${TRANSLATION_DIR}/${TRANSLATION_FILE}
					/Users/loic/Desktop/dolphin-emu/Binaries/Dolphin.app/Contents/Resources/${TRANSLATION_DIR}/dolphin-emu.mo
					)
			endforeach(TRANSLATION_FILE)
			