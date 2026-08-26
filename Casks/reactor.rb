cask "reactor" do
  name "Reactor"
  desc "Reactor Standalone is a package manager for BMD Fusion Studio, Resolve (Free), Resolve Studio, Assimilate Scratch and LiveFX, OpenFX, JangaFX, SideFX Houdini, and LightWave."

  version "4.0.5-b37"
  
  on_intel do
    sha256 "d5f83b917f3ef0b562e87f9ea00918d730943f4b03264ea8d384f2861eb0c121"
  end
  
  on_arm do
    sha256 "d5f83b917f3ef0b562e87f9ea00918d730943f4b03264ea8d384f2861eb0c121"
  end

  url "https://github.com/Kartaverse/Reactor-Standalone/releases/download/4.0.5/reactor-for-mac-universal-v4-beta-37.zip"

  app "Reactor.app"
  
  font "Fonts/Inter-Italic-VariableFont_opsz,wght.ttf"
  font "Fonts/Inter-VariableFont_opsz,wght.ttf"
  font "Fonts/RobotoMono-Italic-VariableFont_wght.ttf"
  font "Fonts/RobotoMono-VariableFont_wght.ttf"

  postflight do
    # Install ~/Reactor/ user data folder from reactor-manual-install.zip
    system "curl", "-L", "-o", "#{staged_path}/reactor-manual-install.zip",
           "https://github.com/Kartaverse/Reactor-Docs/releases/download/4.1/reactor-manual-install.zip"
    
    if File.exist?("#{staged_path}/reactor-manual-install.zip")
      system "unzip", "-o", "#{staged_path}/reactor-manual-install.zip", "-d", staged_path.to_s
      
      reactor_home = File.expand_path("~/Reactor")
      FileUtils.mkdir_p(reactor_home) unless File.exist?(reactor_home)
      
      if Dir.exist?("#{staged_path}/Reactor")
        system "cp", "-r", "#{staged_path}/Reactor/"+".", reactor_home
      end
    end
  end

  caveats <<~EOS
    Reactor has been installed!
    
    - App installed to /Applications/Reactor.app
    - Fonts have been installed to ~/Library/Fonts/
    - User data folder populated at ~/Reactor/
    
    CLI Access:
      Open Terminal and run: /Applications/Reactor.app/Contents/MacOS/Reactor
      
    Or create a shell alias in ~/.zshrc:
      echo 'alias reactor="/Applications/Reactor.app/Contents/MacOS/Reactor"' >> ~/.zshrc
  EOS
end