class Meditate < Formula
  desc "Terminal breathing companion — paced breathing, soundscapes, and voice guides"
  homepage "https://github.com/walktalkmeditate/meditate-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.2/meditate-aarch64-apple-darwin.tar.gz"
      sha256 "167a15a66e54f16beda5fc06992cb22c90f1cb380fcad8dc3abf7fa5cf186c70"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.2/meditate-x86_64-apple-darwin.tar.gz"
      sha256 "cc1df43d810421a2e42d78ba84885f8aa4f693a6be042cbc88273972cfb790a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.2/meditate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf7337e9d41715414248b59003a5625d6bbb1b3f5a76b211db6ebce37d9faf7a"
    end
  end

  def install
    bin.install "meditate"
  end

  test do
    assert_match "meditate", shell_output("#{bin}/meditate --version")
  end
end
