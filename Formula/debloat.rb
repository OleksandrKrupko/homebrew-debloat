class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "e3108226c33776c45a2067ed79c125c1920c25e9f660129ba6317acf270f2325"
  license "MIT"
  version "0.7.2"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.7.2", shell_output("#{bin}/debloat --version")
  end
end
