cask "minuta" do
  version "1.4.0"
  sha256 "f7edd6f34b495abbd7ed6e7ff60bb8a02c7bfc11f140f742d92da2e52eb2df43"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
