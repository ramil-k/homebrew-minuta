class Minuta < Formula
  desc "Command-line companion for the Minuta time-tracking app"
  homepage "https://minuta.tools"
  url "https://minuta.tools/downloads/minuta-cli-0.1.1.tar.gz"
  sha256 "eb0df3e9ef8315b765188d81649921ce79ee13e3eedbf8c165f434d17cb0d680"

  def install
    bin.install "minuta"
    man1.install Dir["man1/*.1"]
    bash_completion.install "completions/minuta.bash" => "minuta"
    zsh_completion.install "completions/minuta.zsh" => "_minuta"
    fish_completion.install "completions/minuta.fish"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/minuta --version")
  end
end
