cask "minuta" do
  version "1.1.1"
  sha256 "80e38c8cbe4fe525151d1f6cf32db7d5fc5df2e380b375d572b6a484b268c202"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
