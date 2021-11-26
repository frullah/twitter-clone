import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {url: String}

  openTweet(event) {
    // navigate only when clicked outside of dropdown
    if (!event.target.closest(".dropdown")) {
      Turbo.visit(this.urlValue)
    }
  }
}
