class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.19"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.19/lazyifconfig-v0.2.19-x86_64-apple-darwin.tar.gz"
      sha256 "544023cf2c660da4fd70662741597478cda3cc6da916f3ba15be911dd1d0e4b3"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.19/lazyifconfig-v0.2.19-aarch64-apple-darwin.tar.gz"
      sha256 "d0def77cd2c506e1b7a91cea2d353d18d1f0d606ce52bd815635f3138c39e2cb"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.19/lazyifconfig-v0.2.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b2c6e687c7b8ea7030fbf4e31541379bc8967e05b8d8d1d31da9d775839c4bb"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
