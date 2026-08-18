class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "f157f1b41a83fddacf2c3fc7b41355ff32ced5729faff0e3a52fac620abf0bb2"
  license "MIT"
  version "0.7.1"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.7.1", shell_output("#{bin}/debloat --version")
  end
end
