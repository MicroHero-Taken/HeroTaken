/*08080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080*/
$(window).load(function(){
	// 把每一個 .canvas-div 中的圖片都做轉黑白的處理
	$('#A').each(function(){
		// 先取得一些必要的參數, 例如寬高及要轉黑白的圖片
		// 同時先產生一個 canvas 元素
		var $this = $(this),
			_width = $this.width(),
			_height = $this.height(), 
			$canvas = $('<canvas></canvas>').css('position', 'absolute'),
			canvasE = $canvas[0], 
			$img = $this.find('img');
		
		// 設定 canvas 的寬高後加到 .canvas-div 中
		canvasE.width = _width;
		canvasE.height = _height;
		$this.append($canvas);
		
		// 把圖片畫在 canvas 上
		var context = canvasE.getContext('2d');
		context.drawImage($img[0], 0, 0, _width, _height);
		
		// 變更圖片的每一點的值
		var imgd = context.getImageData(0, 0, _width, _height);
		var pix = imgd.data;
		for(var i=0, n=pix.length; i<n; i+=4){
			var gray = pix[i] * 0.3 + pix[i+1] * 0.59 + pix[i+2] * 0.11;
			pix[i] = gray;
			pix[i+1] = gray;
			pix[i+2] = gray;
		}
		context.putImageData(imgd, 0, 0);
		
		// 加入 .hover() 事件
		$this.hover(function(){
			// 當滑鼠移入時淡出 canvas
			$canvas.stop(false, true).fadeOut(200);
		}, function(){
			// 當滑鼠移出時淡入 canvas
			$canvas.stop(false, true).fadeIn(200);
		});
	});
});
/*08080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080*/
$(window).load(function(){
	// 把每一個 .canvas-div 中的圖片都做轉黑白的處理
	$('#B').each(function(){
		// 先取得一些必要的參數, 例如寬高及要轉黑白的圖片
		// 同時先產生一個 canvas 元素
		var $this = $(this),
			_width = $this.width(),
			_height = $this.height(), 
			$canvas = $('<canvas></canvas>').css('position', 'absolute'),
			canvasE = $canvas[0], 
			$img = $this.find('img');
		
		// 設定 canvas 的寬高後加到 .canvas-div 中
		canvasE.width = _width;
		canvasE.height = _height;
		$this.append($canvas);
		
		// 把圖片畫在 canvas 上
		var context = canvasE.getContext('2d');
		context.drawImage($img[0], 0, 0, _width, _height);
		
		// 變更圖片的每一點的值
		var imgd = context.getImageData(0, 0, _width, _height);
		var pix = imgd.data;
		for(var i=0, n=pix.length; i<n; i+=4){
			var gray = pix[i] * 0.3 + pix[i+1] * 0.59 + pix[i+2] * 0.11;
			pix[i] = gray;
			pix[i+1] = gray;
			pix[i+2] = gray;
		}
		context.putImageData(imgd, 0, 0);
		
		// 加入 .hover() 事件
		$this.hover(function(){
			// 當滑鼠移入時淡出 canvas
			$canvas.stop(false, true).fadeOut(200);
		}, function(){
			// 當滑鼠移出時淡入 canvas
			$canvas.stop(false, true).fadeIn(200);
		});
	});
});
/*08080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080*/
$(window).load(function(){
	// 把每一個 .canvas-div 中的圖片都做轉黑白的處理
	$('#C').each(function(){
		// 先取得一些必要的參數, 例如寬高及要轉黑白的圖片
		// 同時先產生一個 canvas 元素
		var $this = $(this),
			_width = $this.width(),
			_height = $this.height(), 
			$canvas = $('<canvas></canvas>').css('position', 'absolute'),
			canvasE = $canvas[0], 
			$img = $this.find('img');
		
		// 設定 canvas 的寬高後加到 .canvas-div 中
		canvasE.width = _width;
		canvasE.height = _height;
		$this.append($canvas);
		
		// 把圖片畫在 canvas 上
		var context = canvasE.getContext('2d');
		context.drawImage($img[0], 0, 0, _width, _height);
		
		// 變更圖片的每一點的值
		var imgd = context.getImageData(0, 0, _width, _height);
		var pix = imgd.data;
		for(var i=0, n=pix.length; i<n; i+=4){
			var gray = pix[i] * 0.3 + pix[i+1] * 0.59 + pix[i+2] * 0.11;
			pix[i] = gray;
			pix[i+1] = gray;
			pix[i+2] = gray;
		}
		context.putImageData(imgd, 0, 0);
		
		// 加入 .hover() 事件
		$this.hover(function(){
			// 當滑鼠移入時淡出 canvas
			$canvas.stop(false, true).fadeOut(200);
		}, function(){
			// 當滑鼠移出時淡入 canvas
			$canvas.stop(false, true).fadeIn(200);
		});
	});
});
/*08080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080*/
$(window).load(function(){
	// 把每一個 .canvas-div 中的圖片都做轉黑白的處理
	$('#D').each(function(){
		// 先取得一些必要的參數, 例如寬高及要轉黑白的圖片
		// 同時先產生一個 canvas 元素
		var $this = $(this),
			_width = $this.width(),
			_height = $this.height(), 
			$canvas = $('<canvas></canvas>').css('position', 'absolute'),
			canvasE = $canvas[0], 
			$img = $this.find('img');
		
		// 設定 canvas 的寬高後加到 .canvas-div 中
		canvasE.width = _width;
		canvasE.height = _height;
		$this.append($canvas);
		
		// 把圖片畫在 canvas 上
		var context = canvasE.getContext('2d');
		context.drawImage($img[0], 0, 0, _width, _height);
		
		// 變更圖片的每一點的值
		var imgd = context.getImageData(0, 0, _width, _height);
		var pix = imgd.data;
		for(var i=0, n=pix.length; i<n; i+=4){
			var gray = pix[i] * 0.3 + pix[i+1] * 0.59 + pix[i+2] * 0.11;
			pix[i] = gray;
			pix[i+1] = gray;
			pix[i+2] = gray;
		}
		context.putImageData(imgd, 0, 0);
		
		// 加入 .hover() 事件
		$this.hover(function(){
			// 當滑鼠移入時淡出 canvas
			$canvas.stop(false, true).fadeOut(200);
		}, function(){
			// 當滑鼠移出時淡入 canvas
			$canvas.stop(false, true).fadeIn(200);
		});
	});
});
/*08080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080*/
$(window).load(function(){
	// 把每一個 .canvas-div 中的圖片都做轉黑白的處理
	$('#E').each(function(){
		// 先取得一些必要的參數, 例如寬高及要轉黑白的圖片
		// 同時先產生一個 canvas 元素
		var $this = $(this),
			_width = $this.width(),
			_height = $this.height(), 
			$canvas = $('<canvas></canvas>').css('position', 'absolute'),
			canvasE = $canvas[0], 
			$img = $this.find('img');
		
		// 設定 canvas 的寬高後加到 .canvas-div 中
		canvasE.width = _width;
		canvasE.height = _height;
		$this.append($canvas);
		
		// 把圖片畫在 canvas 上
		var context = canvasE.getContext('2d');
		context.drawImage($img[0], 0, 0, _width, _height);
		
		// 變更圖片的每一點的值
		var imgd = context.getImageData(0, 0, _width, _height);
		var pix = imgd.data;
		for(var i=0, n=pix.length; i<n; i+=4){
			var gray = pix[i] * 0.3 + pix[i+1] * 0.59 + pix[i+2] * 0.11;
			pix[i] = gray;
			pix[i+1] = gray;
			pix[i+2] = gray;
		}
		context.putImageData(imgd, 0, 0);
		
		// 加入 .hover() 事件
		$this.hover(function(){
			// 當滑鼠移入時淡出 canvas
			$canvas.stop(false, true).fadeOut(200);
		}, function(){
			// 當滑鼠移出時淡入 canvas
			$canvas.stop(false, true).fadeIn(200);
		});
	});
});
/*08080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080*/
$(window).load(function(){
	// 把每一個 .canvas-div 中的圖片都做轉黑白的處理
	$('#F').each(function(){
		// 先取得一些必要的參數, 例如寬高及要轉黑白的圖片
		// 同時先產生一個 canvas 元素
		var $this = $(this),
			_width = $this.width(),
			_height = $this.height(), 
			$canvas = $('<canvas></canvas>').css('position', 'absolute'),
			canvasE = $canvas[0], 
			$img = $this.find('img');
		
		// 設定 canvas 的寬高後加到 .canvas-div 中
		canvasE.width = _width;
		canvasE.height = _height;
		$this.append($canvas);
		
		// 把圖片畫在 canvas 上
		var context = canvasE.getContext('2d');
		context.drawImage($img[0], 0, 0, _width, _height);
		
		// 變更圖片的每一點的值
		var imgd = context.getImageData(0, 0, _width, _height);
		var pix = imgd.data;
		for(var i=0, n=pix.length; i<n; i+=4){
			var gray = pix[i] * 0.3 + pix[i+1] * 0.59 + pix[i+2] * 0.11;
			pix[i] = gray;
			pix[i+1] = gray;
			pix[i+2] = gray;
		}
		context.putImageData(imgd, 0, 0);
		
		// 加入 .hover() 事件
		$this.hover(function(){
			// 當滑鼠移入時淡出 canvas
			$canvas.stop(false, true).fadeOut(200);
		}, function(){
			// 當滑鼠移出時淡入 canvas
			$canvas.stop(false, true).fadeIn(200);
		});
	});
});
/*08080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080*/
$(window).load(function(){
	// 把每一個 .canvas-div 中的圖片都做轉黑白的處理
	$('#G').each(function(){
		// 先取得一些必要的參數, 例如寬高及要轉黑白的圖片
		// 同時先產生一個 canvas 元素
		var $this = $(this),
			_width = $this.width(),
			_height = $this.height(), 
			$canvas = $('<canvas></canvas>').css('position', 'absolute'),
			canvasE = $canvas[0], 
			$img = $this.find('img');
		
		// 設定 canvas 的寬高後加到 .canvas-div 中
		canvasE.width = _width;
		canvasE.height = _height;
		$this.append($canvas);
		
		// 把圖片畫在 canvas 上
		var context = canvasE.getContext('2d');
		context.drawImage($img[0], 0, 0, _width, _height);
		
		// 變更圖片的每一點的值
		var imgd = context.getImageData(0, 0, _width, _height);
		var pix = imgd.data;
		for(var i=0, n=pix.length; i<n; i+=4){
			var gray = pix[i] * 0.3 + pix[i+1] * 0.59 + pix[i+2] * 0.11;
			pix[i] = gray;
			pix[i+1] = gray;
			pix[i+2] = gray;
		}
		context.putImageData(imgd, 0, 0);
		
		// 加入 .hover() 事件
		$this.hover(function(){
			// 當滑鼠移入時淡出 canvas
			$canvas.stop(false, true).fadeOut(200);
		}, function(){
			// 當滑鼠移出時淡入 canvas
			$canvas.stop(false, true).fadeIn(200);
		});
	});
});
/*08080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080*/
$(window).load(function(){
	// 把每一個 .canvas-div 中的圖片都做轉黑白的處理
	$('#H').each(function(){
		// 先取得一些必要的參數, 例如寬高及要轉黑白的圖片
		// 同時先產生一個 canvas 元素
		var $this = $(this),
			_width = $this.width(),
			_height = $this.height(), 
			$canvas = $('<canvas></canvas>').css('position', 'absolute'),
			canvasE = $canvas[0], 
			$img = $this.find('img');
		
		// 設定 canvas 的寬高後加到 .canvas-div 中
		canvasE.width = _width;
		canvasE.height = _height;
		$this.append($canvas);
		
		// 把圖片畫在 canvas 上
		var context = canvasE.getContext('2d');
		context.drawImage($img[0], 0, 0, _width, _height);
		
		// 變更圖片的每一點的值
		var imgd = context.getImageData(0, 0, _width, _height);
		var pix = imgd.data;
		for(var i=0, n=pix.length; i<n; i+=4){
			var gray = pix[i] * 0.3 + pix[i+1] * 0.59 + pix[i+2] * 0.11;
			pix[i] = gray;
			pix[i+1] = gray;
			pix[i+2] = gray;
		}
		context.putImageData(imgd, 0, 0);
		
		// 加入 .hover() 事件
		$this.hover(function(){
			// 當滑鼠移入時淡出 canvas
			$canvas.stop(false, true).fadeOut(200);
		}, function(){
			// 當滑鼠移出時淡入 canvas
			$canvas.stop(false, true).fadeIn(200);
		});
	});
});
/*08080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080800808080808080808080*/
$(window).load(function(){
	// 把每一個 .canvas-div 中的圖片都做轉黑白的處理
	$('#I').each(function(){
		// 先取得一些必要的參數, 例如寬高及要轉黑白的圖片
		// 同時先產生一個 canvas 元素
		var $this = $(this),
			_width = $this.width(),
			_height = $this.height(), 
			$canvas = $('<canvas></canvas>').css('position', 'absolute'),
			canvasE = $canvas[0], 
			$img = $this.find('img');
		
		// 設定 canvas 的寬高後加到 .canvas-div 中
		canvasE.width = _width;
		canvasE.height = _height;
		$this.append($canvas);
		
		// 把圖片畫在 canvas 上
		var context = canvasE.getContext('2d');
		context.drawImage($img[0], 0, 0, _width, _height);
		
		// 變更圖片的每一點的值
		var imgd = context.getImageData(0, 0, _width, _height);
		var pix = imgd.data;
		for(var i=0, n=pix.length; i<n; i+=4){
			var gray = pix[i] * 0.3 + pix[i+1] * 0.59 + pix[i+2] * 0.11;
			pix[i] = gray;
			pix[i+1] = gray;
			pix[i+2] = gray;
		}
		context.putImageData(imgd, 0, 0);
		
		// 加入 .hover() 事件
		$this.hover(function(){
			// 當滑鼠移入時淡出 canvas
			$canvas.stop(false, true).fadeOut(200);
		}, function(){
			// 當滑鼠移出時淡入 canvas
			$canvas.stop(false, true).fadeIn(200);
		});
	});
});