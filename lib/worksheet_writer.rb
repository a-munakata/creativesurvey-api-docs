class WorksheetWriter
  attr_accessor :target_sheet, :header, :body

  def initialize(google_user, google_password, sheet_key, sheet_title)
    @session      = GoogleDrive.login(google_user, google_password)
    @worksheets   = @session.spreadsheet_by_key(sheet_key).worksheets
    @target_sheet = @worksheets.find{ |worksheet| worksheet.title == sheet_title }

    self
  end
end