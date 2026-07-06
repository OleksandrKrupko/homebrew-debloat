class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "3fc9f85721442f5142b597a40f1f6fcc3e904532ae1540cfc67b6fa3d5e0c8f7"
  license "MIT"
  version "0.5.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/debloat --version")
  end
end
