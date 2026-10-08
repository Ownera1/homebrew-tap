class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.5.1/rag-go_v0.5.1_darwin_arm64.tar.gz?package=formula"
      sha256 "1a227b77bd9cc78c224f848c51d19c75a720a6ed35200f465aea01d49a49d7e3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.5.1/rag-go_v0.5.1_linux_arm64.tar.gz?package=formula"
      sha256 "ffcc440202e4ca949f66552413b5b2cf246daca6c097ddb1d77fc5759d08d82b"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.5.1/rag-go_v0.5.1_linux_amd64.tar.gz?package=formula"
      sha256 "b0ddd0b09d45643ce425a18e315f0954b5a4adce6cd148fb8ddc8c2a033c3f25"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
