class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.3/rag-go_v0.3.3_darwin_arm64.tar.gz?package=formula"
      sha256 "d502ed86691e1f50df7a46b74f5926b13b9218908bc5e45dda68cb64d6d516bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.3/rag-go_v0.3.3_linux_arm64.tar.gz?package=formula"
      sha256 "b68a98dd81a0a948f743921690d64802672ff4a254f79ffce699c41e4f48b40a"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.3.3/rag-go_v0.3.3_linux_amd64.tar.gz?package=formula"
      sha256 "d458cc14f9b4ea4956bbf1d4b6415774db8de9e0b00a1dc1214ef2b2d9bfc6f4"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
