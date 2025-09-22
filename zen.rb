class Zen < Formula
  desc "A simple command launcher and alias manager"
  homepage "https://github.com/MaazSiddiqi/zen"
  url "https://github.com/MaazSiddiqi/zen/archive/v0.1.0.tar.gz"
  sha256 "c8b01a2b5f72e9c71c6b4b72a4e5f42a4a5d8e04b1c9d1e2f3a0b5c6d7e8f9a0"
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