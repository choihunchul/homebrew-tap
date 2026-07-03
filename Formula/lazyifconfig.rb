class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.23"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.23/lazyifconfig-v0.2.23-x86_64-apple-darwin.tar.gz"
      sha256 "6e9ffa58d4802c7416a96d09c01c379b2c0b4eebdc4cc1980c6904f18263cdb8"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.23/lazyifconfig-v0.2.23-aarch64-apple-darwin.tar.gz"
      sha256 "92b4f4998caf73121bdeb3d14c713466ec4d6f30ca635841b7ab193d69882966"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.23/lazyifconfig-v0.2.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7623b2108a7ea1b167c874102fbd68c771858bc879c8af46e8e9cf296409605"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
