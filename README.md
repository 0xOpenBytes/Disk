# Disk

Disk is a convenience typealias for `o.file` that represents a file system disk. It provides easy access to the file system and its manipulation operations.

## Usage

Here are some examples of how you can use Disk:

```swift
// Read the contents of a file
let data = try Disk.data(filename: "file.txt")

// Write a string to a file
try Disk.out("Hello, world!", filename: "greeting.txt")

// Delete a file
try Disk.delete(filename: "file.txt")
```
