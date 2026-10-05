cask "minuta" do
  version "1.0.6"
  sha256 "0ec59e3c2d902fe41a98bbffd53e18f434e14b8c98ab6842e495f8a9be001027"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
