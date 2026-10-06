class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.2.0/rag-go_v0.2.0_darwin_arm64.tar.gz?package=formula"
      sha256 "d35e7112c3d1eed5572e702fee0951ee5493865bed4fcb33780a2e90a4ab4591"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.2.0/rag-go_v0.2.0_darwin_amd64.tar.gz?package=formula"
      sha256 "81564f0018b9bd50f6b40b7636c7e5575f1392e229782cf6f2e2721ff69be003"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.2.0/rag-go_v0.2.0_linux_arm64.tar.gz?package=formula"
      sha256 "bc6ab8ab687d5a29f14ae4d2d1d766e22e74aa46991ca5e6eb0bc1eb03662a04"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.2.0/rag-go_v0.2.0_linux_amd64.tar.gz?package=formula"
      sha256 "c0cd84587a2e0f337f4658c4a0086b04108028ac9ce9a0b8e841d9156fc631ba"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
