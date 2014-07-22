##

## ordnary user
* tags(temperament(气质) lolita(萝莉) yujie(御姐) pure(清纯) material(拜金) cute(可爱) partysu(小清新))
* user has_one profile
* role(通过cancan 配置一下权限 注意Scope)

```
table user

id:
email: 
name:
```

* user_profile has_many user_resource

```
table user_profile

id:
user_id:
```

* user_resource belongs_to profile

## admin user