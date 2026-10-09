class RagGo < Formula
  desc "Workspace local retrieval engine with stdio MCP"
  homepage "https://github.com/Ownera1/rag-go"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.4/rag-go_v0.6.4_darwin_arm64.tar.gz?package=formula"
      sha256 "e3c6d81b382a43c48bf3ec28646edec6625d6c9c026a9f4e14ddeec48331545d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.4/rag-go_v0.6.4_linux_arm64.tar.gz?package=formula"
      sha256 "35aa18aa3339b051d6124fee718a785745be4d2a19ab457ac63ae00cf09d7ed5"
    end
    on_intel do
      url "https://github.com/Ownera1/rag-go/releases/download/v0.6.4/rag-go_v0.6.4_linux_amd64.tar.gz?package=formula"
      sha256 "8f014acd7a8bbba418f7e15914eb18eb3600f4c59144dcd5a6c4a7ddd3cd65c7"
    end
  end

  def install
    bin.install "rag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rag version")
  end
end
