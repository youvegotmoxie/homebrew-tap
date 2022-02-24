# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mizu < Formula
  desc "Mizu traffic inspection utility"
  homepage "https://github.com/up9inc/mizu"
  version "27.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/up9inc/mizu/releases/download/27.2/mizu_darwin_amd64"
    sha256 "73250b33d2e02cb7133e2724f75913278687d69615849d3793666d77eb437365"
  end

  def install
    bin.install "mizu_darwin_amd64" => "mizu"
  end
end
