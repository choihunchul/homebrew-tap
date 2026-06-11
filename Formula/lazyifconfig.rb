class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.9"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.9/lazyifconfig-v0.2.9-x86_64-apple-darwin.tar.gz"
      sha256 "93d1066c0f8f3a1ad214f715ff41fd0df778da410673e75a1d75f00ed7f5ad82"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.9/lazyifconfig-v0.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "7fb9d6390a6ac051033a8a20987a3b46d5a57f0d5d3d7034b65c43a770855b29"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.9/lazyifconfig-v0.2.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05e2b939f72e9ed73a508afed598dd8646d732fcc408ec1195f4fdabc28e016e"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
