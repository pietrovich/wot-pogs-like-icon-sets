# WoT PoGS-like Icon Sets

Ready-to-use PoGS-like icon sets for World of Tanks — re-packed game atlases and contour icons that can be dropped straight into the game directory.

Built with [pie-wot](https://github.com/pietrovich/wot-utils) cli from **WoT 2.3.0.0** resources and whatever data could 
be picked from Wargaming API. Updated periodically to follow game updates.

## What is this?

Icon sets are a type of WoT mod that replaces the default vehicle icons on the battle screen.

These are **not** the original PoGS icons — they are a replica built with a different toolset. 
A pixel-perfect match was not the goal, good enough is enough; this is the subset of varieties 
the author actually uses. 

Anyone is welcome to use them or open an issue to request a missing variety — no promises, 
but we'll see what can be done.

## Available Sets

| Directory              | Description                  |
|------------------------|------------------------------|
| `color-dmg-fsr-rld-vr` | DMG-FSR-RLD-VR Color         |
| `clear`                | Minimalistic "Clear" variety |

## How to Use

### Manual install

Copy the `flash` folder from the desired variety into your game directory:

```
{variety}/res_mods/version/gui/flash
  →
{game_directory}/res_mods/{version}/gui/flash
```

### Aslain's Mod Pack

Pack the `res_mods` folder contents into a **7-zip** archive and place it in:

```
{game_directory}/Aslain_Modpack/Custom_mods/
```

It will then be automatically re-installed on every modpack update. See the README in Custom_mods directory for more details on usage.

## Credits

PoGS icons were originally created and maintained by a community of authors. The forum where they were originally announced is gone, and not all names could be recovered. Known contributors:

- **Pogs**
- **Grepa**
- **Oxmaster**
- **Pavel Maca** — [github.com/pavelmaca/WoT-PogsIconSet](https://github.com/pavelmaca/WoT-PogsIconSet)
- **Vit4liy (Soloviyko)** — [github.com/Vit4liy/WoT-PogsIconSet](https://github.com/Vit4liy/WoT-PogsIconSet)

Apologies to anyone missed — open an issue or ping me and I'll add you to the credits.

---

GL, HF

[![wtfpl-badge-2.png](wtfpl-badge-2.png)](./LICENSE)
