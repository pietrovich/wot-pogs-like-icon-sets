define rsync_filtered
	rsync -a --include='*.png' --include='*.dds' --include='*.xml' --include='*/' --exclude='*' $(1) $(2)
endef

.PHONY: build
build: ./out/color-DMG-RLD-FSR-VR

./out/color-DMG-RLD-FSR-VR:
# `/mnt/hgfs/wot` is how my windows installation of WoT is mounted inside Linux VM i use to build icons.
# adjust path according to your setup (whatever you have, WSL2 or a `make` installed into native windows git-bash)
	@npm run build -- --fresh --game-dir /mnt/hgfs/wot/res

.PHONY: clean
clean:
	@rm -rf ./out/.atlases
	@rm -rf ./out/.release
	@rm -rf ./out/clear-DMG-RLD-FSR-VR
	@rm -rf ./out/clear-simple
	@rm -rf ./out/color-DMG-RLD-FSR-VR
	@rm -rf ./out/color-simple

.PHONY: dist
dist: build
	@mkdir -p ./PogS-clear-simple/res_mods
	@mkdir -p ./PogS-clear-DMG-RLD-FSR-VR/res_mods
	@mkdir -p ./PogS-color-simple/res_mods
	@mkdir -p ./PogS-color-DMG-RLD-FSR-VR/res_mods
	@$(call rsync_filtered,./out/clear-simple/res_mods/,./PogS-clear-simple/res_mods/)
	@$(call rsync_filtered,./out/color-simple/res_mods/,./PogS-color-simple/res_mods/)
	@$(call rsync_filtered,./out/clear-DMG-RLD-FSR-VR/res_mods/,./PogS-clear-DMG-RLD-FSR-VR/res_mods/)
	@$(call rsync_filtered,./out/color-DMG-RLD-FSR-VR/res_mods/,./PogS-color-DMG-RLD-FSR-VR/res_mods/)
	echo "Icons were built and distributed into corresponding directories"

.PHONY: release
release: build
	@cd ./out/clear-simple && zip -r -X -0 ../../release/PogS-clear-simple.zip res_mods
	@cd ./out/color-simple && zip -r -X -0 ../../release/PogS-color-simple.zip res_mods
	@cd ./out/clear-DMG-RLD-FSR-VR && zip -r -X -0 ../../release/PogS-clear-DMG-RLD-FSR-VR.zip res_mods
	@cd ./out/color-DMG-RLD-FSR-VR && zip -r -X -0 ../../release/PogS-color-DMG-RLD-FSR-VR.zip res_mods
	echo "Release archives were created in ./release"
