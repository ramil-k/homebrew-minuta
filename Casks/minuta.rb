cask "minuta" do
  version "1.0.2"
  sha256 "8472f9a44c91cfae5d0d5f69802a21bd3b8b9b88894be8333fc17613ac13e5f1"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  # The app is not Developer-ID-notarized. Clear the quarantine attribute so
  # Gatekeeper allows it to launch without a right-click -> Open dance.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Minuta.app"]
  end

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
