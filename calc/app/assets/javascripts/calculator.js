class Calculator {
  constructor(el){
    this.el = el;
  }

  run(){
    let value = this.value;
  	document.calc.display.value += value;
  }

  clean(){
  	document.calc.display.value = "";
  }

  equals(){
  	let equals = eval(document.calc.display.value)
  	document.calc.display.value = equals;
  }

}

function render(behavior, func){
  document.querySelectorAll('[data-behavior*='+ behavior +']').forEach( i => {
    i.addEventListener("click", func);
  });
}

document.addEventListener("DOMContentLoaded", function() {
   render("run", new Calculator().run);
   render("clean", new Calculator().clean);
   render("equals", new Calculator().equals);
});
