cask "minuta" do
  version "1.0.0"
  sha256 "477aa5ccf89ac9bb9ba423b30118ccde25aed8c67d12d425f2e7144a89f35c27"

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
