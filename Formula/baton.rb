class Baton < Formula
  desc "Dispatch tasks from a main agent to sub-agents (codex, claude, grok, agy, pi)"
  homepage "https://github.com/Ownera1/baton"
  url "https://github.com/Ownera1/baton/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "3874175816e1eaa07012604e6a50a4a1b57a58049d546ab2768adf5ea1c87165"
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
