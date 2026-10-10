class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.1/rag-go_v0.7.1_darwin_arm64.tar.gz?package=formula"
      sha256 "3cfa1bb9c892a7cb6190790ff78f14deb236eabb950490ea35d4dce1ec444706"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.1/rag-go_v0.7.1_linux_arm64.tar.gz?package=formula"
      sha256 "985fc36ae43172d6cd0b80e14ac6a3a69bef601846cdf70434de65b1ed9e3612"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.1/rag-go_v0.7.1_linux_amd64.tar.gz?package=formula"
      sha256 "b89ad98c999a25672a37e0338cbf75c0b2975456ae7dc7ff033fe11889c3fba3"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
