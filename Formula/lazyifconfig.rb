class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.20"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.20/lazyifconfig-v0.2.20-x86_64-apple-darwin.tar.gz"
      sha256 "223d6104e78c24a8204400ea57ea3bac52567a8555419a0915243e60c5e74e25"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.20/lazyifconfig-v0.2.20-aarch64-apple-darwin.tar.gz"
      sha256 "79faa056e9df3c7bf34b677667da7c1eb2cdf0439bfb09221004f68a32104eca"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.20/lazyifconfig-v0.2.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b573b98620ff0641347c1ace1899cf7b62eed3ee997850b93ac8d5c55de2170"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
