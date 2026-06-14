define rsync_filtered
	rsync -a --include='*.png' --include='*.dds' --include='*.xml' --include='*/' --exclude='*' $(1) $(2)
endef

.PHONY: build
build: ./out/color

./out/color:
	@npm run build -- --game-dir /mnt/hgfs/wot/res

.PHONY: clean
clean:
	@rm -rf ./out/.atlases
	@rm -rf ./out/color
	@rm -rf ./out/clear

.PHONY: dist
dist: build
	@$(call rsync_filtered,./out/clear/res_mods/,./clear/res_mods/)
	@$(call rsync_filtered,./out/color/res_mods/,./color-dmg-fsr-rld-vr/res_mods/)
	echo "Icons were built and distributed into corresponding directories"
