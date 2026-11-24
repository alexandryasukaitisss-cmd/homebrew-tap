cask "ambientdisplay" do
  version "0.1.0"
  sha256 "8bf423c3a187e852c5779f0c2367149ff8b88efcd266f92afdca1bde3ca78d30"

  url "https://github.com/alexandryasukaitisss-cmd/ambient-display-macos/releases/download/v#{version}/AmbientDisplay-#{version}-macos-arm64.zip"
  name "AmbientDisplay"
  desc "Webcam-based hardware DDC auto-brightness for external monitors on macOS via BetterDisplay"
  homepage "https://github.com/alexandryasukaitisss-cmd/ambient-display-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "AmbientDisplay.app"

  caveats <<~EOS
    AmbientDisplay requires BetterDisplay in /Applications/BetterDisplay.app with DDC enabled.
    Because AmbientDisplay is ad-hoc signed (not Apple-notarized), if Gatekeeper blocks launch run:
      xattr -dr com.apple.quarantine "/Applications/AmbientDisplay.app"
  EOS
end
