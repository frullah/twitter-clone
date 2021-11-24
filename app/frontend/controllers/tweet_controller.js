import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {url: String}

  openTweet(event) {
    Turbo.visit(this.urlValue)
  }
}
