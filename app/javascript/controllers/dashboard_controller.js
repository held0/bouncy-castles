import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard"
export default class extends Controller {
  connect() {
    console.log("Hello from dashboard controller")
  }

  updateBookingStatus() {
    console.log(this.data.get("bookingId"))
    let id = this.data.get("bookingId")
    fetch(`/bookings/${id}`)
    .then((response) => response.json())
    .then((data) => console.log(data));
  }
}
