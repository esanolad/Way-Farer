FORMAT: 1A

# Way-Farer

Way-Farer is a simple public bus transportation booking server

# Group API End Points

Available End points


## sign up [auth/signup]

Creater user account

### Sign up for application [POST]

Sign Up to Way Farer application. It takes a JSON object
containing a email, password, first_name, last_name, etc.

+ email (string) - email
+ password (string) - password
+ first_name (string) - first name
+ last_name (string) - last name

+ Request   (application/json)

            {
                "email" : "email@example.com" ,
                "password" : "123456" ,
                "first_name" : "first Name" ,
                "last_name" : "lastName" 
            }

+ Response 201  (application/json)
            {
                “status” : “success” ,
                “data” : {
                            “user_id” : 123456 ,
                            “is_admin” : false ,
                            “token” : "f123590dee" 
                        }
            }

+ Response 401 (application/json)
            {
                “status” : “error” ,
                “error” : “relevant-error-message”
            }

## sign up [auth/signin]

Login to way farer application

### Sign in to application [POST]

Login to way farer application

+ email (string) : email account
+ password(string)  : password for account

+ Request   (application/json)
            {
                "email" : "email@example.com" ,
                "password" : "123456" 
            }
+ Response  201 (application/json)
            {
                “status” : “success” ,
                “data” :    {
                                “user_id” : 123456 ,
                                “is_admin” : true ,
                                “token” : "434ef543" ,
                            }
            }
+ Response 401 (application/json)
            {
                “status” : “error” ,
                “error” : “relevant-error-message”
            }

## Trip [/trips]

Trip related endpoints

### Create a trip [POST]

post a trip

+ token (string)    : authentication token
+ user_id(integer)  : Id generated
+ is_admin(boolean) : check if user is admin

+ Request   (application/json)
            {
                “token” : "23ef901" ,
                “user_id” : 123456 ,
                “is_admin” : true 
            }

+ Response  201 (application/json)
            {
                “status” : “success” ,
                “data” :    {
                                “trip_id” : 089 ,
                                “bus_id” : 098 ,
                                “origin” : "Asokoro" ,
                                ”destination” : "Wuse" ,
                                “trip_date” : "Date" ,
                                “fare” : 2300.65 
                            }
            }

+ Response 401 (application/json)
            {
                “status” : “error” ,
                “error” : “relevant-error-message”
            }

### Get all trips [GET]

get all trips

+ token (string)    : authentication token
+ user_id(integer)  : Id generated for user
+ is_admin(boolean) : check if user is admin

+ Request   (application/json)
            {
                “token” : "23ef901" ,
                “user_id” : 123456 ,
                “is_admin” : true 
            }

+ Response  201 (application/json)
            {
                “status” : “success” ,
                “data” :    [
                                {
                                    “trip_id” : 089 ,
                                    “bus_id” : 098 ,
                                    “origin” : "Asokoro" ,
                                    ”destination” : "Wuse" ,
                                    “trip_date” : "12/01/2019" ,
                                    “fare” : 2300.65 
                                }
                                {
                                    “trip_id” : 069 ,
                                    “bus_id” : 098 ,
                                    “origin” : "Asokoro" ,
                                    ”destination” : "Wuse" ,
                                    “trip_date” : "12/01/2019" ,
                                    “fare” : 2300.65 
                                }
                                {
                                    “trip_id” : 189 ,
                                    “bus_id” : 028 ,
                                    “origin” : "Asokoro" ,
                                    ”destination” : "Wuse" ,
                                    “trip_date” : "12/01/2019" ,
                                    “fare” : 2300.65 
                                }
                            ]
            }

+ Response 400 (application/json)
            {
                “status” : “error” ,
                “error” : “relevant-error-message”
            }

