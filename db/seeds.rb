# encoding: utf-8

Dir.glob("#{Rails.root}/seeds/md/*") do |category_dir|
  category_name = File.basename(category_dir)

  category = Category.find_or_initialize_by_anchor_name(category_name).tap do |category|
    category.save
  end

  puts "seeded category: #{category_name}"

  Dir.glob("#{Rails.root}/seeds/md/#{category_name}/**/*.md") do |markdown_file|
    anchor_name = File.basename( markdown_file, ".*" )

    begin
      Doc.find_or_initialize_by_category_id_and_anchor_name( category.id, anchor_name ).tap do |doc|
        doc.source = File.read( markdown_file )
        doc.save!
      end
    rescue => e
      puts "exception raised at : #{anchor_name}"
      raise e
    end

  end
end