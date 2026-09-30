class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.13.2.tar.gz"
  sha256 "91224c42131ec9ecb916c3f2a93dcb5862c5e0c1ccae5182acd93f4105e11793"
  license "MIT"
  version "0.13.2"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.13.2", shell_output("#{bin}/debloat --version")
  end
end
