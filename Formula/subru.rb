class Subru < Formula
  desc "Rust CLI for detecting potential subdomain takeover exposure"
  homepage "https://github.com/sherpatch/subru"
  url "https://github.com/sherpatch/subru.git",
      tag:      "v0.1.0",
      revision: "5b2e12aa489b7ad2d4a4d22109d2aa0e085edc0d"
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
