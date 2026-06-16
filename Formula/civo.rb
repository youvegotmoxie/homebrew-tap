# typed: false
# frozen_string_literal: true

class Civo < Formula
  desc "Command-line tool for the Civo cloud"
  homepage "https://github.com/civo/cli"
  version "1.5.3"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/civo/cli/releases/download/v#{version}/civo-#{version}-darwin-amd64.tar.gz"
      sha256 "9439efee615b476a2869a4f0ce0356c2d9c508245cf1a332e007685d1a1bee73"
    elsif Hardware::CPU.arm?
      url "https://github.com/civo/cli/releases/download/v#{version}/civo-#{version}-darwin-arm64.tar.gz"
      sha256 "c3edf73f471225ba5c17a51cc0de61d4dc925edfbac21de3aa22b532335606f9"
    end
  end

  def install
    bin.install "civo" => "civo"
    generate_completions_from_executable(bin/"civo", "completion")
    prefix.install_metafiles
  end

  test do
    system "#{bin}/civo", "version"
  end
end
