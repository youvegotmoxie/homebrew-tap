# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Talosctl < Formula
  desc "Talos Linux Utility"
  homepage "https://github.com/talos-systems/talos"
  version "v1.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/siderolabs/talos/releases/download/#{version}/talosctl-darwin-amd64"
    sha256 "c9585990b82047386d2d42f671da4f312c91f974961ecfdda9f396fa7cbdea7b"
  end

  def install
    bin.install "talosctl-darwin-amd64" => "talosctl"
  end
end
