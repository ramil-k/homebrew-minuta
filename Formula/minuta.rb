class Minuta < Formula
  desc "Command-line companion for the Minuta time-tracking app"
  homepage "https://minuta.tools"
  url "https://minuta.tools/downloads/minuta-cli-0.1.3.tar.gz"
  sha256 "5972d56ab98d1644b49c3e6d3d07a1dc6f804fb884fc96f3971f427430e27f3d"

  def install
    bin.install "minuta"
    man1.install Dir["man1/*.1"]
    bash_completion.install "completions/minuta.bash" => "minuta"
    zsh_completion.install "completions/minuta.zsh" => "_minuta"
    fish_completion.install "completions/minuta.fish"
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/minuta --version")
  end
end
