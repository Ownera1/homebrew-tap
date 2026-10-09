class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.6.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.7/rag-go_v0.6.7_darwin_arm64.tar.gz?package=formula"
      sha256 "7812c4ff14992a789b4f40385359ba00aca223b241b9ca79cdfb6f311c784086"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.7/rag-go_v0.6.7_linux_arm64.tar.gz?package=formula"
      sha256 "f65208b371826df3f31d027ad99b84b13f0c50f81c4a7ea7b1becad13b22a82e"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.7/rag-go_v0.6.7_linux_amd64.tar.gz?package=formula"
      sha256 "327480fa3ba7bb9fdf5d30379100951f0e7487c86baf500e810ffd11c662919c"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
