class Sloosh < Formula
  desc "Persistent SSH sessions with human-approved host leases"
  homepage "https://github.com/ReiSuzunami/sloosh"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.3.3/sloosh-macos-universal.tar.gz"
      sha256 "87f77dc239af7d1dda4ba49c6a573c434068c41d56ea9e65c281f398e9708b73"
    end
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.3.3/sloosh-macos-universal.tar.gz"
      sha256 "87f77dc239af7d1dda4ba49c6a573c434068c41d56ea9e65c281f398e9708b73"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_arm do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.3.3/sloosh-linux-x86_64-musl.tar.gz"
      sha256 "ed86341e33851e57065a3257c62603e410518a35cd5a080dd818eb613e617e2c"
    end
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.3.3/sloosh-linux-x86_64-musl.tar.gz"
      sha256 "ed86341e33851e57065a3257c62603e410518a35cd5a080dd818eb613e617e2c"
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
