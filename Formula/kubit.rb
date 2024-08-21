class Kubit < Formula
  desc "Kubecfg kubit operator"
  homepage "https://github.com/kubecfg/kubit"
  url "https://github.com/kubecfg/kubit/archive/refs/tags/v0.0.19.tar.gz"
  sha256 "c1e95ff84d0351dc7ab52a176b70da3254c230f959cb18ccce37e016ee0c29ad"
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
