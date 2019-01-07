ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent News" do
          ul do
            News.order("created_at asc").last(10).map do |news|
              li link_to(news.title, admin_news_path(news))
            end
          end
        end
      end

      column do
        panel "Info" do
          para "Welcome to ActiveAdmin User."
        end
      end
    end
  end
end
