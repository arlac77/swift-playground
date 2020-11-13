
import SystemPackage
print("Hello, world!")

let message: String = "Hello, world!" + "\n"

let path: FilePath = "/tmp/log"
let fd = try FileDescriptor.open(
  path, .writeOnly, options: [.append, .create], permissions: .ownerReadWrite)
try fd.closeAfter {
  _ = try fd.writeAll(message.utf8)
}

import Algorithms

let numbers = [10, 20, 30]
for perm in numbers.permutations() {
    print(perm)
}

func swap<T>(a: inout T, b: inout T)
{
  let x = a
  a = b
  b = x
}

var a = 1
var b = 2
swap(&a,&b)
print(a)
print(b)