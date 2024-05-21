class Kubit < Formula
  desc "Kubecfg kubit operator"
  homepage "https://github.com/kubecfg/kubit"
  url "https://github.com/kubecfg/kubit/archive/refs/tags/v0.0.16.tar.gz"
  sha256 "3e9be8d0e278a6ec8618ec4767250faf3f38a30a946da8d333bf5ef25d428cd1"
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
