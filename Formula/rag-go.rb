class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.2/rag-go_v0.7.2_darwin_arm64.tar.gz?package=formula"
      sha256 "4eeb0fe6721a87a579e6c4b71d23fdddf6b662ee3690d743ef1fdf550ac25622"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.2/rag-go_v0.7.2_linux_arm64.tar.gz?package=formula"
      sha256 "168053998a0305d1c9d169122b679d72b2b9430e6486160051730285d18eec07"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.7.2/rag-go_v0.7.2_linux_amd64.tar.gz?package=formula"
      sha256 "5440788d134854bc9ba42ed3085b9789b829304a3e36bc0b336de8d54650ed16"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
