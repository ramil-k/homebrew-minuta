cask "minuta" do
  version "1.0.8"
  sha256 "7e74620e5fa4a3d7c3b0dfbee4225f578e73155c2e0baf63d54006775f35d559"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
