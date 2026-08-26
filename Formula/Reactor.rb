class Reactor < Formula
  desc "Reactor Standalone is a package manager for BMD Fusion Studio, Resolve (Free), Resolve Studio, Assimilate Scratch and LiveFX, OpenFX, JangaFX, SideFX Houdini, and LightWave."
  homepage "https://github.com/Kartaverse/Reactor-Standalone"
  version "4.0.5-b37"
  license "GPL"

  on_macos do
    on_intel do
      url "https://github.com/Kartaverse/Reactor-Standalone/releases/download/4.0.5/reactor-for-mac-universal-v4-beta-37.zip"
      sha256 "d5f83b917f3ef0b562e87f9ea00918d730943f4b03264ea8d384f2861eb0c121"
    end
    on_arm do
      url "https://github.com/Kartaverse/Reactor-Standalone/releases/download/4.0.5/reactor-for-mac-universal-v4-beta-37.zip"
      sha256 "d5f83b917f3ef0b562e87f9ea00918d730943f4b03264ea8d384f2861eb0c121"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Kartaverse/Reactor-Standalone/releases/download/4.0.5/reactor-for-linux-x64-v4-beta-37.zip"
      sha256 "f735e298451bcd7c10d98d997fa847b23a4088891aa3602308bc6cceaee4c8fd"
    end
  end

  resource "reactor-content" do
    url "https://github.com/Kartaverse/Reactor-Docs/releases/download/4.1/reactor-manual-install.zip"
    sha256 "563be950a983fa387f4d12d008580611f0de459d96de0b3191f1a9884a44d0c0"
  end

  def install
    if OS.mac?
      root = File.directory?("reactor-for-mac-universal-v4-beta-37") ? "reactor-for-mac-universal-v4-beta-37" : "."
      
      libexec.install Dir["#{root}/Reactor.app"]
      bin.install_symlink libexec/"Reactor.app/Contents/MacOS/Reactor"
    elsif OS.linux?
      root = File.directory?("reactor-for-linux-x64-v4-beta-37") ? "reactor-for-linux-x64-v4-beta-37" : "."
      
      libexec.install Dir["#{root}/*"]
      
      desktop_file = "#{root}/Reactor/Reactor Standalone.desktop"
      if File.exist?(desktop_file)
        app_menu_target = Pathname.new(File.expand_path("~/.local/share/applications"))
        app_menu_target.mkpath unless app_menu_target.exist?
        FileUtils.cp(desktop_file, app_menu_target)
        chmod "+x", app_menu_target/"Reactor Standalone.desktop"
        
        desktop_target = Pathname.new(File.expand_path("~/Desktop"))
        if desktop_target.directory? && desktop_target.writable?
          FileUtils.cp(desktop_file, desktop_target)
          chmod "+x", desktop_target/"Reactor Standalone.desktop"
        end
      end
    else
      odie "Reactor is not supported on this platform."
    end
    
    font_dir = "#{root}/Fonts"
    if Dir.exist?(font_dir)
      fonts_target = OS.mac? ? Pathname.new(File.expand_path("~/Library/Fonts")) : Pathname.new(File.expand_path("~/.local/share/fonts"))
      fonts_target.mkpath unless fonts_target.exist?
      
      Dir.glob("#{font_dir}/*.ttf").each do |font|
        FileUtils.cp(font, fonts_target)
      end
    end
    
    reactor_home = Pathname.new(File.expand_path("~/Reactor"))
    reactor_home.mkpath unless reactor_home.exist?
    
    resource("reactor-content").stage do
      FileUtils.cp_r(Dir["Reactor/*"], reactor_home)
    end
  end

  def caveats
    <<~EOS
      Reactor has been installed!
      
      macOS:
        - The app bundle is in #{libexec}/Reactor.app
        - CLI available via: reactor
        - Fonts have been installed to ~/Library/Fonts/
        - User data folder populated at ~/Reactor/
        
      Linux:
        - Binary installed to #{bin}/reactor
        - Fonts have been installed to ~/.local/share/fonts/
        - Desktop shortcut installed to ~/Desktop/ and ~/.local/share/applications/
        - User data folder populated at ~/Reactor/
      
      LINUX DEPENDENCIES (if Reactor fails to launch):
        
        Ubuntu / Mint:
          sudo apt update
          sudo apt install libunwind-dev libgtk-3-dev gstreamer1.0-plugins-base libsoup2.4-dev libpango1.0-dev
        
        Rocky Linux 8 / RHEL 8:
          sudo dnf upgrade -y
          sudo dnf config-manager --set-enabled powertools
          sudo dnf install epel-release libunwind gtk3 gtk3-devel gstreamer1 gstreamer1-plugins-base libsoup-devel pango pango-devel
        
        Rocky Linux 9 / RHEL 9:
          sudo dnf upgrade -y
          sudo dnf config-manager --enable crb
          sudo dnf install epel-release libunwind gtk3 gtk3-devel gstreamer1 gstreamer1-plugins-base libsoup-devel pango pango-devel
      
      WEBKIT RENDERING ISSUES (Linux):
        If text is not visible in Reactor, add these environment variables:
        
          export GDK_BACKEND=x11
          export WEBKIT_FORCE_SANDBOX=0
          export WEBKIT_DISABLE_DMABUF_RENDERER=1
          export WEBKIT_DISABLE_COMPOSITING_MODE=1
        
        Add them to ~/.bashrc or ~/.profile for persistence.
    EOS
  end

  def post_install
    # Install Linux system dependencies (optional)
    if OS.linux? && ENV["HOMEBREW_REACTOR_AUTO_DEPS"] == "1"
      install_linux_deps
    end
  rescue
    # If any step fails, don't block the formula install
  end

  def install_linux_deps
    return unless OS.linux?
    
    if command?("apt-get")
      system "sudo", "apt-get", "install", "-y",
        "libunwind-dev",
        "libgtk-3-dev",
        "gstreamer1.0-plugins-base",
        "libsoup2.4-dev",
        "libpango1.0-dev"
    elsif command?("dnf")
      repo_cmd = if File.read("/etc/os-release").include?("VERSION_ID=\"9")
        ["dnf", "config-manager", "--enable", "crb"]
      else
        ["dnf", "config-manager", "--set-enabled", "powertools"]
      end
      
      system "sudo", *repo_cmd unless command?("dnf") && system("dnf", "repoinfo", "powertools", out: File::NULL, err: File::NULL)
      
      system "sudo", "dnf", "install", "-y",
        "epel-release",
        "libunwind",
        "gtk3",
        "gtk3-devel",
        "gstreamer1",
        "gstreamer1-plugins-base",
        "libsoup-devel",
        "pango",
        "pango-devel"
    end
  end

  def command?(cmd)
    system("which", cmd, out: File::NULL, err: File::NULL)
  end
end