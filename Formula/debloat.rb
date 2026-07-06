class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "05286527bcb88159057b4fca78d7b558017beef1c2f49bf3e37e75059834abec"
  license "MIT"
  version "0.3.2"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.3.2", shell_output("#{bin}/debloat --version")
  end
end
