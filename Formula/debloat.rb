class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d41e6c6d23f7e05f756070bad123a3753881566e0a032b42c29b6c3de8f1c23b"
  license "MIT"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/debloat --version")
  end
end
