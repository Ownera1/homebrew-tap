class Baton < Formula
  desc "Dispatch tasks from a main agent to sub-agents (codex, claude, grok, agy, pi)"
  homepage "https://github.com/Ownera1/baton"
  url "https://github.com/Ownera1/baton/archive/refs/tags/v0.11.1.tar.gz"
  sha256 "c60d4c64e41467fc69cf69ce5f7dae2fbe2785b014a3ad864204ab8a99f6dc47"
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
