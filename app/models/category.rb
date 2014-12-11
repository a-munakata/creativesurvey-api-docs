# encoding: utf-8

class Category
  attr_accessor :title,
                :name,
                :description

  def initialize(doc_file)
    @_header, @_body = Preamble.load(doc_file)
    @_base_name      = File.basename(doc_file, ".md")
  end

  def title
    @_header["title"]
  end

  def name
    @_header["name"].to_sym
  end

  def base_name
    @_base_name
  end

  def body
    @_body
  end

  def order_index
    order.index(name.to_sym).present? ? order.index(name.to_sym) : 999
  end

  def is_disabled
    @_header["is_disabled"]
  end

  def role
    self.class.roles[name].try(:to_sym)
  end

  def self.roles
    {
      # basic
      :overview => :basic,
      :user => :basic,
      :error_example => :basic,

      # create
      :survey => :create,
      :questionnaire => :create,
      :question => :create,
      :answer_item => :create,
      :sub_item => :create,
      :egression => :create,
      :page_order_item => :create,

      # design
      :design => :design,
      :theme => :design,
      :font => :design,
      :google_font => :design,
      :creative => :design,
      :creative_chain => :design,
      :transition => :design,
      :custom_css => :design,

      # publish
      :collector => :publish,
      :collector_segment_chain => :publish,

      # result
      :panel => :result,
      :answer => :result,
      :segment => :result,
      :segment_group => :result,
      :segment_item => :result,
      :segment_target => :result,
      :segment_filter => :result,
      :statistic => :result,
      :raw_datum => :result,

      # account
      :account => :account,
      :plan => :account,
      :inbox => :account,
      :receipt => :account,
      :invoice => :account,
      :mailchimp => :account,
      :notification => :account,
      :invitation => :account,

      #logic
      :randomizer => :logic,
      :questionnaire_variable => :logic,
      :logic => :logic,
      :logic_item => :logic,
      :logic_action => :logic,
      :visibility => :logic,
      :visibility_item => :logic,
      :visibility_target => :logic,

      # answer
      :panel_reply => :answer


    }
  end

private
  def order
    self.class.roles.keys
  end
end
