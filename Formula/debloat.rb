class Debloat < Formula
  desc "Interactive console util to toggle macOS launchd services (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "c8129ee39336965094765850c3017a789447931029185af039161d008090468e"
  license "MIT"
  version "0.1.1"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/debloat --version")
  end
end
