cask "deskgpt" do
  version "1.0.15"
  sha256 "19c157fde5a4f5b6f919af6c07ddf527c6fc364e045b4452bf53048e0c16b0c3"

  url "https://github.com/choihunchul/deskgpt/releases/download/v1.0.15/DeskGPT-1.0.15.dmg"
  name "DeskGPT"
  desc "Tiny native macOS wrapper for ChatGPT"
  homepage "https://github.com/choihunchul/deskgpt"

  app "DeskGPT.app"

  zap trash: [
    "~/Library/Preferences/com.myside.DeskGPT.plist",
    "~/Library/Application?Support/DeskGPT",
  ]
end
