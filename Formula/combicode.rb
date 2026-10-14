class Combicode < Formula
  desc "Pack a codebase into one LLM-friendly file with a code map and line references"
  homepage "https://github.com/aaurelions/combicode"
  version "4.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aaurelions/combicode/releases/download/v4.0.1/combicode-x86_64-apple-darwin.tar.gz"
      sha256 "0e9f238b123b9fac1e40e01491df6389167c0d81b0369ed4da503373530fe6bb"
    end
    on_arm do
      url "https://github.com/aaurelions/combicode/releases/download/v4.0.1/combicode-aarch64-apple-darwin.tar.gz"
      sha256 "bbe4ae3bdddcce31195b915468915d82191e17bd8ede8028a4f0c569c409beff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aaurelions/combicode/releases/download/v4.0.1/combicode-x86_64-unknown-linux-musl.tar.gz"
      sha256 "59a97e3c5e3ac90d4473f88379b55bf7a41c3aa5aaca707a8ea5283d5c11102e"
    end
    on_arm do
      url "https://github.com/aaurelions/combicode/releases/download/v4.0.1/combicode-aarch64-unknown-linux-musl.tar.gz"
      sha256 "04e25a66fafbce7b3775e35765ea8b3174f99b2cb09a72360cc889b38b292246"
    end
  end

  def install
    bin.install "combicode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/combicode --version")
  end
end
