# Homebrew Tap

Official Homebrew Cask tap for native, local-first macOS apps built in Swift (macOS 14+ Apple Silicon).

## Install any app in one command

```sh
brew tap alexandryasukaitisss-cmd/tap
```

| Cask | App | Description | Install |
| --- | --- | --- | --- |
| `purrcore` | [PurrCore](https://github.com/alexandryasukaitisss-cmd/purrcore) | Menu bar CPU, RAM & per-core monitor with a running cat (0 idle wakeups) | `brew install --cask alexandryasukaitisss-cmd/tap/purrcore` |
| `cadence` | [Cadence](https://github.com/alexandryasukaitisss-cmd/cadence-macos) | Fast native Apple Music menu bar controller with lyrics & favorites | `brew install --cask alexandryasukaitisss-cmd/tap/cadence` |
| `worklight` | [WorkLight](https://github.com/alexandryasukaitisss-cmd/worklight-macos) | On-Air / Busy Light controller for Home Assistant RGB lamps + CoreAudio auto-busy | `brew install --cask alexandryasukaitisss-cmd/tap/worklight` |
| `ambientdisplay` | [AmbientDisplay](https://github.com/alexandryasukaitisss-cmd/ambient-display-macos) | Webcam-based hardware DDC auto-brightness for external monitors via BetterDisplay | `brew install --cask alexandryasukaitisss-cmd/tap/ambientdisplay` |
| `ha-pip-cam` | [HA PiP Cam](https://github.com/alexandryasukaitisss-cmd/ha-pip-cam-macos) | Floating Picture-in-Picture live camera viewer for go2rtc / HLS + Home Assistant sensors | `brew install --cask alexandryasukaitisss-cmd/tap/ha-pip-cam` |

> **Gatekeeper note:** Releases are ad-hoc signed rather than Apple-notarized. If macOS Gatekeeper blocks first launch, allow via **Right-click → Open** or clear quarantine:
> `xattr -dr com.apple.quarantine "/Applications/<AppName>.app"`

## License

MIT. See [LICENSE](LICENSE).
