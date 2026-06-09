class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ea87b0843c6d66d8d7944dfd35a60b0f8c2290eabf72b16371b1bd482d3a225a"
  license "MIT"
  version "0.2.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/debloat --version")
  end
end
