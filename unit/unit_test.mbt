// Copyright 2025 International Digital Economy Academy
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

///|
test {
  let unit1 = ()
  let unit2 = ()
  assert_eq(unit1, unit2)
}

///|
test {
  let unit1 = ()
  let unit2 = ()
  assert_true(physical_equal(unit1, unit2))
}

///|
test {
  let unit = ()
  assert_eq(@unit.default(), unit)
  inspect(unit.to_string(), content="()")
}

///|
test {
  let unit1 = ()
  let unit2 = ()
  inspect(unit1.compare(unit2), content="0")
}

///|
test {
  let unit = ()
  inspect(unit.hash(), content="0")
}

///|
test "Unit hash_combine test" {
  let hasher = Hasher::new()
  let _ = Hash::hash_combine((), hasher)
  let hash1 = hasher.finalize()
  let hasher2 = Hasher::new()
  assert_not_eq(hash1, hasher2.finalize())
}

///|
test "Unit::default returns unit value" {
  let unit = Unit::default()
  inspect(unit, content="()")
}
