cask "cadence" do
  version "0.2.0"
  sha256 "3bfc4c0be52289f89a174c3e6cc86df69be1c4943e31eabf78a3612059ee88f9"

  url "https://github.com/alexandryasukaitisss-cmd/cadence-macos/releases/download/v#{version}/Cadence-#{version}-macos-arm64.zip"
  name "Cadence"
  desc "Native macOS menu bar Apple Music controller with instant lyrics, favorites, and zero idle wakeups"
  homepage "https://github.com/alexandryasukaitisss-cmd/cadence-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Cadence.app"

  caveats <<~EOS
    Cadence is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/Cadence.app"
  EOS
end
