class Commitly < Formula
  desc "Compose Conventional Commits messages, interactively"
  homepage "https://github.com/fakihariefnoto/commitly"
  url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_arm64.tar.gz"
  sha256 "1f0e9698e8777b6f85d8ea55b818927368e047e8e38053f8740dc2bb3107f4ac"
  license "MIT"

  # Replace this formula on each release; GoReleaser regenerates it from
  # .goreleaser.yaml (brew installs the same binary under two names).
  on_arm do
    url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_arm64.tar.gz"
    sha256 "1f0e9698e8777b6f85d8ea55b818927368e047e8e38053f8740dc2bb3107f4ac"
  end

  on_intel do
    url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_amd64.tar.gz"
    sha256 "26455adc6f37d662f7b615d8ce0587daa29eddc3bb0e46c70d8d8c1e890f6065"
  end

  def install
    bin.install "commitly"
    bin.install_symlink bin/"commitly" => "git-cm"
    bash_completion.install "completions/commitly.bash"
    zsh_completion.install "completions/_commitly" => "_commitly"
    fish_completion.install "completions/commitly.fish"
  end

  test do
    assert_match "commitly", shell_output("#{bin}/commitly --version")
  end
end
