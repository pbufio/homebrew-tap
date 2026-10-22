# typed: false
# frozen_string_literal: true

class Pbuf < Formula
  desc "CLI for pbuf-registry — Protocol Buffers schema registry, multi-source vendoring, drift detection, and MCP server"
  homepage "https://pbuf.io"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pbufio/pbuf-registry/releases/download/v0.10.0/pbuf_0.10.0_darwin_amd64.tar.gz"
      sha256 "8fe7be39faab26c3b05f531d6cbb4a318c03c27cb356597ec14ee97ed96deff5"

      def install
        bin.install "pbuf"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pbufio/pbuf-registry/releases/download/v0.10.0/pbuf_0.10.0_darwin_arm64.tar.gz"
      sha256 "6768b967b7113109074dde5320e1cfceb71d62ece3944e88a1c02db1b07bc465"

      def install
        bin.install "pbuf"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/pbufio/pbuf-registry/releases/download/v0.10.0/pbuf_0.10.0_linux_amd64.tar.gz"
      sha256 "d180f04e26968ee705449e178ffe26a1565ff55a9a76b45efac75a5436ffb2cc"

      def install
        bin.install "pbuf"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pbufio/pbuf-registry/releases/download/v0.10.0/pbuf_0.10.0_linux_arm64.tar.gz"
      sha256 "c534adeb0722d58e6da1bd9eed05ad3770d8a517c9f314021566ad28c9bf797c"

      def install
        bin.install "pbuf"
      end
    end
  end

  test do
    system "#{bin}/pbuf", "--help"
  end
end
