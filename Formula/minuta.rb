class Minuta < Formula
  desc "Command-line companion for the Minuta time-tracking app"
  homepage "https://minuta.tools"
  url "https://minuta.tools/downloads/minuta-cli-0.2.1.tar.gz"
  sha256 "c49940ac8c3821c399f2986de9d70c4224f4615a8fa94801b8a7a6dace2033b8"

  def install
    bin.install "minuta"
    man1.install Dir["man1/*.1"]
    bash_completion.install "completions/minuta.bash" => "minuta"
    zsh_completion.install "completions/minuta.zsh" => "_minuta"
    fish_completion.install "completions/minuta.fish"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/minuta --version")
  end
end
