class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.0/rag-go_v0.3.0_darwin_arm64.tar.gz?package=formula"
      sha256 "6fa8a47b904a97ffd7c7baa11415e1dedadd3eed080cfce0647cea108cbfa7f1"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.0/rag-go_v0.3.0_darwin_amd64.tar.gz?package=formula"
      sha256 "addd6a74f6ad824b74edb93d1085d926dcb6f9ea4d890f28bb8e69875fcdb7a8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.0/rag-go_v0.3.0_linux_arm64.tar.gz?package=formula"
      sha256 "1c3b48245637ac96455915624a38de349bc8b803b4c9046faad03016af67c4df"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.0/rag-go_v0.3.0_linux_amd64.tar.gz?package=formula"
      sha256 "497b79885bf458c49f1442fe29d8c9104da1c6ed9d89c25bf61f5064fdf62f9d"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
