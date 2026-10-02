cask "minuta" do
  version "1.0.3"
  sha256 "e71a01fc08181926e8d65b5532a89ddfaf19b8abc1e664e3f868273b65d717c5"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
