class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.12.0.tar.gz"
  sha256 "6d187dd7dc632d4d1f111687bf9e8719b2c62129d364deca56490735289483f4"
  license "MIT"
  version "0.12.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.12.0", shell_output("#{bin}/debloat --version")
  end
end
