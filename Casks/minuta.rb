cask "minuta" do
  version "1.5.0"
  sha256 "307fccc4572e9502f92095a18345fe70daca9a1337539119c4a050c6a81e4c50"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
