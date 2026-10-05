cask "rag-go" do
  version "0.1.0"
  arch arm: "arm64", intel: "amd64"
  name "rag-go"
  desc "Shared local knowledge store with HTTP MCP and automatic PDF ingestion"
  homepage "https://github.com/Ownera1/rag-go"

  on_macos do
    sha256 arm: "19c05adf8f15061c5e4a0b0c81c34383a5d95a1f9f17d1b251fe430eefd2bf47", intel: "df415c37f82aa69730e36cc7ad68c9cc6398af528f6a8203a5c1c736a4570435"
    url "https://github.com/Ownera1/rag-go/releases/download/v#{version}/rag-go_v#{version}_darwin_#{arch}.tar.gz"
  end
  on_linux do
    sha256 arm: "0e04a2b92281dac9bb902ba51be8d24ce21d99a2e4071f12127d852eaf1e1c55", intel: "aa62efe88add8f106fda552c8db24c2f2fc38f080cf4e17d969ab07ed3cf930a"
    url "https://github.com/Ownera1/rag-go/releases/download/v#{version}/rag-go_v#{version}_linux_#{arch}.tar.gz"
  end

  binary "rag"
  binary "ragd"
  binary "ragctl"
  binary "ragprep"
  binary "rageval"
end
