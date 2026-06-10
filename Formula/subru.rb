class Subru < Formula
  desc "Rust CLI for detecting potential subdomain takeover exposure"
  homepage "https://github.com/sherpatch/subru"
  url "https://github.com/sherpatch/subru.git",
      tag:      "v0.1.3",
      revision: "130826ab5906276ec2cb4982a8269eabc16e5a63"
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
