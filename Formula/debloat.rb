class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "0fcdc711cfc3ee577b688763575f827ffdaeb86122d8e8f93bd83388a45e0dca"
  license "MIT"
  version "0.5.2"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.5.2", shell_output("#{bin}/debloat --version")
  end
end
