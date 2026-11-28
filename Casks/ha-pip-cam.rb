cask "ha-pip-cam" do
  version "0.2.2"
  sha256 "0f379aeec2ed8ca6e735666cfaca4dfb5c7adf58efd5bc85cd3091feeeb8e6b8"

  url "https://github.com/alexandryasukaitisss-cmd/ha-pip-cam-macos/releases/download/v#{version}/HAPiPCam-#{version}-macos-arm64.zip"
  name "HA PiP Cam"
  desc "Native macOS menu bar floating Picture-in-Picture live camera viewer for go2rtc / HLS streams"
  homepage "https://github.com/alexandryasukaitisss-cmd/ha-pip-cam-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "HAPiPCam.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/HAPiPCam.app"],
                   must_succeed: false
  end

  caveats <<~EOS
    HA PiP Cam is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/HAPiPCam.app"
  EOS
end
