class Commitly < Formula
  desc "Compose Conventional Commits messages, interactively"
  homepage "https://github.com/fakihariefnoto/commitly"
  url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_arm64.tar.gz"
  sha256 "98778e711bf53647d83364f77233be29cfb9864ba2ba7e370330ce671382e0b5"
  license "MIT"

  on_arm do
    url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_arm64.tar.gz"
    sha256 "98778e711bf53647d83364f77233be29cfb9864ba2ba7e370330ce671382e0b5"
  end

  on_intel do
    url "https://github.com/fakihariefnoto/commitly/releases/download/v0.1.0/commitly_0.1.0_darwin_amd64.tar.gz"
    sha256 "e20e318e6302669b6059b6e5d24da44040a75695880b88e52470f43f59e8f415"
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
