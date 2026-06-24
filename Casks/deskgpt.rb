cask "deskgpt" do
  version "1.0.10"
  sha256 "3828bf547240a7a0280fd6e3f27fbe9861280e82094127582cf87a5caeb6793a"

  url "https://github.com/choihunchul/deskgpt/releases/download/v1.0.10/DeskGPT-1.0.10.dmg"
  name "DeskGPT"
  desc "Tiny native macOS wrapper for ChatGPT"
  homepage "https://github.com/choihunchul/deskgpt"

  app "DeskGPT.app"

  zap trash: [
    "~/Library/Preferences/com.myside.DeskGPT.plist",
    "~/Library/Application?Support/DeskGPT",
  ]
end
