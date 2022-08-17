Rails.application.routes.draw do
  # 首頁
  root to: "home#index"
  get "index", to: "home#index"

  # LINE Login 登入
  devise_for :users, controllers: {
    omniauth_callbacks: 'omniauth_callbacks'
  }

  # 加入好友時的自我介紹訊息
  get "follow", to: "home#follow"

  # 加入群組時的自我介紹訊息
  get "join", to: "home#follow"

  # 有人加入群組時的歡迎訊息
  get "memberJoined", to: "home#member_join"

  # todo
  resources :todos

  # menu
  get "menu", to: "home#menu"
  get "目錄", to: "home#menu"

  # 查天氣
  get "(*location)天氣(*other)", to: "weather#show"

  # 學說話
  get "學 (*keyword) (*message)", to: 'home#learn'

  # 測試用
  get "test", to: "home#test"
  get "debug", to: "home#debug"

  # 測試用2
  get "診所資訊", to: "home#information"
  get "療程項目", to: "home#laser"

  # 查詢當下的使用者
  get "profile", to: "home#profile"

  # LIFF 分享好友
  get "send_test_messages", to: "home#send_test_messages"
  get "share_bot", to: "home#share_bot"
  get "share_bot_flex", to: "home#share_bot_flex"
end
