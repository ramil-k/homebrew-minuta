cask "minuta" do
  version "1.2.1"
  sha256 "1583420d9557673960ffd8aa4b2a436115619ccd6dda5c865bbb3399c5831a39"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
