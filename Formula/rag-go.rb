class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.0/rag-go_v0.7.0_darwin_arm64.tar.gz?package=formula"
      sha256 "95390061255d2a5f67a01bf8754af34768ec74c2156eb464b5bae539578ad05f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.0/rag-go_v0.7.0_linux_arm64.tar.gz?package=formula"
      sha256 "2c8a52a69a0e4783984a5ae4a8a59933e166c42c3ffe54cc56b1c91c32810116"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.0/rag-go_v0.7.0_linux_amd64.tar.gz?package=formula"
      sha256 "467a16e3469cc1d9d0764f64c923e98b59f9a1dd1b681df351726f72c2f554ac"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
