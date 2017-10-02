//-------------------------------------------------------------

// Generics

// Generic code enables us to write flexible, reusable code that can work with multiple types.

// Suppose we wrote a function that could swap two Ints around.

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}
// This works as expected on two Ints, but when if we wanted to swap two Floats?

var myInt1 = 10
var myInt2 = 50

swap(&myInt1, &myInt2)


// Matter of fact, we could write a whole series of functions that allow us to swap all the types, but this is waste since all these functions are basically the same code. The only thing that really changes is the type of the variables being swapped.

// Generic Functions

// Generic functions can work with any type. Here's generic version of swapTwoInts functions from above, called SwapTwoValues which can swap any two values regardless of the type.

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
}
swap(&myInt1, &myInt2)

print("After calling swapTwoInts: myInt1 is now \(myInt1), and myInt2 is now \(myInt2)")
