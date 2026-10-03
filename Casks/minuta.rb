cask "minuta" do
  version "1.0.5"
  sha256 "ac6837cb441c899298c977eee95f68a78aa8ce262acd8d8142a7439906cffbd7"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
