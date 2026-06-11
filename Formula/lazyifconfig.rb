class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.11"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.11/lazyifconfig-v0.2.11-x86_64-apple-darwin.tar.gz"
      sha256 "42397125afd3ad198d96530891b3822f6ebf145109e598d35b1218546de15ded"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.11/lazyifconfig-v0.2.11-aarch64-apple-darwin.tar.gz"
      sha256 "715773613bd8037f67dcff776686912e24170a461f281ef3458bb3e00d1fab74"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.11/lazyifconfig-v0.2.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "110b10e2bea254f915d6affc64658399dd4107f39f802ba5930276a2d0556a9d"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
