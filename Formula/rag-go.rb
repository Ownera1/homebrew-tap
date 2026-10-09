class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.2/rag-go_v0.6.2_darwin_arm64.tar.gz?package=formula"
      sha256 "e0ffbb2497f491b27279f50d7bccf42eea98bb4c96fabb3a6191e74f1dd55333"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.2/rag-go_v0.6.2_linux_arm64.tar.gz?package=formula"
      sha256 "e98d0d36f2366ea012e847edfa3f7d70284a45a263c5ce166c09b7e971c26c75"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.2/rag-go_v0.6.2_linux_amd64.tar.gz?package=formula"
      sha256 "792f9d96d94f5b2696161c647d8df3820b82f9cb237844d11ce7ffe44610c1ca"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
