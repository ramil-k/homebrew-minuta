class Minuta < Formula
  desc "Command-line companion for the Minuta time-tracking app"
  homepage "https://minuta.tools"
  url "https://minuta.tools/downloads/minuta-cli-0.2.0.tar.gz"
  sha256 "8a973c08046b24f9f28dfe34f7378a138befb83eea66d204757feeee159fc03a"

  def install
    bin.install "minuta"
    man1.install Dir["man1/*.1"]
    bash_completion.install "completions/minuta.bash" => "minuta"
    zsh_completion.install "completions/minuta.zsh" => "_minuta"
    fish_completion.install "completions/minuta.fish"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/minuta --version")
  end
end
