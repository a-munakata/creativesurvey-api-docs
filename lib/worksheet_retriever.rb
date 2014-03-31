# encoding: utf-8

class WorksheetRetriever
  attr_accessor :target_sheet, :header, :body

  def initialize(google_user, google_password)
    @session      = GoogleDrive.login(google_user, google_password)
    self
  end

  def retrieve(sheet_key, sheet_title, options = {})
    @worksheets   = @session.spreadsheet_by_key(sheet_key).worksheets
    @target_sheet = @worksheets.find{ |worksheet| worksheet.title == sheet_title }
    @options      = options

    @target_sheet.rows.to_a.tap{|rows|
      @options[:header] == true ? (@header = rows.first)   : (@header = nil)
      @options[:header] == true ? (@body   = rows.drop(1)) : (@body   = rows)
    }
  end
end
