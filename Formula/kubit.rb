class Kubit < Formula
  desc "Kubecfg kubit operator"
  homepage "https://github.com/kubecfg/kubit"
  url "https://github.com/kubecfg/kubit/archive/refs/tags/v0.0.20.tar.gz"
  sha256 "cde13c0678bdfe384578ca94406c1bbf5c4cfacec2458a1522bfcdd5b7d2a372"
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
