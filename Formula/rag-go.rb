class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.3/rag-go_v0.6.3_darwin_arm64.tar.gz?package=formula"
      sha256 "4f4cb630176bc0b92d3311ebc3f21bba9538b5dcccc62352932de32d2cd72b69"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.3/rag-go_v0.6.3_linux_arm64.tar.gz?package=formula"
      sha256 "9830942806d093edcf109cfec668400f169647353ab2086421a49fcadbfc0390"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.3/rag-go_v0.6.3_linux_amd64.tar.gz?package=formula"
      sha256 "3b436246d3de461afa77a3939a5cf8c74da7930b8e9d7e6110f57f5a0fb04d37"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
