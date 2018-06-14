"use strict";
var table = document.getElementById("rows");

function addRow(sn, name, support, remark, min) {
  var tr = table.insertRow(-1);
  tr.insertCell(tr.cells.length).innerHTML = sn;
  tr.insertCell(tr.cells.length).innerHTML = name;
  tr.insertCell(tr.cells.length).innerHTML = support ? "Y" : "N";
  tr.insertCell(tr.cells.length).innerHTML = remark || "";
  tr.insertCell(tr.cells.length).innerHTML = min || "";
}

// 显示 User-Agent
document.getElementById("info").innerText = navigator.userAgent;

// 特征测试
// let.js
addRow(1, "let", window.support$let, "Chrome41+", "Firefox37N Firefox38N Firefox39N");
// const.js
addRow(2, "const", window.support$const, "Chrome41+", "Firefox37N Firefox38N Firefox39N");
// for...of.js
addRow(3, "for...of", window.support$forof, "Chrome38+", "Firefox37Y");
// Promise
addRow(4, "Promise", typeof Promise == "function", "Chrome32+ 'Firefox29+ 'Opera19+ 'Safari7.1+ 'Edge", "Firefox37Y IEN");
// fetch https://developer.mozilla.org/zh-CN/docs/Web/API/Fetch_API
// 	中文blog: http://www.w3ctech.com/topic/854
// 		Fetch 规范: https://fetch.spec.whatwg.org/
// 		Fetch 兼容实现: https://github.com/github/fetch
addRow(4, "fetch", typeof fetch == "function", "Chrome42+ Firefox39+ 'Opera29+", "");
// Worker https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API
addRow(4, "Worker", typeof Worker == "function", "Chrome17+ 'Firefox33+ 'Opera24+", "");
// WebSocket 
addRow(4, "WebSocket ", typeof WebSocket == "function", "Chrome17+ ", "");
