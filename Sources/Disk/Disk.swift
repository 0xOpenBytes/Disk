import o

/**
 A convenience typealias for `o.file` to represent a file system disk.

 Use `Disk` to refer to the default file system disk throughout your code.

 `o.file` is a group of functions in the `o` module that provides file system access and manipulation operations.

 Examples:

 - `let data = try Disk.data(filename : "file.txt")`
 - `try Disk.out("Hello, world!", filename: "greeting.txt")`
 */
public typealias Disk = o.file
