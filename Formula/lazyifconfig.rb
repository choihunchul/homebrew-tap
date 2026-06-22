class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.14"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.14/lazyifconfig-v0.2.14-x86_64-apple-darwin.tar.gz"
      sha256 "0b30efde45fbb3b1c0e42faea24fb0179e5d3e443c10b9efcc87fe7ad2eb33e1"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.14/lazyifconfig-v0.2.14-aarch64-apple-darwin.tar.gz"
      sha256 "ad7989cee621ebb50b45cded9a7c2dd5fb2d0c010b68dd4f77ccd938b08fe297"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.14/lazyifconfig-v0.2.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b22a4af50f5dfb0bbb3e09dd3738690eaf7a3a4eedcee98fe47a573d9ee3450"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
