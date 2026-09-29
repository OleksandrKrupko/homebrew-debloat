class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.13.1.tar.gz"
  sha256 "9aa8f4733ff49111bcea5bdda0cf0c6535eacc5ef74ffa00dcb2273635005999"
  license "MIT"
  version "0.13.1"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.13.1", shell_output("#{bin}/debloat --version")
  end
end
