module ApplicationHelper
	def isCurrentPath(path)
		#raise params.to_s + " ---  " + path.to_s + " --- - - " + url_for(params)
		return url_for(params) == path ? "active" : ""
	end
end
