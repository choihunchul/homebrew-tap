class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.13"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.13/lazyifconfig-v0.2.13-x86_64-apple-darwin.tar.gz"
      sha256 "a27fa88f411c2ecb3421d4ec4b225104d857a9285091be6e12d46a07b068dff7"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.13/lazyifconfig-v0.2.13-aarch64-apple-darwin.tar.gz"
      sha256 "8b46bcf177a845bf7c514bb7a6369aafa6d7af51f297a36b772ed9901c99146f"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.13/lazyifconfig-v0.2.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "369a0646571894ce8cd1ca3dc32abd00f24aca2bbecd7165bf6db397db3f3262"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
