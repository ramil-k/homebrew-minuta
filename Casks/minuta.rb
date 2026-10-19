cask "minuta" do
  version "1.2.0"
  sha256 "adb427f0ebee36ce7d900c326d7ee557b988782280dc3fa21e9bc5284e984f85"

  url "https://minuta.tools/downloads/Minuta-#{version}.zip"
  name "Minuta"
  desc "Native macOS time tracker with Automerge CRDT storage"
  homepage "https://minuta.tools"

  app "Minuta.app"

  zap trash: [
    "~/Library/Application Support/minuta",
  ]
end
