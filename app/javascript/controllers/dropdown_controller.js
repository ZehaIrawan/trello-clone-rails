import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["dropdown", "button"];

  toggle() {
    this.dropdownTarget.classList.toggle("hidden");
  }
}
