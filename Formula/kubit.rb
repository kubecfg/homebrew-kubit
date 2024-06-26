class Kubit < Formula
  desc "Kubecfg kubit operator"
  homepage "https://github.com/kubecfg/kubit"
  url "https://github.com/kubecfg/kubit/archive/refs/tags/v0.0.17.tar.gz"
  sha256 "6066385d0d766341fa110095c63365e7dec5c70ab9d6f9b8d4c335f3c9aa7eb9"
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
