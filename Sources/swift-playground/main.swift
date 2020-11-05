
import SystemPackage
print("Hello, world!")

let message: String = "Hello, world!" + "\n"

let path: FilePath = "/tmp/log"
let fd = try FileDescriptor.open(
  path, .writeOnly, options: [.append, .create], permissions: .ownerReadWrite)
try fd.closeAfter {
  _ = try fd.writeAll(message.utf8)
}