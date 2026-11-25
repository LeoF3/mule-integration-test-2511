import * from bat::BDD
import * from bat::Assertions
import * from bat::Mutable

---

suite("ticket-checkin-test-suite") in [

  it("Checks in a passenger ticket") in [
    PUT `http://localhost:8081/api/tickets/ACM444/checkin` with {
      "headers": {
        "Accept": "application/json",
        "Content-Type": "application/json"
      },
      "body": {
        "lastName": "Smith",
        "numBags": 2
      }
    } assert [
      $.response.status mustEqual 200
    ] execute [
      log($.response)
    ]
  ]

]
