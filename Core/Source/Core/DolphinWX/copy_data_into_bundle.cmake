
			file(INSTALL $(SRCROOT)/Core/Data/Sys $(SRCROOT)/Core/Data/User
				DESTINATION $(SRCROOT)/Core/Binaries/Dolphin-nogui.app/Contents/Resources
				)
			file(GLOB TRANSLATION_FILES RELATIVE $(SRCROOT)/Core
				$(SRCROOT)/Core/*.gmo
				)
			foreach(TRANSLATION_FILE ${TRANSLATION_FILES})
				string(REPLACE ".gmo" ".lproj" TRANSLATION_DIR
					${TRANSLATION_FILE}
					)
				# It would be better to copy to the new name as a single action,
				# but I can't figure out a way to let CMake do that.
				file(COPY $(SRCROOT)/Core/${TRANSLATION_FILE}
					DESTINATION $(SRCROOT)/Core/Binaries/Dolphin-nogui.app/Contents/Resources/${TRANSLATION_DIR}
					NO_SOURCE_PERMISSIONS
					)
				file(RENAME
					$(SRCROOT)/Core/Binaries/Dolphin-nogui.app/Contents/Resources/${TRANSLATION_DIR}/${TRANSLATION_FILE}
					$(SRCROOT)/Core/Binaries/Dolphin-nogui.app/Contents/Resources/${TRANSLATION_DIR}/dolphin-emu.mo
					)
			endforeach(TRANSLATION_FILE)
			