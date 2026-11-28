cask "cadence" do
  version "0.2.4"
  sha256 "ff6f45ae397121b706f86dbfa98bacc0a938145b54772c89faee06acec0405bd"

  url "https://github.com/alexandryasukaitisss-cmd/cadence-macos/releases/download/v#{version}/Cadence-#{version}-macos-arm64.zip"
  name "Cadence"
  desc "Native macOS menu bar Apple Music controller with instant lyrics, favorites, and zero idle wakeups"
  homepage "https://github.com/alexandryasukaitisss-cmd/cadence-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Cadence.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Cadence.app"],
                   must_succeed: false
  end

  caveats <<~EOS
    Cadence is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/Cadence.app"
  EOS
end
