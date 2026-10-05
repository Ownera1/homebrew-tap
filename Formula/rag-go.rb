class RagGo < Formula
  desc "Shared local knowledge store with HTTP MCP and automatic PDF ingestion"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.1.0/rag-go_v0.1.0_darwin_arm64.tar.gz?package=formula"
      sha256 "19c05adf8f15061c5e4a0b0c81c34383a5d95a1f9f17d1b251fe430eefd2bf47"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.1.0/rag-go_v0.1.0_darwin_amd64.tar.gz?package=formula"
      sha256 "df415c37f82aa69730e36cc7ad68c9cc6398af528f6a8203a5c1c736a4570435"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.1.0/rag-go_v0.1.0_linux_arm64.tar.gz?package=formula"
      sha256 "0e04a2b92281dac9bb902ba51be8d24ce21d99a2e4071f12127d852eaf1e1c55"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.1.0/rag-go_v0.1.0_linux_amd64.tar.gz?package=formula"
      sha256 "aa62efe88add8f106fda552c8db24c2f2fc38f080cf4e17d969ab07ed3cf930a"
    end
  end

  def install
    bin.install "rag", "ragd", "ragctl", "ragprep", "rageval"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
