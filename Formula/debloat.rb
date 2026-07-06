class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "a45ce364c95fc3b6e2efc1c63bdbf563e1ed4d2fdf5f56417632988bf4cfeee4"
  license "MIT"
  version "0.4.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/debloat --version")
  end
end
