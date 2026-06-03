class Meditate < Formula
  desc "Terminal breathing companion — paced breathing, soundscapes, and voice guides"
  homepage "https://github.com/walktalkmeditate/meditate-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.3/meditate-aarch64-apple-darwin.tar.gz"
      sha256 "af2ec4fcf74ba73bfc1da1d6c0e7bda32e7e463134d438acb1a743c1bb46d341"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.3/meditate-x86_64-apple-darwin.tar.gz"
      sha256 "b5ee23999239fd91c11acf4d19c4fa5961b502bd9daa5b24f1704498730c39bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.3/meditate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "828b544f9d25e6da851ab8be867d9cfb7c9b1810aba2247c2b1f08957ddd4f1e"
    end
  end

  def install
    bin.install "meditate"
  end

  test do
    assert_match "meditate", shell_output("#{bin}/meditate --version")
  end
end
