"use strict";
var table = document.getElementById("rows");
function addRow(sn, name, support, remark){
	var tr = table.insertRow(-1);
	tr.insertCell(tr.cells.length).innerHTML = sn;
	tr.insertCell(tr.cells.length).innerHTML = name;
	tr.insertCell(tr.cells.length).innerHTML = support ? "Y" : "N";
	tr.insertCell(tr.cells.length).innerHTML = remark || "";
}

// 显示 User-Agent
document.getElementById("info").innerText = navigator.userAgent;

// 特征测试
// let.js
addRow(1, "let", window.support$let, "Chrome41+");
// const.js
addRow(2, "const", window.support$const, "Chrome41+");
// for...of.js
addRow(3, "for...of", window.support$forof, "Chrome38+");
// Promise
addRow(4, "Promise", typeof Promise == "function", "Chrome32+");
