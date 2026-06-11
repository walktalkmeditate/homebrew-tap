class Talk < Formula
  desc "Terminal listening companion — speak a reflection, and it settles into a quiet file"
  homepage "https://github.com/walktalkmeditate/talk-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.2.2/talk-aarch64-apple-darwin.tar.gz"
      sha256 "d641f78a96d18ad9a7d009ad875e37284a49a664beb78215366c0c211cfc6cbd"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.2.2/talk-x86_64-apple-darwin.tar.gz"
      sha256 "f1db3f78bdcd3ac6765e7f985aa39d780cad726efb1adb3b9f0988136d3c306b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.2.2/talk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3d81afdd5ba11a5b01e438ffbbdc55b4dd98dd1c4b09cf37bd9d578a950d941"
    end
  end

  def install
    bin.install "talk"
  end

  def caveats
    "talk fetches its speech models on first run: run `talk download models` (~330 MB)."
  end

  test do
    assert_match "talk", shell_output("#{bin}/talk --version")
  end
end
