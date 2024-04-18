class Kubit < Formula
  desc "Kubecfg kubit operator"
  homepage "https://github.com/kubecfg/kubit"
  url "https://github.com/kubecfg/kubit/archive/v0.0.15.tar.gz"
  sha256 "96f9d1d7616e1b4047795478d96d41899f06eb650d4fffa3438459f4ed9aef4b"
  license "Apache-2.0"
  head "https://github.com/kubecfg/kubit.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/kubit", "--version"
  end
end
