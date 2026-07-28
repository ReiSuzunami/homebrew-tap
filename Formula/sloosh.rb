class Sloosh < Formula
  desc "Persistent SSH sessions with human-approved host leases"
  homepage "https://github.com/ReiSuzunami/sloosh"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.2.2/sloosh-macos-universal.tar.gz"
      sha256 "b32cff83d4d267fc4fd5ba91318db9c8fc7a154941b940c6091ff93338ee6401"
    end
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.2.2/sloosh-macos-universal.tar.gz"
      sha256 "b32cff83d4d267fc4fd5ba91318db9c8fc7a154941b940c6091ff93338ee6401"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.2.2/sloosh-linux-x86_64-musl.tar.gz"
      sha256 "aa6c1f959f5621455054bbd3b51d1e0d7131488850a4d5879b84a99434a22a3e"
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
