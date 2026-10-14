class Combicode < Formula
  desc "Pack a codebase into one LLM-friendly file with a code map and line references"
  homepage "https://github.com/aaurelions/combicode"
  version "4.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aaurelions/combicode/releases/download/v4.1.0/combicode-x86_64-apple-darwin.tar.gz"
      sha256 "3518650a374bca0d263e3e89748110fc5c492bbfa715c14fa5b5d4b908ee72c0"
    end
    on_arm do
      url "https://github.com/aaurelions/combicode/releases/download/v4.1.0/combicode-aarch64-apple-darwin.tar.gz"
      sha256 "2c2ff8c34d6a3111a483e59dd4e682442469a34d637b59f53cf71bb00dd915fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aaurelions/combicode/releases/download/v4.1.0/combicode-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f476fe6ae8dd463d98779d4138170c8852bfc87757cd70f1afc932e5295856a"
    end
    on_arm do
      url "https://github.com/aaurelions/combicode/releases/download/v4.1.0/combicode-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bc78b0b5c62c37812dc9aaa8319dc94fd1ad67a779532d25af92fec35f526abf"
    end
  end

  def install
    bin.install "combicode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/combicode --version")
  end
end
