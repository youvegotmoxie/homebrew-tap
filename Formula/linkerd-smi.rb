# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LinkerdSMI < Formula
  desc "Linkerd SMI Utility"
  homepage "https://github.com/linkerd/linkerd-smi"
  version "0.1.0"
  depends_on "linkerd"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/linkerd/linkerd-smi/releases/download/v0.1.0/linkerd-smi-0.1.0-darwin"
    sha256 "9e5b300d25b5cedd544f8ade5da765cf4038cef05a033ddb9bcdbd555b9ed3d4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/linkerd/linkerd-smi/releases/download/v0.1.0/linkerd-smi-0.1.0-darwin-arm64"
    sha256 "984c529d7d98f39ca7b99207a7a853e16e60272377d7b5af1fa19bc1fbe6bec6"
  end

  def install
    bin.install "linkerd-smi"
  end
end