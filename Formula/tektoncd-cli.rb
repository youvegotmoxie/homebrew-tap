# typed: false
# frozen_string_literal: true

class TektoncdCli < Formula
  desc "Tekton CLI - The command-line interface for interacting with Tekton"
  homepage "https://github.com/tektoncd/cli"
  version "0.45.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  if OS.mac?
    url "https://github.com/tektoncd/cli/releases/download/v#{version}/tkn_#{version}_Darwin_all.tar.gz"
    sha256 "328dded9706ea84214cc607d7c803e19cd55e9ea9d71c0eb919203dd65e50ee4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tektoncd/cli/releases/download/v#{version}/tkn_#{version}_Linux_x86_64.tar.gz"
      sha256 "c32a60b97388eb14e1ed2155b10bd7202aaf2e0a67ca7594b08fb96c1b94454b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tektoncd/cli/releases/download/v#{version}/tkn_#{version}_Linux_aarch64.tar.gz"
      sha256 "f11bc2f834a2ab845b24f40dc01faf4b41dfc3af142062bf38e44f3fb5358456"
    end
  end

  def install
    bin.install "tkn"
    bin.install_symlink "tkn" => "kubectl-tkn"
    generate_completions_from_executable(bin/"tkn", "completion")
    prefix.install_metafiles
  end

  test do
    system "#{bin}/tkn", "version"
  end
end
