class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.1/rag-go_v0.6.1_darwin_arm64.tar.gz?package=formula"
      sha256 "8b3d9a4529ca9b29b3e01dca141a9af233aa9cede8aa2fc22b3ae6e97aac7907"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.1/rag-go_v0.6.1_linux_arm64.tar.gz?package=formula"
      sha256 "987b528b0a8b3a1189d9d8437eb5eed45fdeb6c62464c1897c8af773bb6286d1"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.1/rag-go_v0.6.1_linux_amd64.tar.gz?package=formula"
      sha256 "89314dea272fc78703f361712cebba3234b3d1c1eee59780b870d4ec40aae4fc"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
