class Talk < Formula
  desc "Terminal listening companion — speak a reflection, and it settles into a quiet file"
  homepage "https://github.com/walktalkmeditate/talk-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.2.1/talk-aarch64-apple-darwin.tar.gz"
      sha256 "6fa814e176734da9cdc2e7ebcc9025137a0df36cd7fbe23266e95175e1943b55"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.2.1/talk-x86_64-apple-darwin.tar.gz"
      sha256 "3717ab89f536c92dcb2ddacc91702e24bdf7a087428a20dee483f1ce740dc612"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.2.1/talk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7341deeadde65385d1bb9e8957db731e636d8bbab6023e449e1cd1fa88f8bb7"
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
