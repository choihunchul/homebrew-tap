class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.4"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.4/lazyifconfig-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "871c08ddfb08a0c151211df903d0497ebe877a36579d1944db3ff07ebfe5aa87"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.4/lazyifconfig-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "3fe53542c5b9f24af3d8cc5fbaa499ca0b3babe4fa1c314be5fc64a4866ca698"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.4/lazyifconfig-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5e133c605cdb101b6fdfb1a6dc0ab108102c32497fa295a182384e24b38b4d5"
    end
  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
