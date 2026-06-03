class Meditate < Formula
  desc "Terminal breathing companion — paced breathing, soundscapes, and voice guides"
  homepage "https://github.com/walktalkmeditate/meditate-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.2.0/meditate-aarch64-apple-darwin.tar.gz"
      sha256 "7db45762b0884c3818c5726bb396f41de7ec3fef32882359be32dcc69a9abde6"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.2.0/meditate-x86_64-apple-darwin.tar.gz"
      sha256 "20dd00c541a3176d52df58721be6b2190ae89c694c7a0c3a8b934e0c9d9f5ad0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.2.0/meditate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a93d79705f61c526c1831fcedd8a4dbe62e5869b3c3864e4e34380252161be5"
    end
  end

  def install
    bin.install "meditate"
  end

  test do
    assert_match "meditate", shell_output("#{bin}/meditate --version")
  end
end
