class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "e3f47afb64765eca220788dd7a1d2471d1d25f2d199e41487ea0d828d66ab331"
  license "MIT"
  version "0.6.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/debloat --version")
  end
end
