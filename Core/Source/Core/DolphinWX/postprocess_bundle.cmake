
			include(BundleUtilities)
			message("Fixing up application bundle: /Users/loic/Desktop/dolphin-emu/Binaries/Dolphin.app")
			set(BU_CHMOD_BUNDLE_ITEMS ON)
			fixup_bundle("/Users/loic/Desktop/dolphin-emu/Binaries/Dolphin.app" "" "")
			