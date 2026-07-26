class Sloosh < Formula
  desc "Persistent SSH sessions with human-approved host leases"
  homepage "https://github.com/ReiSuzunami/sloosh"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.2.0/sloosh-macos-universal.tar.gz"
      sha256 "c32b3e68d50acd7c7cef0773ee0832b8760ba5f7d438c4a738cd141975d390ee"
    end
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.2.0/sloosh-macos-universal.tar.gz"
      sha256 "c32b3e68d50acd7c7cef0773ee0832b8760ba5f7d438c4a738cd141975d390ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.2.0/sloosh-linux-x86_64-musl.tar.gz"
      sha256 "c4b05d3b1a68286ec729decfc6cef0ea93b3fcd405f4697cc2a7d58d93c6ef35"
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
