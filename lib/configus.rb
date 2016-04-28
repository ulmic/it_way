Configus.build Rails.env do
  env :production do
    social_links do
      vk 'http://vk.com/it_way'
      twitter 'http://twitter.com/developerslogs'
    end
  end

  env :development, parent: :production
  env :test, parent: :development
end
