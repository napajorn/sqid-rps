module ApplicationHelper

 def flash_output(text, type)
 	content_tag :div, class: "flash-#{type}" do
    	text
  end
  flash.discard
 end
 
 def flash_class(level)
    case level
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :error then "alert alert-error"
        when :alert then "alert alert-error"
    end
 end
 
end
