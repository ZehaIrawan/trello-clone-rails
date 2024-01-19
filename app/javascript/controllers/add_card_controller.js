import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="add-card"
export default class extends Controller {
  static targets = ["input"];

  toggle() {
    // Toggle the visibility of the input field
    this.inputTarget.classList.toggle("hidden");
    if (!this.inputTarget.classList.contains("hidden")) {
      // If the input field is visible, focus on it
      this.inputTarget.focus();
    }
  }

  close() {
    // Hide the input field
    this.inputTarget.classList.add("hidden");
    this.inputTarget.value = "";
  }
}
