require "language/node"
class HieroCli < Formula
  desc "Command-line interface for interacting with the Hedera network"
  homepage "https://github.com/hiero-ledger/hiero-cli"
  url "https://registry.npmjs.org/@hiero-ledger/hiero-cli/-/hiero-cli-0.11.1.tgz"
  sha256 "49ab436e5c79533c31c6b9072325779470cc0615832e81ffc3dac5ef900032d0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/hcli", "--help"
  end
end
