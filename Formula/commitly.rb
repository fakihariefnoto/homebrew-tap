class Commitly < Formula
  desc "Compose Conventional Commits messages, interactively"
  homepage "https://github.com/fakihariefnoto/commitly"
  url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_arm64.tar.gz"
  sha256 "1ccfba6190a298f969c04bb1b658a1a5330b5e6cb6bd96b9fc49f355cc8bd479"
  license "MIT"

  on_arm do
    url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_arm64.tar.gz"
    sha256 "1ccfba6190a298f969c04bb1b658a1a5330b5e6cb6bd96b9fc49f355cc8bd479"
  end

  on_intel do
    url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_amd64.tar.gz"
    sha256 "a389546b5f0db6e26063d9a76eb3d9edccbdfea3909cf1d7ea30b638742d05b3"
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
