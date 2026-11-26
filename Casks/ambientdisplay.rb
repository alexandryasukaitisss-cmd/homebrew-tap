cask "ambientdisplay" do
  version "0.2.0"
  sha256 "5580498dcc0325f099ba2bf48554908a7cb105b34c1e604c96ebc7b846a9e733"

  url "https://github.com/alexandryasukaitisss-cmd/ambient-display-macos/releases/download/v#{version}/AmbientDisplay-#{version}-macos-arm64.zip"
  name "AmbientDisplay"
  desc "Webcam-based hardware DDC auto-brightness for external monitors on macOS via BetterDisplay"
  homepage "https://github.com/alexandryasukaitisss-cmd/ambient-display-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "AmbientDisplay.app"

  caveats <<~EOS
    AmbientDisplay requires BetterDisplay in /Applications/BetterDisplay.app with DDC enabled.
    AmbientDisplay is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/AmbientDisplay.app"
  EOS
end
