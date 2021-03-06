# encoding: utf-8

require "preamble"

class Entry
  attr_accessor :header,
                :body,
                :title,
                :file_name,
                :category_id,
                :priority,
                :is_disabled,
                :method,
                :parent_klass,
                :action,
                :request_path,
                :parent_resource_name,
                :resource_name

  def initialize(doc_file, options=nil)
    @_header, @_body = Preamble.load(doc_file)
    @_base_name      = File.basename(doc_file, ".md")
    @_file_name      = doc_file
  end

  def header;       @_header                 end
  def body;         @_body                   end
  def title;        @_header["title"]        end
  def base_name;    @_base_name              end
  def is_disabled;  @_header["is_disabled"]  end
  def action;       @_header["action"]       end
  def parent_klass; @_header["parent_klass"] end

  def order_index
    order.index(action.try(:to_sym)).present? ? order.index(action.try(:to_sym)) : 999
  end

  def parent_klass_order_index
    parent_klass_order.index(parent_klass.try(:to_sym)).present? ? parent_klass_order.index(parent_klass.try(:to_sym)) : 999
  end

  def method
    @_body.match(/(?<=`).*(?=`)/).to_s.match(/[A-Z]*(?=\s)/).to_s.downcase.to_sym
  end

  def parent_resource_name
    splitted_path = @_body.match(/(?<=`).*(?=`)/).to_s.gsub(/.*\/api\/.*?\/.*?/,"/").split("/").select{|a| a.present? }
    splitted_path.length > 1 ? splitted_path.first.try(:singularize).try(:to_sym) : nil
  end

  def resource_name
    @_header["category_name"].to_sym
  end

  def file_name
    @_file_name
  end

  def static_response
    response = @_body.scan(/レスポンス例.*?}$/m).
      first.
      gsub(/レスポンス例\n/, "").
      gsub(/,\n?\s\s\{\.\.\.},\n\s\s\{\.\.\.}/, "")

    @_body.match(/^\[/) ? JSON.parse(response + "]").first : JSON.parse(response)
  end

  alias_method :category_name, :resource_name

  private
  def order
    [
      :create,
      :publish,
      :abort,
      :index,
      :update,
      :show,
      :delete,

      :copy,
      :order,
      :preview_order,

      :subscribe,
      :unsubscribe,
      :update_card,
      :destroy_card,
      :share_account,
      :connect_account,
      :disconnect_account,
      :remove_invitation,
      :share_account_sample,

      :avatar,
      :colors,
      :upsell,
      :mailchimp,
      :update_mailchimp,

      :preview_show,
      :preview_update,
      :preview_jump
    ]
  end

  def parent_klass_order
    [
      :question,
      :answer_item,
      :sub_item,
      :collector,
      :segment
    ]
  end

end
