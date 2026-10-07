class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.4.0/rag-go_v0.4.0_darwin_arm64.tar.gz?package=formula"
      sha256 "4a4e7f3ae279a523cc4945fbab54c52e699772985bb00c029051347b876844c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.4.0/rag-go_v0.4.0_linux_arm64.tar.gz?package=formula"
      sha256 "ed82cf9e7ddefa931eca9839cf8181a9d07a3954e2e56313f5af796b1cbea7ae"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.4.0/rag-go_v0.4.0_linux_amd64.tar.gz?package=formula"
      sha256 "609ab37899bca187e55f9d6c5569683c9ab47bbab04ff9755836c1489d5369f8"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
