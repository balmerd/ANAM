// minify using http://www.refresh-sf.com/yui/
YAHOO.namespace("ANAM");

var YDOM = YAHOO.util.Dom;

YAHOO.ANAM.Common = function() { // creates a singleton
	return {
		print: function() { // privileged method, has access to private variables and methods, doesn't need to use "this"
			window.print();
		},
		resizeContent : function() { // make main-content at least as tall as sidenav-content (this will mess up some nested floats under IE6)
			var mainElem = YDOM.get('main-content');
			var navRgn = YDOM.getRegion('sidenav-content');
			var mainRgn = YDOM.getRegion(mainElem);
			var mainHeight = mainRgn.bottom - mainRgn.top;
			if (mainHeight < navHeight) {
				YDOM.setStyle(mainElem, 'height', (navHeight+'px'));
			}
		}	
	};
}(); // the parens here cause the anonymous function to execute and return

YAHOO.ANAM.Gallery = function() { // creates a singleton
	//
	// private variables
	//
	var NUM_VISIBLE = 5;
	var thumbnailCaptions = true;
	var urlPrefix = "/images/gallery/";
	var images, carousel, category, category_index;
	//
	// private methods
	//
	function setCaption(id, text) {
		if (text) { // carousel inside of tab will not have caption
			var el = document.createElement("span");
			YDOM.addClass(el, "carousel-caption");
			el.innerHTML = text;
			YDOM.insertAfter(el, id);
			var pos = YDOM.getXY(id);
			pos[0] += 10; // x
			pos[1] += 5; // y
			YDOM.setXY(el, pos);
		}
	}
	function getImageTag(path, oImage) {
		var caption = (thumbnailCaptions ? '<div class="caption" style="width:125px; height:2em; overflow:hidden;">'+oImage.Title+'</div>' : '');
		return '<div class="polaroid"><div class="bd"><img src="'+urlPrefix+path+'/'+oImage.Thumbnail+'" width="125" height="100" alt="" />'+caption+'</div></div>';
	}
	function getLargeImageTag(path, oImage) {
		return '<div class="polaroid"><div class="bd"><img src="'+urlPrefix+path+'/'+oImage.FileName+'" width="'+oImage.Width+'" height="'+oImage.Height+'" alt="" /><div class="caption" style="width:'+oImage.Width+'px; height:auto; overflow:hidden; text-align:left;"><p>'+oImage.Caption+'</p>'+oImage.Credit+'</div></div></div>';
	}
	//
	// public interface
	//
	return  {
		//
		// public properties
		//
		//myImages: null,	// accessible as YAHOO.ANAM.Gallery.myImages
		//
		// public methods
		//
		setCategory: function(_category) {
			category_index = 0;
			category = _category;
		},
		render: function(oConfig) {
			// this bound to Gallery, would have to use this.myImages
			var i, id, path, iMax;
			id = path = oConfig.id;
			thumbnailCaptions = oConfig.thumbnailCaptions;
			images = oConfig.images;
			
			var el = YDOM.get(id);
			carousel = new YAHOO.widget.Carousel(el, {
				numVisible : NUM_VISIBLE, 
				numItems: images.length,	// privileged function, doesn't need to use this to refer to private members like images
				animation: { speed: 0.5 } 
			});
			
			iMax = (images.length < NUM_VISIBLE ? images.length : NUM_VISIBLE);
			for (i=0; i<iMax; i++) {
				carousel.addItem(getImageTag(id, images[i]));
			}

			carousel.ANAM_Path = path;
			carousel.ANAM_Images = images; // added for loading images in beforeScroll event
			carousel.render();
			carousel.show();
			
			setCaption(id, el.getAttribute("caption"));
			
			carousel.on("itemSelected", this.setItemSelected); // binds this to Carousel (CANNOT access Gallery.myImages)
			
			carousel.on("beforeScroll", function(o) { // object o has dir, first, last properties
				// this bound to carousel
				var pageFrom = o.last;
				var pageTo = pageFrom + this.get("numVisible");
				if (o.dir == "forward" && !this.getItem(pageFrom)) { // not loaded yet
					for (i=pageFrom; i<pageTo; i++) {
						this.addItem(getImageTag(id, this.ANAM_Images[i]));
					}
				}
				return true; // so that the event is not aborted
			});
		},
		setItemSelected: function(index, path, images) {
			// this bound to carousel
			var oImage = (images ? images[index] : this.ANAM_Images[index]); // this.ANAM_Images is only valid when called from itemSelected event handler, not when calling this method from the page
			if (!this._isAnimationInProgress) { // do we don't change the big image when scrolling
				// item has the reference to the Carousel's item
				//var item = this.getElementForItem(index);
				var domImage = YDOM.get("gallery-image");
				YDOM.setStyle(domImage, 'width', ((oImage.Width + 10)+'px'));
				YDOM.setStyle(domImage, 'height', ((oImage.Height + 10)+'px'));
				YDOM.setStyle(domImage, 'margin', ((oImage.Width > 735) ? "0" : "0 auto"));
				domImage.innerHTML = getLargeImageTag((path ? path : this.ANAM_Path), oImage);  // this.ANAM_Path is only valid when called from itemSelected event handler, not when calling this method from the page
			}
			return true; // so that the event is not aborted
		},
		ImageObject: function(oParams) {
			this.Category = category;
			this.CategoryIndex = category_index++;
			this.Title = oParams.title;
			this.FileName = oParams.fileName;
			this.Width = (oParams.width > 741 ? 741 : oParams.width);
			this.Height = oParams.height;
			this.Caption = oParams.caption;
			this.Credit = (oParams.credit ? ("<p>(Courtesy of "+oParams.credit+")</p>") : (oParams.customCredit ? ("<p>("+oParams.customCredit+")</p>") : ""));
			this.Thumbnail = this.FileName.replace(".", "-tn.");
			this.Link = oParams.link;
			this.Section = oParams.section;	//'only used by rotating images
		}
	};
}(); // the parens here cause the anonymous function to execute and return

YAHOO.util.Event.onDOMReady(YAHOO.ANAM.Common.resizeContent);
