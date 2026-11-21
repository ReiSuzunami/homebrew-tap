class Sloosh < Formula
  desc "Persistent SSH sessions with human-approved host leases"
  homepage "https://github.com/ReiSuzunami/sloosh"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.3.4/sloosh-macos-universal.tar.gz"
      sha256 "c440ecc3f1b42bef17923727070d503ac9b5191da6b3f6d83206ae36c9c6cbea"
    end
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.3.4/sloosh-macos-universal.tar.gz"
      sha256 "c440ecc3f1b42bef17923727070d503ac9b5191da6b3f6d83206ae36c9c6cbea"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_arm do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.3.4/sloosh-linux-x86_64-musl.tar.gz"
      sha256 "923b3d0ec12a09e79bf6b1a133f468cfcbde94d8de2f6d86126c1eb76ff2f77d"
    end
    on_intel do
      url "https://github.com/ReiSuzunami/sloosh/releases/download/v0.3.4/sloosh-linux-x86_64-musl.tar.gz"
      sha256 "923b3d0ec12a09e79bf6b1a133f468cfcbde94d8de2f6d86126c1eb76ff2f77d"
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
