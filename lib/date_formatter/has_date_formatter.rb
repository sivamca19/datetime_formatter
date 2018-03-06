require 'active_support'
module DateFormatter
 module HasDateFormatter
    def has_date_formatter(options = {})
      # custom format fields in hash format
      format_fields = (options[:custom_format] || {})
      # date time format
      default_format = options[:format] || "%d/%m/%Y"

      # if custom format fileds is empty then default created_at & updated_at
      format_fields.merge!({created_at: default_format}) unless format_fields.keys.include?(:created_at)

      format_fields.merge!({updated_at: default_format}) unless format_fields.keys.include?(:updated_at)

      format_fields.each do |attribute, field_format|
        define_method :"#{attribute}" do
          begin
            self[attribute].strftime(field_format || default_format)
          rescue
            self[attribute]
          end
        end

        define_method :"or_#{attribute}" do
          self[attribute]
        end
      end
   end
 end
end
ActiveSupport.on_load :active_record do
 send :extend, DateFormatter::HasDateFormatter
end
