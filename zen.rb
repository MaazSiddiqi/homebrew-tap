class Zen < Formula
  desc "A simple command launcher and alias manager"
  homepage "https://github.com/MaazSiddiqi/zen"
  url "https://github.com/MaazSiddiqi/zen/archive/v1.1.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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