class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "cef24bebb3edf5e20e43e6c2c9c4ce868db8bdeda3a1586bac871fc0fda549e4"
  license "MIT"
  version "0.10.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.10.0", shell_output("#{bin}/debloat --version")
  end
end
