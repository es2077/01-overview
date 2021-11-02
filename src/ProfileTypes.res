type profile = {
  name: option<string>,
  age: int
}


type person = | User(profile) | Admin(string) | Person(profile)