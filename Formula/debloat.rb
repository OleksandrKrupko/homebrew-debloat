class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "2ad7424f51f7d6073c2a78a96a86f693638ee1f04286f54ef2eb4f8d58dd22d2"
  license "MIT"
  version "0.1.3"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/debloat --version")
  end
end
