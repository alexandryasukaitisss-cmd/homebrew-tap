cask "purrcore" do
  version "0.6.1"
  sha256 "03862b00f3bcb7b35854cd07154f4416018767f4188c3aa14ac3894febde2baf"

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
