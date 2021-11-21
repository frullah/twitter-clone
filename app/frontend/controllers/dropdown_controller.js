import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['content']
  
  connect() {
    console.log(this.contentTarget);
  }

  openDropdown = (event) => {
    this.contentTarget.classList.remove("hidden")
    this.contentTarget.classList.add("block")
  }
}
