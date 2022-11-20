# Present Posture
## An extremely oversimplified posture check notification program written in Go!
![preview](screenshots/preview.png)

## Usage
```
present-posture --interval <interval until next notification, in seconds (default is 900)>
```

For more detailed usage:
```
present-posture -h
```

## How I use it
I personally use i3 and dunst, so this is how I use the program.
I have an executable script like this:
```bash
# Kill all previous sessions that might be running
pkill present-posture
# Start a new session that sends a notification every 10 minutes.
present-posture --interval 600
```

In my i3 config, I reference the script to run on start/reload.

## Notes
- This is a completely personal project that is not 100% guaranteed to be the best solution to the problem (or a safe one at that!).
- This is my first experience with Go, so it might show.
- I've only tested this with Arch Linux, running i3-gaps and dunst.

## Dependencies
- The makefile is made specifically for a Linux system, so that's technically needed. It can be modified for other systems, though.
- Go (to be able to use `go build` in the makefile).
- A notification manager like `dunst`.
- `libnotify` (this comes with the `notify-send` command). On Arch Linux, run `sudo pacman -S libnotify`.

## Installation
- `git clone https://github.com/mattishere/Present-Posture.git && cd Present-Posture`
- `make install` (note: you may have to run this as root)

## Uninstallation
- Go into the cloned repository directory
- Run `make uninstall` (note: you may have to run this as root)

*that's it!*