class Commitly < Formula
  desc "Compose Conventional Commits messages, interactively"
  homepage "https://github.com/fakihariefnoto/commitly"
  url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_arm64.tar.gz"
  sha256 "c01981f86638e5eafd48cad0448c5f86d3083a6af1c2521bcb5e0c0ab354fa23"
  license "MIT"

  on_arm do
    url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_arm64.tar.gz"
    sha256 "c01981f86638e5eafd48cad0448c5f86d3083a6af1c2521bcb5e0c0ab354fa23"
  end

  on_intel do
    url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_amd64.tar.gz"
    sha256 "d7de4e77fc1d6b7b6f885f0071932c0b9d6917909352cd3e04f86ccc4451ecdd"
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
