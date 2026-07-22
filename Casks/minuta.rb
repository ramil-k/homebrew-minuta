cask "minuta" do
  version "1.0.1"
  sha256 "89286a80b3ad297b2bb91418a923b57c609d6beb691d07f1e32259b66c6041f7"

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
