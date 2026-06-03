class Meditate < Formula
  desc "Terminal breathing companion — paced breathing, soundscapes, and voice guides"
  homepage "https://github.com/walktalkmeditate/meditate-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.2.1/meditate-aarch64-apple-darwin.tar.gz"
      sha256 "d9c46dc731dd93c6bc3f753b4d73ac7cc80473ce5849c0ca389b47c3cf1aa24e"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.2.1/meditate-x86_64-apple-darwin.tar.gz"
      sha256 "ead9496b9596ae5687f570f13bc8dc0462247575e46205869e0705136b9c68d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/meditate-cli/releases/download/v0.2.1/meditate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae542102e688866c764695fc0502385ba26c3f32b8613d408ff5bfa6d852c5be"
    end
  end

  def install
    bin.install "meditate"
  end

  test do
    assert_match "meditate", shell_output("#{bin}/meditate --version")
  end
end
