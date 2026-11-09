# Piano Coach

A piano teaching web app for iPad Safari. It listens through the microphone, checks the notes and chords you play, and walks you through drills for single notes, scales, chords, melodies and two hands together. A projector view lights up the keys to play on a real keyboard.

- `app.html` is the source (page content, styles and script).
- `build.sh` wraps it into `index.html`, which GitHub Pages serves.

Edit `app.html`, run `./build.sh`, and commit both files.

## Song files

Songs you add with "Add a song file…" are kept on that device only, not in this public repository. A song file is JSON:

```json
{"title":"My Song","desc":"Short tip","hands":"B","bpm":80,
 "steps":["L:A2 R:A4 @Am ~2", "R:C5", "R:E5 ~1.5", "L:E2 R:G#4,B4 @E ~2"]}
```

Each step is played together: `L:`/`R:` hand, comma-separated notes, `@` chord label, `~` length in beats (default 1).
