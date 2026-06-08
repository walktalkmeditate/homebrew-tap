class Meditate < Formula
  desc "Terminal breathing companion — paced breathing, soundscapes, and voice guides"
  homepage "https://github.com/walktalkmeditate/meditate-cli"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.5.2/meditate-aarch64-apple-darwin.tar.gz"
      sha256 "96d75d08dafda6864d6d9833ebcd01b09a6290187fa051ce2774ee6af7c3f7c0"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.5.2/meditate-x86_64-apple-darwin.tar.gz"
      sha256 "911110937aee83f4ad1e94d61d6f306e018bac26827452e2f5295dc0bddfd69b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.5.2/meditate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f066a2ae66e8f1816aa56f09af27570d1dd4c998fb4435eb3c8a02a63f6f3dd"
    end
  end

  def install
    bin.install "meditate"
  end

  test do
    assert_match "meditate", shell_output("#{bin}/meditate --version")
  end
end
