cask "minuta" do
  version "1.1.0"
  sha256 "df866750ed364e6845211f828a9d8331385688bf100f8618877ebb34fc2f0f97"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
