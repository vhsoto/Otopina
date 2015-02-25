module AdverseEventsHelper
	def embarazada
		content_tag(:span, "SI", class: "label label-danger")
	end

	def no_embarazada
		content_tag(:span, "NO", class: "label label-success")
	end
end
