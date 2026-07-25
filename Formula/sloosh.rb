class Sloosh < Formula
  desc "Persistent SSH sessions with human-approved host leases"
  homepage "https://github.com/ReiSuzunami/sloosh"
  version "0.1.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.1.0/sloosh-macos-universal.tar.gz"
      sha256 "cfdbc15e9360fae5279f2adae58d9a5b40224d3b56259fa27b5f4dbb5bf78f80"
    end
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.1.0/sloosh-macos-universal.tar.gz"
      sha256 "cfdbc15e9360fae5279f2adae58d9a5b40224d3b56259fa27b5f4dbb5bf78f80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.1.0/sloosh-linux-x86_64-musl.tar.gz"
      sha256 "e3782b3c31adb949b516bd6dafbdd715ff3f325ef429f198f5f7ee8fb72fe88e"
    end
  end

  def install
    bin.install "sloosh"
  end

  test do
    assert_equal "sloosh #{version}", shell_output("#{bin}/sloosh --version").strip
  end
end
