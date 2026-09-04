class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "0d4cf6bd62001e5348f6360907518cc8412f2f6dfae0f029e32a843e98d225e4"
  license "MIT"
  version "0.8.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.8.0", shell_output("#{bin}/debloat --version")
  end
end
