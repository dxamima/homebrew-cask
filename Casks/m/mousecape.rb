cask "mousecape" do
    version "3.0.0"
    sha256 "b76851fe2b1bc48e7b0327f49c76f9fc8aa82842d26dcb503a7e9fc595f5a538"
  
    url "https://github.com/alexzielenski/Mousecape/releases/download/#{version}/Mousecape_#{version}.zip"
    name "Mousecape"
    desc "A free cursor manager for Mac OS 10.8+ built using private, nonintrusive CoreGraphics APIs."
    homepage "https://github.com/alexzielenski/Mousecape/"
  
    livecheck do
      url :url
      strategy :github_latest
    end
  
    depends_on macos: ">= :mountain_lion"
  
    app "MiddleClick.app"
    appcast 'https://github.com/alexzielenski/Mousecape/releases.atom'
  end