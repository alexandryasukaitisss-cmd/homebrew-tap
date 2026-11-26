cask "ha-pip-cam" do
  version "0.1.0"
  sha256 "0f059018c5b6938ce0e89ea4361a6f24bc98042e40a8ec36ebe84439240b2a9a"

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
