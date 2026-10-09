class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.6.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.8/rag-go_v0.6.8_darwin_arm64.tar.gz?package=formula"
      sha256 "098a5882e78882d7a27692779897babc57e9f7bf87da9b5fb92acd647ec6457b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.8/rag-go_v0.6.8_linux_arm64.tar.gz?package=formula"
      sha256 "1a20ddf47e50c3348274cbe53a5768e2327d4c09a06e696c1affebfc1310e17d"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.8/rag-go_v0.6.8_linux_amd64.tar.gz?package=formula"
      sha256 "9521ec991a59f69980de2dcd30c53447d07759a2806df9a27f8e8176beaf27c1"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
