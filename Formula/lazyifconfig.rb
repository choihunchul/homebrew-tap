class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.26"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.26/lazyifconfig-v0.2.26-x86_64-apple-darwin.tar.gz"
      sha256 "3de65707caf17343ed3b31b9269212ababf906b6e69683fe19bd0a6497ffa2a9"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.26/lazyifconfig-v0.2.26-aarch64-apple-darwin.tar.gz"
      sha256 "2fbc39058a0ac32fe6ffb2f9ab851f2f3308b558142bf8299e1d0469e366c5b3"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.26/lazyifconfig-v0.2.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b418ee76603c74eb8dde65bdcb1450fdcee9fb0fcf08bf913efa636cdd22fb2"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
