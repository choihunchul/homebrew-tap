class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.18"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.18/lazyifconfig-v0.2.18-x86_64-apple-darwin.tar.gz"
      sha256 "272c9abf2edb9faaf3e38aef01d7c5a6423ce33d4786b3129c368a68ad673381"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.18/lazyifconfig-v0.2.18-aarch64-apple-darwin.tar.gz"
      sha256 "827224531ad6144907c08c9b4d8daaec2785e7bb76cc0326005beeed35a07544"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.18/lazyifconfig-v0.2.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b664ed5c46afa99e3b83e5d8f92381ed8807d502cf83cee040e782d0e8d01fd"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
