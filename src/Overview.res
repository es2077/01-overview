let value = 12

let value' = ""

let valueInt = 12
let valueFloat = 12.0

let res = valueFloat->Belt.Float.toInt + valueInt

let str = `1290 ${"Jello"} ${valueInt->Belt.Int.toString}`

let isTrue = false
let isFalse = !(!true) && false

let arr: array<int> = [1, 2, 4]
let myTuple = (1, 2, 3)
let myRef = ref(2)

myRef.contents = 12

// User defined types

type profile = {
  name: string,
  age: int,
}

let someProfile: ProfileTypes.profile = {
  name: Some("Gabriel"),
  age: 20,
}

let anotherProfile: ProfileTypes.profile = {
  ...someProfile,
  age: 19,
}

// Phantom type

type t

// ADT, Algebraic Data Types, variants

let gabriel: ProfileTypes.person = User({
  name: None,
  age: 20,
})

let someName = Some("name")

let hello = (~person: ProfileTypes.person, coords, prefix) => {
  switch (person, coords) {
  | (User({name: Some(name)}), "Mr. " ) => `Hello, ${name}-kun especial`
  // catch-all
  | _ => `Hello`
  }
}

// menos error-prone

// polyvariant

let myProfileRole = #admin({name: "Gabriel", age: 12})
let myProfileUserRole = #user

let sumX = (str, ~isSpecial) => isSpecial ? `${str}-special` : `${str}-non-especial`
let sumY = str => `${str}-y`
let sumZ = str => `${str}-z`

// data-first

let str = "Gabriel"
let result = str->sumX(~isSpecial=true)->sumY->sumZ

let anotherRes = str->Js.String2.includes("something")
