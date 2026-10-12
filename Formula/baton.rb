class Baton < Formula
  desc "Dispatch tasks from a main agent to sub-agents (codex, claude, grok, agy, pi)"
  homepage "https://github.com/Ownera1/baton"
  url "https://github.com/Ownera1/baton/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "94b2052f736fdb46038b5a10647b9532af7dbcc297e785a7e54981634aeee3e0"
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
