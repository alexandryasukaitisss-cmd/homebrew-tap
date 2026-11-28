cask "ambientdisplay" do
  version "0.2.3"
  sha256 "f6bef83af257bf40a47fef8880a3cef5bb92a10dc97e9d5de681c59c6335d13d"

  url "https://github.com/alexandryasukaitisss-cmd/ambient-display-macos/releases/download/v#{version}/AmbientDisplay-#{version}-macos-arm64.zip"
  name "AmbientDisplay"
  desc "Webcam-based hardware DDC auto-brightness for external monitors on macOS via BetterDisplay"
  homepage "https://github.com/alexandryasukaitisss-cmd/ambient-display-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "AmbientDisplay.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AmbientDisplay.app"],
                   must_succeed: false
  end

  caveats <<~EOS
    AmbientDisplay requires BetterDisplay in /Applications/BetterDisplay.app with DDC enabled.
    AmbientDisplay is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/AmbientDisplay.app"
  EOS
end
