class Meditate < Formula
  desc "Terminal breathing companion — paced breathing, soundscapes, and voice guides"
  homepage "https://github.com/walktalkmeditate/meditate-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.1/meditate-aarch64-apple-darwin.tar.gz"
      sha256 "6da096b95ecfa55a3aa83d4ab601cd871ac07ca8218edaf81ba7c33db2aea853"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.1/meditate-x86_64-apple-darwin.tar.gz"
      sha256 "61549677942d1967034d93a6dda963ba1d2654b9e718bd6bd6ddcac60e8f3abe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.1.1/meditate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42f31c348edb4484643770e2659d99b1ecf07b0581b7940a1a7a8515580b8236"
    end
  end

  def install
    bin.install "meditate"
  end

  test do
    assert_match "meditate", shell_output("#{bin}/meditate --version")
  end
end
