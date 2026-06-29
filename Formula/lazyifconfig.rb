class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.22"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.22/lazyifconfig-v0.2.22-x86_64-apple-darwin.tar.gz"
      sha256 "4168640000de833d976cb98ec91ab4c07d119199ae0d33b2a9f6ff41d1b28e6e"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.22/lazyifconfig-v0.2.22-aarch64-apple-darwin.tar.gz"
      sha256 "ffee07643981b6f281da96f3d7953254f7406ccf2993148069d494261fceaafd"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.22/lazyifconfig-v0.2.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "933975d66ffc617bdc9aa581a334adc3a81e5d3bf34391da4c8d1780fd6618c0"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
