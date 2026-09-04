class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "f3fa3011d5510dc6227e2a2d20a24ae99b99d1c6d4db6e811e040741eb8a031b"
  license "MIT"
  version "0.9.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.9.0", shell_output("#{bin}/debloat --version")
  end
end
