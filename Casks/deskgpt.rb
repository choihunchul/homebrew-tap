cask "deskgpt" do
  version "1.0.13"
  sha256 "0d0a9c419ecf273bf7ad07ae9f9829b007f4f25c869c4432f1234ca1b804aa3c"

  url "https://github.com/choihunchul/deskgpt/releases/download/v1.0.13/DeskGPT-1.0.13.dmg"
  name "DeskGPT"
  desc "Tiny native macOS wrapper for ChatGPT"
  homepage "https://github.com/choihunchul/deskgpt"

  app "DeskGPT.app"

  zap trash: [
    "~/Library/Preferences/com.myside.DeskGPT.plist",
    "~/Library/Application?Support/DeskGPT",
  ]
end
