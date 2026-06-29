class Minuta < Formula
  desc "Command-line companion for the Minuta time-tracking app"
  homepage "https://minuta.tools"
  url "https://minuta.tools/downloads/minuta-cli-0.1.0.tar.gz"
  sha256 "663f75844a8fdb5678fff2f6787b6be7eb9779f41a8d8bdaa39fb6b47c938e59"
  version "0.1.0"

  def install
    bin.install "minuta"
    man1.install Dir["man1/*.1"]
    bash_completion.install "completions/minuta.bash" => "minuta"
    zsh_completion.install "completions/minuta.zsh" => "_minuta"
    fish_completion.install "completions/minuta.fish"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/minuta --version")
  end
end
