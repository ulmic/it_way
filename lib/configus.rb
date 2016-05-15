Configus.build Rails.env do
  env :production do
    social_links do
      vk 'http://vk.com/it_way'
      twitter 'http://twitter.com/developerslogs'
    end
    links do
      lider 'http://ul-lider.ru'
      informat 'http://ulmic.ru/events/143'
      iamvolunteer 'http://ulmic-volunteers-school.herokuapp.com'
      aam 'http://ulmic.ru/events/69'
      ulmic 'http://ulmic.ru'
    end
    current_year 2016
  end

  env :development, parent: :production
  env :test, parent: :development
end
