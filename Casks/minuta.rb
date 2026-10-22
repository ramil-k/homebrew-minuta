cask "minuta" do
  version "1.3.0"
  sha256 "4eeaddc8f9fb44c80c933029607a59b8cc652df1079efa5c668d8cd0c1f2d5da"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
