cask "purrcore" do
  version "0.6.4"
  sha256 "fa5fde4259107d8813def7de1fc5860067adc9d558de73c05b90cc4a022d1148"

  url "https://github.com/alexandryasukaitisss-cmd/purrcore/releases/download/v#{version}/PurrCore-#{version}-macos-arm64.zip"
  name "PurrCore"
  desc "Lightweight native macOS menu bar CPU, RAM, and per-core monitor with a running cat"
  homepage "https://github.com/alexandryasukaitisss-cmd/purrcore"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "PurrCore.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/PurrCore.app"],
                   must_succeed: false
  end

  caveats <<~EOS
    PurrCore is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/PurrCore.app"
  EOS
end
