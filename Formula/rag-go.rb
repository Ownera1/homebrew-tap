class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.4/rag-go_v0.3.4_darwin_arm64.tar.gz?package=formula"
      sha256 "1c1cd463670b5c44869a6c454b2948264283701ea62469b4df3e2b836e74ab61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.4/rag-go_v0.3.4_linux_arm64.tar.gz?package=formula"
      sha256 "09fe4eccc72f7d3e00e18c6b1548715d77e12c22d1e46918e89af26c7df7aef2"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.4/rag-go_v0.3.4_linux_amd64.tar.gz?package=formula"
      sha256 "7f7d2735cb52cbe297ef1a091bed4656b50a384bf7870739c69e2604f5d32785"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
