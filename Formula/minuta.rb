class Minuta < Formula
  desc "Command-line companion for the Minuta time-tracking app"
  homepage "https://minuta.tools"
  url "https://minuta.tools/downloads/minuta-cli-0.1.5.tar.gz"
  sha256 "190258706c38efd5996d9fd2503e5652b01104243399832403d740a6f5e1eccc"

  def install
    bin.install "minuta"
    man1.install Dir["man1/*.1"]
    bash_completion.install "completions/minuta.bash" => "minuta"
    zsh_completion.install "completions/minuta.zsh" => "_minuta"
    fish_completion.install "completions/minuta.fish"
  end

  test do
    assert_match "0.1.5", shell_output("#{bin}/minuta --version")
  end
end
