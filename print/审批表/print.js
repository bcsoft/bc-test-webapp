//审批表转用 js 工具
window.onload = function(){
	function init(){
		// 创建操作工具条
		var toolEl = document.createElement("div");
		toolEl.setAttribute("id", "tool");
		toolEl.innerHTML = '<div class="print" title="打印"><img src="./print.png"></div>'
		+ '<div class="save2pdf" title="存为PDF文件"><img src="./pdf.png"></div>';
		document.body.appendChild(toolEl);

		// 绑定打印和下载事件
		document.querySelector("#tool > .print").onclick = function(){window.print()}
		document.querySelector("#tool > .save2pdf").onclick = function(){
			var pdfDoc = new jsPDF('p','pt','a4');
			pdfDoc.setFontSize(12);
			var paperEl = document.querySelector(".paper");
			//paperEl.classList.add("print");// 缩小字体
			pdfDoc.addHTML(paperEl,function() {
				var nameEl = document.getElementById("downloadFileName");
				var downloadFileName = nameEl ? nameEl.value : document.title || "审批表";
				if(downloadFileName.indexOf(".pdf") != downloadFileName.length - 4){
					downloadFileName = downloadFileName + ".pdf";
				}
				pdfDoc.save(downloadFileName);
				//paperEl.classList.remove("print");
			});
		}
	}

	// 加载 js
	function loadJS(path, callback){
		console.log("loading " + path);
		var script = document.createElement("script");
		script.setAttribute("type", "text/javascript");
		script.setAttribute("src", path);
		script.onload = function(){
			console.log("success load " + path);
			if(typeof callback == "function") callback.call(this);
		}
		document.getElementsByTagName("head")[0].appendChild(script);
	}
	// 按需加载 html2canvas 和 jspdf
	// https://github.com/niklasvh/html2canvas
	// https://github.com/cburgmer/rasterizeHTML.js
	// http://mrrio.github.io/jsPDF (demo)、https://github.com/MrRio/jsPDF
	if(typeof(html2canvas) == "undefined"){loadJS("./html2canvas.min.js", function(){	loadJS("./jspdf.min.js", init)})}else{loadJS("./jspdf.min.js", init)}
};