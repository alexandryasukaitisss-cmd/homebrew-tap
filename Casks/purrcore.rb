cask "purrcore" do
  version "0.5.0"
  sha256 "e269c8b9894759d6af3e1ca96a0d195ff2618390e3ad0aab46506d2cec31261a"

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
