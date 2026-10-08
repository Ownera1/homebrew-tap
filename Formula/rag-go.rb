class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.5.0/rag-go_v0.5.0_darwin_arm64.tar.gz?package=formula"
      sha256 "fc76a280a1e94c37d0f0dc2b97f19d445e3283cc0cb8f9a5a4029ba0672714ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.5.0/rag-go_v0.5.0_linux_arm64.tar.gz?package=formula"
      sha256 "c68378fe5d280a5187928d3a303409ced779621a12ab0753f883082cf82270bb"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.5.0/rag-go_v0.5.0_linux_amd64.tar.gz?package=formula"
      sha256 "b8103eb2487fcfd897f83fc14a788e0d598ec89aba8fb287d87abb68987b3620"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
