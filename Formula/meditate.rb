class Meditate < Formula
  desc "Terminal breathing companion — paced breathing, soundscapes, and voice guides"
  homepage "https://github.com/walktalkmeditate/meditate-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.0/meditate-aarch64-apple-darwin.tar.gz"
      sha256 "95d3ba8c61192ab9dba7edd11e0418688750a34206fd53c3b5f7c0203f729fd2"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.0/meditate-x86_64-apple-darwin.tar.gz"
      sha256 "904e6c5c3a39f758b8ca97c9484d676bdb46369b2365c3274c5a5a8b9bb2b9fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.0/meditate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "615f36a90a87575a0fdeb5e96f1c3cb2d5d129cd53f56ba57b312a2b448d03b1"
    end
  end

  def install
    bin.install "meditate"
  end

  test do
    assert_match "meditate", shell_output("#{bin}/meditate --version")
  end
end
