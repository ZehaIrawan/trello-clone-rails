import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="add-card"
export default class extends Controller {
  static targets = ["cardNameInput", "closeButton"];

  toggle() {
    this.cardNameInputTarget.classList.toggle("hidden");
    this.closeButtonTarget.classList.toggle("hidden");
    this.cardNameInputTarget.value = "";

    if (!this.cardNameInputTarget.classList.contains("hidden")) {
      this.cardNameInputTarget.focus();
    }
  }
}
