
			include(BundleUtilities)
			message("Fixing up application bundle: $(SRCROOT)/Core/Binaries/Dolphin-nogui.app")
			set(BU_CHMOD_BUNDLE_ITEMS ON)
			fixup_bundle("$(SRCROOT)/Core/Binaries/Dolphin-nogui.app" "" "")
			