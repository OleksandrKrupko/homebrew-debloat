class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.14.1.tar.gz"
  sha256 "23f4e554f85af16f48940fa3046d9ce495999ee4d01dc3c8f2a376b7cd729544"
  license "MIT"
  version "0.14.1"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.14.1", shell_output("#{bin}/debloat --version")
  end
end
