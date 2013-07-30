
			include(BundleUtilities)
			message("Fixing up application bundle: /Users/chris/Desktop/OpenEmu-DolphinDev/Dolphin-Core/Core/Binaries/Dolphin-nogui.app")
			set(BU_CHMOD_BUNDLE_ITEMS ON)
			fixup_bundle("/Users/chris/Desktop/OpenEmu-DolphinDev/Dolphin-Core/Core/Binaries/Dolphin-nogui.app" "" "")
			