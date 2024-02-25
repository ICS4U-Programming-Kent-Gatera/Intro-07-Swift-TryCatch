import Foundation

/**
 * My program calculates the volume of a sphere with a try catch.
 *
 * @author  Kent Gatera
 * @version 1.0
 * @since   2024-Feb-20
 */

// Defining the error cases.
enum errorCases: Error {
    case invalidNumeral
}

/* Creating a function that:
* - Throws an error if user input can't be converted'.
*/
func getInput() throws -> Double {
    print("What is the radius of your sphere?: ", terminator:"")
    // Checks if userInput > 0.
    if let input = readLine(), let radiusThrown:Double = Double(input), radiusThrown > 0 {
        // Input passes, return the input value
        return radiusThrown
    } else {
        // Raises "errorCases.invalidNumerals"
        throw errorCases.invalidNumeral
    }
    }
do {
    // Initializing variables and constants.
    let radius = try getInput()
    var volume: Double
    let pi = Double.pi
    // Calculating the volume.
    volume = 3/4 * (pi * pow(radius, 3))
    // Printing the volume.
    print("The volume of the sphere is " + String(format: "%.3f", volume) + " cm^3")

} catch {

    print("Please enter a valid numeral radius > 0")
}