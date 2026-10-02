class Minuta < Formula
  desc "Command-line companion for the Minuta time-tracking app"
  homepage "https://minuta.tools"
  url "https://minuta.tools/downloads/minuta-cli-0.1.2.tar.gz"
  sha256 "222f9b766fd8ebb8ae0a881196e06ad102b9c538762bea5b9d4f3a4a5f84f0eb"

  def install
    bin.install "minuta"
    man1.install Dir["man1/*.1"]
    bash_completion.install "completions/minuta.bash" => "minuta"
    zsh_completion.install "completions/minuta.zsh" => "_minuta"
    fish_completion.install "completions/minuta.fish"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/minuta --version")
  end
end
