// Constants

const HELLO = "Hello";
console.log(HELLO);

// HELLO = "Uff";  => Error: HELLO is read-only



// Block-Scoped variables

let sum = 0;
for (let i = 0; i < 5; i++) {
    sum += i;
}

try {
    console.log(i);
} catch (e) {
    console.log("cannot access scope-blocked variable:", e.message);
}


// Block-Scoped functions

function foo() {
    console.log("foo1");
}

{
    function foo() {
        console.log("foo2");
    }
    foo();
}

foo();


// Arrow functions

var global = this;

function bar(fn) {
    console.log(this === "myContext");
    fn();
    let fn2 = () => console.log(this === "myContext");
    fn2();
}

bar.call("myContext", () => console.log(this === "myContext"));


// Default parameter values

function fun1 (a = 1, b = 2) {
    return a + b;
}

console.log(fun1(0));
