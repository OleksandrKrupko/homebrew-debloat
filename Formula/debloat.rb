class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "78b38c83869ff5de964d5b8236b058214967ded1a7d626e8f8057977a4081001"
  license "MIT"
  version "0.5.1"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.5.1", shell_output("#{bin}/debloat --version")
  end
end
