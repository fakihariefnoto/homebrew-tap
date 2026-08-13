class Commitly < Formula
  desc "Compose Conventional Commits messages, interactively"
  homepage "https://github.com/fakihariefnoto/commitly"
  url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_arm64.tar.gz"
  sha256 "1c2759b1b119ee4c2b219acb22644d392960341795e486cc71a6921ae1902b08"
  license "MIT"

  on_arm do
    url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_arm64.tar.gz"
    sha256 "1c2759b1b119ee4c2b219acb22644d392960341795e486cc71a6921ae1902b08"
  end

  on_intel do
    url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_amd64.tar.gz"
    sha256 "03795107b26e17ee3b27b07d6cb04b53042dc9cb71457f59ee5944a7b96964a9"
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
