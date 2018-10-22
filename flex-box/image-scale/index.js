window.onload = function () {
  const images = {
    "small": "./small.jpg",
    "over-with": "./over-with.jpg",
    "over-height": "./over-height.jpg",
    "over-all": "./over-all.jpg"
  };

  new Vue({
    el: "#app",
    data: {
      collapse: false,
      imageUrl: "./over-height.jpg"
    }
  });
};