cask "purrcore" do
  version "0.5.3"
  sha256 "062ceaa644692dd196b7c9e3f85ea1720ba26ca28cec00cd490d4cd9bc76ae2f"

  url "https://github.com/alexandryasukaitisss-cmd/purrcore/releases/download/v#{version}/PurrCore-#{version}-macos-arm64.zip"
  name "PurrCore"
  desc "Lightweight native macOS menu bar CPU, RAM, and per-core monitor with a running cat"
  homepage "https://github.com/alexandryasukaitisss-cmd/purrcore"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "PurrCore.app"

  caveats <<~EOS
    PurrCore is ad-hoc signed (not Apple-notarized).
    If macOS Gatekeeper blocks first launch:
      1. Click "Done" -> System Settings -> Privacy & Security -> "Open Anyway"
      2. Or run: xattr -dr com.apple.quarantine "/Applications/PurrCore.app"
  EOS
end
