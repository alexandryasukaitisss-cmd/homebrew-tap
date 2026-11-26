cask "ha-pip-cam" do
  version "0.2.0"
  sha256 "bd9417efa1cf3f6d03c950887667028b8aca98eba806366eaae5d46d16f27758"

  url "https://github.com/alexandryasukaitisss-cmd/ha-pip-cam-macos/releases/download/v#{version}/HAPiPCam-#{version}-macos-arm64.zip"
  name "HA PiP Cam"
  desc "Native macOS menu bar floating Picture-in-Picture live camera viewer for go2rtc / HLS streams"
  homepage "https://github.com/alexandryasukaitisss-cmd/ha-pip-cam-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "HAPiPCam.app"

  caveats <<~EOS
    HA PiP Cam is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/HAPiPCam.app"
  EOS
end
