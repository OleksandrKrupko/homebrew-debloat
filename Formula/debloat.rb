class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "6f61f02c8b8c733e04f717029772b195335fe636d3a6eb52a66ac262ae6534d1"
  license "MIT"
  version "0.1.2"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/debloat --version")
  end
end
