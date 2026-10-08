class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.4.1/rag-go_v0.4.1_darwin_arm64.tar.gz?package=formula"
      sha256 "c2094cecde2e097c16b8b1de71edb875d04ef91beb1c5128f6a42564833d14d4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.4.1/rag-go_v0.4.1_linux_arm64.tar.gz?package=formula"
      sha256 "ce05d78d85ebaae723b76793ca6cc1af41550d0d155c16d6bb0176a2d25876e1"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.4.1/rag-go_v0.4.1_linux_amd64.tar.gz?package=formula"
      sha256 "dc59f04ad15e030b886cc9a3a334b7e87530932504eb924e5c593df59ab072f9"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
