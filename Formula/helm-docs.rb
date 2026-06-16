# typed: false
# frozen_string_literal: true

class HelmDocs < Formula
  desc "Automatically generate markdown documentation for helm charts"
  homepage "https://github.com/norwoodj/helm-docs"
  version "1.14.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  if OS.mac?
    url "https://github.com/norwoodj/helm-docs/releases/download/v#{version}/helm-docs_#{version}_Darwin_x86_64.tar.gz"
    sha256 "b2f1ffd0feef8dc0901a38a2053481d1d67b63ca30da4ac774166c6b52fa2245"
  end

  def install
    bin.install "helm-docs"
    prefix.install_metafiles
  end

  test do
    system "#{bin}/helm-docs", "--version"
  end
end
