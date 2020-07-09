import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "editForm", "submitBtn"]

  connect() {
    // console.log("Hello from the reviews controller - Stimulus")
    // console.log(this.editFormTargets)
  }

  showEditForm(event) {
    this.editFormTarget.classList.remove('hidden')
    event.currentTarget.classList.add('hidden')
  }

  submitOnEnter(event) {
    if (event.key === 'Enter') {
      event.preventDefault()
      this.submitBtnTarget.click()
    }
  }
}
