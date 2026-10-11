class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.4/rag-go_v0.7.4_darwin_arm64.tar.gz?package=formula"
      sha256 "9130b1cbf3caee9f506a0a20dca78783712b1749da968d954a3439bcee046e07"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.4/rag-go_v0.7.4_linux_arm64.tar.gz?package=formula"
      sha256 "e666f6a8cdd8eed37c11190a0ca7953cbab052ff83db5d9e28338f13b468b380"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.4/rag-go_v0.7.4_linux_amd64.tar.gz?package=formula"
      sha256 "4d8e616124e01635600a31824e706eae5fc31658528c2f6429e056ad27f3c52e"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
