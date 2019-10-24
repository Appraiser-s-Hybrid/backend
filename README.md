# backend

### api

https://hidden-chamber-84113.herokuapp.com/

## User Registration

### POST & GET

https://hidden-chamber-84113.herokuapp.com/api/v1/users

### DELETE & PUT

https://hidden-chamber-84113.herokuapp.com/api/v1/users/:id

---------------------------------------------------

note: since all authentication is done on the front-end, the login will be taken care of by a function that finds the matching email and password with a GET request called on login.

## Houses

### POST & GET

https://hidden-chamber-84113.herokuapp.com/api/v1/houses

### DELETE & PUT

https://hidden-chamber-84113.herokuapp.com/api/v1/houses/:id

#### Table information for houses

Data from the DS FLASK app to be POSTED to the backend

    integer results *Required
    integer bathroomcnt
    integer bedroomcnt

Other fields that can be saved to better the users experience

    string airconType
    string homeSqFt
    string basementSqFt
    string buildingQualityType
    string buildingClass
    boolean fireplace
    integer garageCarCount
    integer garageSqFt
    integer zipcode
    integer latitude
    integer longitude
    integer poolCount
    integer poolSize
    string city
    string county
    string state
    string yearBuilt
    integer roomCount
    integer lastSellPrice
    integer user_id
    boolean isAvailable


