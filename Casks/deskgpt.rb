cask "deskgpt" do
  version "1.0.12"
  sha256 "f4f4577ebc718a908f43e099cdd6088f1cdc67233db96c079b4a2e068850bff8"

  url "https://github.com/choihunchul/deskgpt/releases/download/v1.0.12/DeskGPT-1.0.12.dmg"
  name "DeskGPT"
  desc "Tiny native macOS wrapper for ChatGPT"
  homepage "https://github.com/choihunchul/deskgpt"

  app "DeskGPT.app"

  zap trash: [
    "~/Library/Preferences/com.myside.DeskGPT.plist",
    "~/Library/Application?Support/DeskGPT",
  ]
end
