import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  tweetSubmitted = (event) => {
    if (event.detail.success) {
      this.element.reset()
    }
  }
}
