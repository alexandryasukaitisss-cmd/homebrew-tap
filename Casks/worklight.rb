cask "worklight" do
  version "0.2.3"
  sha256 "445e716962c954d56fbad8e44a5d6669e951ce9c5b61ac4b8d9fe359d3972ab7"

  url "https://github.com/alexandryasukaitisss-cmd/worklight-macos/releases/download/v#{version}/WorkLight-#{version}-macos-arm64.zip"
  name "WorkLight"
  desc "Native macOS menu bar On-Air / Busy Light controller for Home Assistant RGB lamps"
  homepage "https://github.com/alexandryasukaitisss-cmd/worklight-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "WorkLight.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/WorkLight.app"],
                   must_succeed: false
  end

  caveats <<~EOS
    WorkLight is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/WorkLight.app"
  EOS
end
