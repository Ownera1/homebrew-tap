class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.3/rag-go_v0.7.3_darwin_arm64.tar.gz?package=formula"
      sha256 "84d79ae1f540589f23eeba7a67089a0e57b836b1ffa536b9c7c4a09bb24efddc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.3/rag-go_v0.7.3_linux_arm64.tar.gz?package=formula"
      sha256 "3ac25f45c57e91858d9100fe8b95b890f7d6bb44fe36f4b1bca3b2ce177d6cec"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.3/rag-go_v0.7.3_linux_amd64.tar.gz?package=formula"
      sha256 "ed024149e844c4eb1d4e7d5b31b1cbcd0d14366d38043d965a1ad55d99986cb2"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
