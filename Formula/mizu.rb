# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mizu < Formula
  desc "Mizu traffic inspection utility"
  homepage "https://github.com/up9inc/mizu"
  version "30.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/up9inc/mizu/releases/download/30.4/mizu_darwin_amd64"
    sha256 "2a2587083394772cc276895b54c6393a237f70cb6fe7105d88f6a78b72f1b528"
  end

  def install
    bin.install "mizu_darwin_amd64" => "mizu"
  end
end
