cask "cadence" do
  version "0.1.1"
  sha256 "48af5d54b02d5814034140ae926eb0dbba9224b4506ed778c80e71829e9fd17e"

  url "https://github.com/alexandryasukaitisss-cmd/cadence-macos/releases/download/v#{version}/Cadence-#{version}-macos-arm64.zip"
  name "Cadence"
  desc "Native macOS menu bar Apple Music controller with instant lyrics, favorites, and zero idle wakeups"
  homepage "https://github.com/alexandryasukaitisss-cmd/cadence-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Cadence.app"

  caveats <<~EOS
    Cadence is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks launch, run:
      xattr -dr com.apple.quarantine "/Applications/Cadence.app"
  EOS
end
