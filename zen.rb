class Zen < Formula
  desc "A simple command launcher and alias manager"
  homepage "https://github.com/MaazSiddiqi/zen"
  url "https://github.com/MaazSiddiqi/zen/archive/v1.3.tar.gz"
  sha256 "79d12ed95d734400eb4e223d1352ceeb131d30b3c3abe4983c8c029fabff3943"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  def post_install
    puts "🧘 zen installed successfully!"
    puts ""
    puts "Set up the zz alias by adding this to your shell config:"
    puts "  echo 'alias zz=\"zen run\"' >> ~/.zshrc"
    puts ""
    puts "💡 Install fzf for interactive browsing: brew install fzf"
  end

  test do
    system "#{bin}/zen", "--help"
    assert_match "zen - A simple command launcher", shell_output("#{bin}/zen --help")
  end
end