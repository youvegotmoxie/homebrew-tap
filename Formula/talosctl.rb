# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Talosctl < Formula
  desc "Talos Linux Utility"
  homepage "https://github.com/talos-systems/talos"
  version "v0.14.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/talos-systems/talos/releases/download/v0.14.3/talosctl-darwin-amd64"
    sha256 "b0f5a366837cc08df06c8fbcdb0d307d1a7c980d772ff79bcbe04999e336a704"
  end

  def install
    bin.install "talosctl-darwin-amd64" => "talosctl"
  end
end