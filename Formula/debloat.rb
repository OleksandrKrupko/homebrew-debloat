class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.12.3.tar.gz"
  sha256 "7c841b55e1d8175155baa2f6a0919ab44e3f0bd0f7dcd16d1009602b50b4e7a8"
  license "MIT"
  version "0.12.3"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.12.3", shell_output("#{bin}/debloat --version")
  end
end
