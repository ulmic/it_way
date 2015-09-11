Configus.build Rails.env do
  env :production do
    social_links do
      facebook 'https://www.facebook.com/smilefilmstudio'
      instagram 'http://instagram.com/smilefilmstudio'
      vk do
        ulsk 'http://vk.com/smilefilm'
        msk 'http://vk.com/smilefilmmsk'
        spb 'http://vk.com/smilefilmspb'
        kzn 'http://vk.com/smilefilmkazan'
        samara 'http://vk.com/club77516849'
        all 'http://vk.com/a.klyanchin'
      end
      vimeo 'http://vimeo.com/smilefilm'
    end
    email 'smile@smilefilm.ru'
    phones ['+7 (925) 845-72-59', '+7 (960) 372-74-79']
  end

  env :staging, parent: :production do
    mailer do
      from "info@ul-lider.ru"
    end

    host "ul-lider.ru"

    basic_auth do
      username "user"
      password "staging"
    end
  end

  env :development, parent: :staging do
  end

  env :test, parent: :development do
  end
end
