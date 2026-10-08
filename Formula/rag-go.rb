class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.5.2/rag-go_v0.5.2_darwin_arm64.tar.gz?package=formula"
      sha256 "4c86fd5fafc5b586dce46719ada258b0e0f66a09c0a95442929beab30b6fb956"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.5.2/rag-go_v0.5.2_linux_arm64.tar.gz?package=formula"
      sha256 "9d7595a2f3acee8eac6e6b9116f149d204976c3c95eaa27693d759fac0d520e0"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.5.2/rag-go_v0.5.2_linux_amd64.tar.gz?package=formula"
      sha256 "11cd5ca5f2dfb8d41bfdf98bb976ec6d4e24f2e43d752c753e3fe15224ef5fde"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
