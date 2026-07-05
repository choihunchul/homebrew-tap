cask "deskgpt" do
  version "1.0.11"
  sha256 "1eda65a6d757ca5d23f344094da3bd93b06e6485a7218ac927c082d63b87bb51"

  url "https://github.com/choihunchul/deskgpt/releases/download/v1.0.11/DeskGPT-1.0.11.dmg"
  name "DeskGPT"
  desc "Tiny native macOS wrapper for ChatGPT"
  homepage "https://github.com/choihunchul/deskgpt"

  app "DeskGPT.app"

  zap trash: [
    "~/Library/Preferences/com.myside.DeskGPT.plist",
    "~/Library/Application?Support/DeskGPT",
  ]
end
