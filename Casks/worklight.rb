cask "worklight" do
  version "0.2.0"
  sha256 "217d882a1a1aa9fda02a338efbf8060ad358498dce9bebd166c7d9bcafa74d26"

  url "https://github.com/alexandryasukaitisss-cmd/worklight-macos/releases/download/v#{version}/WorkLight-#{version}-macos-arm64.zip"
  name "WorkLight"
  desc "Native macOS menu bar On-Air / Busy Light controller for Home Assistant RGB lamps"
  homepage "https://github.com/alexandryasukaitisss-cmd/worklight-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "WorkLight.app"

  caveats <<~EOS
    WorkLight is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/WorkLight.app"
  EOS
end
