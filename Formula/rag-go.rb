class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.2/rag-go_v0.3.2_darwin_arm64.tar.gz?package=formula"
      sha256 "33508941be7bbefa30b7b322f59cee2ce64f54cad0397baa9c2f7a973cfb52c3"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.2/rag-go_v0.3.2_darwin_amd64.tar.gz?package=formula"
      sha256 "ecada7a10a5afcbc00a489edb83582f6e69bcf5556d56f1018c5a4d741387fbc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.2/rag-go_v0.3.2_linux_arm64.tar.gz?package=formula"
      sha256 "fe3abef167c2cd5d17c0fd01a335000ffb1611ff4f700f129af74a52ed229c4a"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.2/rag-go_v0.3.2_linux_amd64.tar.gz?package=formula"
      sha256 "e1b0c06d8d86d8122da456cb296c001df81646299df236c92c0e3e6a157e78f1"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
