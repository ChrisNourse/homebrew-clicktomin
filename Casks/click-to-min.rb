cask "click-to-min" do
  version "0.0.1-rc6"
  sha256 :no_check

  url "https://github.com/ChrisNourse/click-to-min/releases/download/v#{version}/ClickToMin-v#{version}.zip"
  name "ClickToMin"
  desc "Menu bar app: click an active app's Dock icon to minimize it"
  homepage "https://github.com/ChrisNourse/click-to-min"

  app "ClickToMin.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/ClickToMin.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.click-to-min.plist",
  ]
end
