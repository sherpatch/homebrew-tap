class Subru < Formula
  desc "Rust CLI for detecting potential subdomain takeover exposure"
  homepage "https://github.com/sherpatch/subru"
  url "https://github.com/sherpatch/subru.git",
      tag:      "v0.1.1",
      revision: "0f133a29d478d9a6ee0d0ceb19bfc5f27694d4fb"
  license :cannot_represent
  head "https://github.com/sherpatch/subru.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/subru version")
  end
end
