# encoding: utf-8

require "lib/worksheet_retriever"

class Doc

  def initialize
    @session   = WorksheetRetriever.new(ENV["GOOGLE_USER"], ENV["GOOGLE_PASSWORD"])
    @sheet_key = "0Am0QUayhmLItdGlrSkRkckVJcFY0LVBiOUlmMzRTc0E"
  end

  %w(variables categories entries).each do |page_name|
    class_eval <<-EOS
      def #{page_name}_data
        @_#{page_name}_data ||= @session.retrieve(@sheet_key, "#{page_name}")
        @_#{page_name}_data
      end

      def formatted_#{page_name}
        result = {}
        header = #{page_name}_data.try(:first)

        #{page_name}_data.present? && #{page_name}_data.drop(1).collect.with_index{|data, index|
          result[data.try(:first).try(:to_i)] = {}.tap{ |datum|
            header.each_with_index{ |h, _index|
              datum[header[_index]] = data[_index]
            }
          }
        }

        result
      end

      def #{page_name}
        result = []
        header = #{page_name}_data.try(:first)

        #{page_name}_data.present? && #{page_name}_data.drop(1).collect.with_index{|data, index|
          result << {}.tap{ |datum|
            header.each_with_index{ |h, _index|
              datum[header[_index]] = data[_index]
            }
          }
        }

        result
      end
    EOS
  end

end