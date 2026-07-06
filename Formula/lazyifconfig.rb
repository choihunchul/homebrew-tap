class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.25"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.25/lazyifconfig-v0.2.25-x86_64-apple-darwin.tar.gz"
      sha256 "30ea1921dd70ee13cedf92e6558415ae11cf21401ecf87a55752ce58c4ea8710"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.25/lazyifconfig-v0.2.25-aarch64-apple-darwin.tar.gz"
      sha256 "2b4cd3d87a0449aa2d81291ec9e44acdac30f98692b2f7db8095fa5e3a197a3a"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.25/lazyifconfig-v0.2.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "711e29f52e60e818956d8065dc39ea8d609ba611d39722f333909e77be1a0306"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
