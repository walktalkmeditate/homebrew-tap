class Meditate < Formula
  desc "Terminal breathing companion — paced breathing, soundscapes, and voice guides"
  homepage "https://github.com/walktalkmeditate/meditate-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.5.1/meditate-aarch64-apple-darwin.tar.gz"
      sha256 "a75b08f09b9257d6252c28b9d62157d5d46066d168aafea56bc0e6d430f6735e"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.5.1/meditate-x86_64-apple-darwin.tar.gz"
      sha256 "81831d550fcad626a5b6f1ae61e8daf668c08b641cac94df92978a4d0516e1e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.5.1/meditate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d40f8c02e02840a2c1850c5e0e99e29f2c7cfa5774351cad6542bb4ba9b8a62f"
    end
  end

  def install
    bin.install "meditate"
  end

  test do
    assert_match "meditate", shell_output("#{bin}/meditate --version")
  end
end
