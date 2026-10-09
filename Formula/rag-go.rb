class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.5/rag-go_v0.6.5_darwin_arm64.tar.gz?package=formula"
      sha256 "79082600f915ec8e32f3c6cd4b16493460b9b93b23a304dd8401b42608d7c719"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.5/rag-go_v0.6.5_linux_arm64.tar.gz?package=formula"
      sha256 "68cee2e8c76b3cea912ef37a6a9f1e9bef9638b1531265a58c6288e9d00c102e"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.5/rag-go_v0.6.5_linux_amd64.tar.gz?package=formula"
      sha256 "5abe9f9f79ab881f2632d51fbfafee69ce7ecd9116ef385f69f2a0ed60f02ca4"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
