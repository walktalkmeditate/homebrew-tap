class Meditate < Formula
  desc "Terminal breathing companion — paced breathing, soundscapes, and voice guides"
  homepage "https://github.com/walktalkmeditate/meditate-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.3.0/meditate-aarch64-apple-darwin.tar.gz"
      sha256 "873cf093421450c5fbcd3e799605d10415a9c52a93b724d4ed1e612177116390"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.3.0/meditate-x86_64-apple-darwin.tar.gz"
      sha256 "3a478b97bad572aef20c70bb955ee5b935d15528c618f9873abcba66679771c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.3.0/meditate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a13b47420c141611afdacdc0d22d27c1160efdc17d1910c6cc06d5482b96714"
    end
  end

  def install
    bin.install "meditate"
  end

  test do
    assert_match "meditate", shell_output("#{bin}/meditate --version")
  end
end
