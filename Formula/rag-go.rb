class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.0/rag-go_v0.6.0_darwin_arm64.tar.gz?package=formula"
      sha256 "177ea02d56ebaa1a98b57ece66228168e507a64ba95f804bc3dae0817e3891af"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.0/rag-go_v0.6.0_linux_arm64.tar.gz?package=formula"
      sha256 "88fc185bf24e951911967fca1a595018749651c0b6412ba2d19f6500dafac2a2"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.0/rag-go_v0.6.0_linux_amd64.tar.gz?package=formula"
      sha256 "828d97712383de7ac56445239558333aa160b92f05422cf60be7b0f6a30d3538"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
