class Meditate < Formula
  desc "Terminal breathing companion — paced breathing, soundscapes, and voice guides"
  homepage "https://github.com/walktalkmeditate/meditate-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.4.0/meditate-aarch64-apple-darwin.tar.gz"
      sha256 "5fc03da36bdd78ffe41d44a496ab3249f1a033f363eae66cb29cf4ea300a0d8e"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.4.0/meditate-x86_64-apple-darwin.tar.gz"
      sha256 "7d0c4362ea5909e4e901bd5034858700a5ebe2f194a6848243cc621774d0e042"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.4.0/meditate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea8cc0e7a47924a4536b8ab7f00798de1f8948a88c04919ed85a123d69ca08e2"
    end
  end

  def install
    bin.install "meditate"
  end

  test do
    assert_match "meditate", shell_output("#{bin}/meditate --version")
  end
end
