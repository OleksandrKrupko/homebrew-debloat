class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.12.2.tar.gz"
  sha256 "458c1e2111d25422b685dfadd9ce70f77a21ee808d735a50dbb5931c9e69baf5"
  license "MIT"
  version "0.12.2"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.12.2", shell_output("#{bin}/debloat --version")
  end
end
