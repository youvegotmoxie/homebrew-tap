# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class K0sctl < Formula
  desc "k0s Management Tool"
  homepage "https://github.com/linkerd/linkerd-smi"
  version "0.12.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/k0sproject/k0sctl/releases/download/v0.12.6/k0sctl-darwin-x64"
    sha256 "e3f9b58049a5c71b69034dab07cceb457cdf30ff7608fed5cbdf51b6660d917d"
  end

  def install
    bin.install "k0sctl-darwin-x64" => "k0sctl"
  end
end
