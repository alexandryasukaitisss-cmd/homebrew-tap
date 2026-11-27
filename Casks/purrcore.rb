cask "purrcore" do
  version "0.6.3"
  sha256 "798b6a5edf853e2117230edf9ce4a14a38aa4b164f4ebdb0613e43e4ada3a9c8"

  url "https://github.com/alexandryasukaitisss-cmd/purrcore/releases/download/v#{version}/PurrCore-#{version}-macos-arm64.zip"
  name "PurrCore"
  desc "Lightweight native macOS menu bar CPU, RAM, and per-core monitor with a running cat"
  homepage "https://github.com/alexandryasukaitisss-cmd/purrcore"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "PurrCore.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/PurrCore.app"],
                   must_succeed: false
  end

  caveats <<~EOS
    PurrCore is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/PurrCore.app"
  EOS
end
