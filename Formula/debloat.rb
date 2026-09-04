class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "6d9a62bd633687060a86f3235adcf3fc3d5bdb569715bb5e63dc36998cbdafd4"
  license "MIT"
  version "0.11.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.11.0", shell_output("#{bin}/debloat --version")
  end
end
