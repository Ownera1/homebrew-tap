class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.6/rag-go_v0.6.6_darwin_arm64.tar.gz?package=formula"
      sha256 "01986f6040aa59b7ea2972ef006099807465682b1732eb0988a37a8f633c0154"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.6/rag-go_v0.6.6_linux_arm64.tar.gz?package=formula"
      sha256 "cc71381ac3964921c98e8d23dff9564a470131a0433c5a6288a492fea7624d1e"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.6/rag-go_v0.6.6_linux_amd64.tar.gz?package=formula"
      sha256 "d5c13fa056b082434e9ae8742446a86ba6f0c34492cc4d1cae691b644ea803e9"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
