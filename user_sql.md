##

## ordnary user

* user has_one profile

```
table user

id:
email: 

```

* user_profile has_many user_resource

```
table user_profile

id:
user_id:
```

* user_resource belongs_to profile

## admin user