## TEAM OREO ##

# Headline specifications #

MVP

**Any** signed-up **user can list a new space**

**Users should be able to name their space**, provide a short description of the space, and a price per night

**Any** signed-up **user can request to hire any space for one night,** and this should be approved by the user that owns the space
```
As a User
so I can rent out a space
I would like to list a new space

As a User
so I can identify my space
I would like to name it

As a User
so I can rent a space
I would like to hire a space for one night
```

Class | Space
-|-
Properties | id, name, (description, price per night, available?)
Methods | list_space,

Space Table
id | name
-|-

Suggested uses?\
user.hire(3)\
space.hire(user.id=5)

Extras

```
As a User
so I can list a space
I would like to sign up
```
Users can list multiple spaces

Users should be able to offer a range of dates where their space is available

Nights for which a space has already been booked should not be available for users to book that space

Until a user has confirmed a booking request, that space can still be booked for that night
