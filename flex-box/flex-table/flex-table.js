'use strict';
new Vue({
  el: "#app",
  data: {
    unit: "px",
    customWidth: true,
    widthValue: 700,
    customHeight: true,
    heightValue: 400,
    hAlign: 'align-left',
    vAlign: 'align-middle',
    flexEl: 'table'
  },
  computed: {
    width() {
      if (this.customWidth) return this.widthValue + this.unit;
      else return "auto";
    },
    height() {
      if (this.customHeight) return this.heightValue + this.unit;
      else return "auto";
    }
  }
});