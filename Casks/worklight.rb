cask "worklight" do
  version "0.1.0"
  sha256 "966fd155746b28a28f36a2bc254ba7dbb6a7aa1dfa0aa461510b70123c62ee8e"

  url "https://github.com/alexandryasukaitisss-cmd/worklight-macos/releases/download/v#{version}/WorkLight-#{version}-macos-arm64.zip"
  name "WorkLight"
  desc "Native macOS menu bar On-Air / Busy Light controller for Home Assistant RGB lamps"
  homepage "https://github.com/alexandryasukaitisss-cmd/worklight-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "WorkLight.app"

  caveats <<~EOS
    WorkLight is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks launch, run:
      xattr -dr com.apple.quarantine "/Applications/WorkLight.app"
  EOS
end
