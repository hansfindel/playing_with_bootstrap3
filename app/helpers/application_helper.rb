module ApplicationHelper
	def isCurrentPath(path)
		#raise params.to_s + " ---  " + path.to_s + " --- - - " + url_for(params)
		return url_for(params) == path ? "active" : ""
	end
	def navigation_link(name, link)
		content_tag(:li, link_to(name, link, class: "remote_loader"), class: "nav-link #{isCurrentPath(link)}")
	end
end
