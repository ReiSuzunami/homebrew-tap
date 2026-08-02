class Sloosh < Formula
  desc "Persistent SSH sessions with human-approved host leases"
  homepage "https://github.com/ReiSuzunami/sloosh"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.2.5/sloosh-macos-universal.tar.gz"
      sha256 "f373c7f22d170c1b826864926b866f0b68d35bf4cdca9e0c46c3349046e79eda"
    end
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.2.5/sloosh-macos-universal.tar.gz"
      sha256 "f373c7f22d170c1b826864926b866f0b68d35bf4cdca9e0c46c3349046e79eda"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_arm do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.2.5/sloosh-linux-x86_64-musl.tar.gz"
      sha256 "0b63a2a798cec4804415b8f1e99b494606114cb3b90c86a1c8c0b48c5b332215"
    end
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.2.5/sloosh-linux-x86_64-musl.tar.gz"
      sha256 "0b63a2a798cec4804415b8f1e99b494606114cb3b90c86a1c8c0b48c5b332215"
    end
  end

  def install
    bin.install "sloosh", "slooshd"
  end

  test do
    assert_equal "sloosh #{version}", shell_output("#{bin}/sloosh --version").strip
    assert_equal "slooshd #{version}", shell_output("#{bin}/slooshd --version").strip
  end
end
