cask "minuta" do
  version "1.0.7"
  sha256 "d7c231ed44fb8cc8ac62437245be071ed003e63bd61c2e0dd619534595036dd6"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
