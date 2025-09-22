class Zen < Formula
  desc "A simple command launcher and alias manager"
  homepage "https://github.com/MaazSiddiqi/zen"
  url "https://github.com/MaazSiddiqi/zen/archive/v1.2.tar.gz"
  sha256 "10eb186bed9daffbe9f014fa069996bba24cbd8010b5e0b8b373f4a2d96da1d4"
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