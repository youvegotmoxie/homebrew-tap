class Hubble < Formula
  desc "Observability tool for Cilium CNI"
  homepage "https://github.com/cilium/hubble"
  version "1.19.4"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/cilium/hubble/releases/download/v#{version}/hubble-darwin-amd64.tar.gz"
      sha256 "a7da3a17132b3ae97b59e6f8a58d2751a414779421de8c0596bc0f1e464166a4"
    elsif Hardware::CPU.arm?
      url "https://github.com/cilium/hubble/releases/download/v#{version}/hubble-darwin-arm64.tar.gz"
      sha256 "7634532a50bae27e83dfaa8a2a8b1971024cd1e778aa15dc59e288daa3af4978"
    end
  end

  def install
    bin.install "hubble" => "hubble"
    generate_completions_from_executable(bin/"hubble", "completion")
    prefix.install_metafiles
  end

  test do
    system "#{bin}/hubble", "version"
  end
end
