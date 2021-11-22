import { Controller } from "@hotwired/stimulus";

let initialized = false

export default class ActionTextController extends Controller {
  initialize() {
    if (initialized) return false

    initialized = true
    import('trix')
    import('@rails/actiontext')
    import("~/stylesheets/actiontext.scss")
  }
}