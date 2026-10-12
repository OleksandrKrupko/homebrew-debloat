class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.14.0.tar.gz"
  sha256 "7a163fe3b4b935c6eca9eed14385958eb8713e5ea77b9fc39c1b65047f9d771f"
  license "MIT"
  version "0.14.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.14.0", shell_output("#{bin}/debloat --version")
  end
end
