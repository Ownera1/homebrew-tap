class Baton < Formula
  desc "Dispatch tasks from a main agent to sub-agents (codex, claude, grok, agy, pi)"
  homepage "https://github.com/Ownera1/baton"
  url "https://github.com/Ownera1/baton/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "e35e29851350c71c08f9a5bdfe5d114417051a85e49b12c034781ae947945714"
  license "MIT"
  head "https://github.com/Ownera1/baton.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.version=#{version}"), "./cmd/baton"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/baton version").strip
  end
end
