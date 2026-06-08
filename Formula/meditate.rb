class Meditate < Formula
  desc "Terminal breathing companion — paced breathing, soundscapes, and voice guides"
  homepage "https://github.com/walktalkmeditate/meditate-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.5.0/meditate-aarch64-apple-darwin.tar.gz"
      sha256 "a5aa026b71ef22d460d3a5482436fc158df6e8c535029fd1f76bf45330ea83c6"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.5.0/meditate-x86_64-apple-darwin.tar.gz"
      sha256 "f27326d585bb2ca8b425947b9c2a58af34bc10be88b033311ebd4e0b3ec6d544"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.5.0/meditate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a951dee0b8245b5f62b3aa87f08f8d18fa9f00c84a15ab8e213eaf3365e9451b"
    end
  end

  def install
    bin.install "meditate"
  end

  test do
    assert_match "meditate", shell_output("#{bin}/meditate --version")
  end
end
