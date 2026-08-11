class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "390af2174cd370c91af00d6990a2390bd656c202ddcec002a3b20cb0f49c9c6b"
  license "MIT"
  version "0.7.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/debloat --version")
  end
end
