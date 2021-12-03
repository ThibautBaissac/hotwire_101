import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="tab"
export default class extends Controller {
  static targets = ["btn1", "btn2"];

  btn1State() {
    this.btn1Target.classList.add("active");
    this.btn2Target.classList.remove("active");
  }

  btn2State() {
    this.btn1Target.classList.remove("active");
    this.btn2Target.classList.add("active");
  }
}
