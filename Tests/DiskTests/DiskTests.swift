import XCTest
@testable import Disk

final class DiskTests: XCTestCase {
    func testExample() throws {
        let fileContents = Double.pi
        let filename = "SomeNumber"
        let folderPath = "./TestFolder"

        XCTAssertThrowsError(try Disk.contentsOfDirectory(atPath: folderPath))

        XCTAssertFalse(try Disk.fileExists(atPath: folderPath))
        try Disk.createDirectory(path: folderPath)
        XCTAssertTrue(try Disk.fileExists(atPath: folderPath))

        XCTAssertEqual(try Disk.contentsOfDirectory(atPath: folderPath).count, 0)

        XCTAssertFalse(try Disk.fileExists(atPath: "\(folderPath)/\(filename)"))
        try Disk.out(fileContents, path: folderPath, filename: filename, base64Encoded: false)
        XCTAssertTrue(try Disk.fileExists(atPath: "\(folderPath)/\(filename)"))

        XCTAssertEqual(try Disk.contentsOfDirectory(atPath: folderPath).count, 1)

        XCTAssertEqual(try Disk.in(path: folderPath, filename: filename), Double.pi)

        // Remove

        try Disk.delete(path: folderPath, filename: filename)
        XCTAssertFalse(try Disk.fileExists(atPath: "\(folderPath)/\(filename)"))

        XCTAssertEqual(try Disk.contentsOfDirectory(atPath: folderPath).count, 0)

        try Disk.removeItem(atPath: folderPath)
        XCTAssertFalse(try Disk.fileExists(atPath: folderPath))
    }
}
