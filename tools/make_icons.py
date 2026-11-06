"""Generates the PropCheck app icon and splash images (needs Pillow).

Run: python3 tools/make_icons.py
Writes Android mipmaps, the iOS AppIcon set, the iOS launch image and
assets/branding/icon_1024.png. Re-run after changing the design here.
"""
from pathlib import Path

from PIL import Image, ImageDraw

ROOT = Path(__file__).resolve().parent.parent
BRAND = (27, 110, 90)  # #1B6E5A, the app's seed colour
WHITE = (255, 255, 255)
ACCENT = (255, 196, 92)


def draw_mark(size, background=True, rounded=True):
    """House outline with a tick inside, on the brand colour."""
    s = size * 4  # supersample, then downscale for smooth edges
    img = Image.new("RGBA", (s, s), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    if background:
        if rounded:
            d.rounded_rectangle([0, 0, s - 1, s - 1], radius=int(s * 0.22), fill=BRAND)
        else:
            d.rectangle([0, 0, s - 1, s - 1], fill=BRAND)
    w = int(s * 0.055)
    # Roof and walls.
    roof = [(s * 0.20, s * 0.47), (s * 0.50, s * 0.22), (s * 0.80, s * 0.47)]
    d.line(roof, fill=WHITE, width=w, joint="curve")
    d.line([(s * 0.28, s * 0.42), (s * 0.28, s * 0.78), (s * 0.72, s * 0.78), (s * 0.72, s * 0.42)],
           fill=WHITE, width=w, joint="curve")
    # Tick.
    d.line([(s * 0.37, s * 0.58), (s * 0.47, s * 0.68), (s * 0.64, s * 0.49)],
           fill=ACCENT, width=int(w * 1.1), joint="curve")
    return img.resize((size, size), Image.LANCZOS)


def main():
    master = draw_mark(1024)
    branding = ROOT / "assets/branding"
    branding.mkdir(parents=True, exist_ok=True)
    master.save(branding / "icon_1024.png")

    android = ROOT / "android/app/src/main/res"
    for folder, px in {"mdpi": 48, "hdpi": 72, "xhdpi": 96, "xxhdpi": 144, "xxxhdpi": 192}.items():
        draw_mark(px).save(android / f"mipmap-{folder}/ic_launcher.png")
        # Splash mark: no background tile, sits on the brand-coloured window.
        draw_mark(px * 2, background=False).save(android / f"mipmap-{folder}/launch_mark.png")

    # iOS icons must be opaque squares; iOS applies the rounded mask.
    ios = ROOT / "ios/Runner/Assets.xcassets/AppIcon.appiconset"
    for f in ios.glob("*.png"):
        px = Image.open(f).size[0]
        draw_mark(px, rounded=False).convert("RGB").save(f)

    launch = ROOT / "ios/Runner/Assets.xcassets/LaunchImage.imageset"
    for name, px in {"LaunchImage.png": 96, "LaunchImage@2x.png": 192, "LaunchImage@3x.png": 288}.items():
        draw_mark(px, background=False).save(launch / name)
    print("icons written")


if __name__ == "__main__":
    main()
