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
      :randomizer => :create,
      :page_order_item => :create,
      :logic => :create,
      :logic_item => :create,
      :logic_action => :create,
      :questionnaire_variable => :create,
      :visibility => :create,
      :visibility_target => :create,
      :visibility_item => :create,

      # design
      :design => :design,
      :theme => :design,
      :font => :design,
      :google_font => :design,
      :transition => :design,
      :creative => :design,
      :creative_chain => :design,
      :custom_css => :design,

      # publish
      :collector => :publish,
      :collector_segment_chain => :publish,

      # result
      :panel => :result,
      :answer => :result,
      :segment => :result,
      :segment_filter => :result,

      # account
      :account => :account,
      :plan => :account,
      :invoice => :account,
      :inbox => :account,
      :invitation => :account,
      :receipt => :account,
      :mailchimp => :account

    }
  end

private
  def order
    self.class.roles.keys
  end
end
