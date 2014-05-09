namespace :assets do
  desc "Update Assets"
  task :update => :environment do
    system "bundle exec rake assets:precompile"

    origin_js  = File.join(Rails.root, "public/dev-assets/application.js")
    origin_css = File.join(Rails.root, "public/dev-assets/application.css")

    system "cp #{origin_js} #{File.join(Rails.root, "public/source/javascripts")}"
    system "cp #{origin_css} #{File.join(Rails.root, "public/source/stylesheets")}"

    system "rm -rf #{File.join(Rails.root, "public/dev-assets")}"
  end
end
