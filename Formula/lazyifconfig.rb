class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.16"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.16/lazyifconfig-v0.2.16-x86_64-apple-darwin.tar.gz"
      sha256 "23019ed7b88bed76a0f21ec6c23102796caa70390caa6e773542503b1f5d6b6e"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.16/lazyifconfig-v0.2.16-aarch64-apple-darwin.tar.gz"
      sha256 "ad1345c7436f34ca481d2e48433368e8f73e524ef9ec39d7231e8e19189043fc"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.16/lazyifconfig-v0.2.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a8c4a540628953c53ecb981170f8c8faa7b2bd6d856519aafb28be131cf7bfb"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
