import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {url: String}
  
  connect() {
  }

  openTweet = (event) => {
    console.log(event);
    Turbo.visit(this.urlValue)
  }
}
