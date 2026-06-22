class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.15"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.15/lazyifconfig-v0.2.15-x86_64-apple-darwin.tar.gz"
      sha256 "551eab25d766dcdfe1270a2d34272017ec6335ceee8db991ff6bb44e099d2fc8"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.15/lazyifconfig-v0.2.15-aarch64-apple-darwin.tar.gz"
      sha256 "9274e160c19671f1a506ca1d77a561aa6a5565845948df8bd9b5e2d5411064ce"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.15/lazyifconfig-v0.2.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc338682e37d00ffbbd76c7cbf3260078c01e9110ec84c69a230a5e25b275d77"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
