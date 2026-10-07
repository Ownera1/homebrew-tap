class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.1/rag-go_v0.3.1_darwin_arm64.tar.gz?package=formula"
      sha256 "2b788ad19046b55943ed98ae54824207d114d75d3023767b642c5fde627a07e4"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.1/rag-go_v0.3.1_darwin_amd64.tar.gz?package=formula"
      sha256 "bb2bb2512ec4ebe949a5ee7928c7eb1c6f7ecd72d5ddcef710779a9616e1e117"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.1/rag-go_v0.3.1_linux_arm64.tar.gz?package=formula"
      sha256 "8cdd669e3f7dd8ba810643f1f68638bcbd6ec277b1eb343de59095abbe77909d"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.1/rag-go_v0.3.1_linux_amd64.tar.gz?package=formula"
      sha256 "53cd08e7b150236b6b149d4c3b3d145f74f2fdf02578e943805717afd690582a"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
