cask "worklight" do
  version "0.2.1"
  sha256 "fd1c10dfc1e0c0b25c9d027bde95382c8a63356cdf5726b8e837442c588d45b2"

  url "https://github.com/alexandryasukaitisss-cmd/worklight-macos/releases/download/v#{version}/WorkLight-#{version}-macos-arm64.zip"
  name "WorkLight"
  desc "Native macOS menu bar On-Air / Busy Light controller for Home Assistant RGB lamps"
  homepage "https://github.com/alexandryasukaitisss-cmd/worklight-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "WorkLight.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/WorkLight.app"],
                   must_succeed: false
  end

  caveats <<~EOS
    WorkLight is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/WorkLight.app"
  EOS
end
