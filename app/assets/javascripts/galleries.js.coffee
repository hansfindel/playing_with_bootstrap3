# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	# gallery for gallery::modal
	if $("#gallery_modal").length > 0
		$(".gallery .image a").click ->
			url = $(this).data("url")
			index = $(this).data("index")
			setModalImage(url, index)
			return true

		getGalleryCount = () ->
			count = $(".gallery_count").data("count")
			if count == ""
				count = $(".gallery .image").length
				$(".gallery_count").data("count", count)
				return count
			else
				return count	

		$("a.carousel-control").click (e)->
		  e.preventDefault()
		  target = $(this).data("target")
		  selector = ".gallery .image a.image_"+target
		  # console.log(selector)
		  url = $(selector).data("url")
		  index = $(selector).data("index")
		  # console.log(url)
		  # console.log(index)
		  setModalImage(url, index)

		setModalImage = (url, index) ->
			total = getGalleryCount()
			img = $("#gallery_modal #gallery-carousel img") 
			$(img).attr("src", url)
			prev = index - 1
			if prev < 0
				prev = index 
			next = index + 1
			if next >= total 
				next = 0
			# console.log(prev)
			# console.log(next)
			$("a.carousel-control.left").data("target", prev)
			$("a.carousel-control.right").data("target", next)