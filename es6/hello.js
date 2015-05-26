let log = console.log;


// Constants

const HELLO = "Hello";
log(HELLO);

// HELLO = "Uff";  => Error: HELLO is read-only



// Block-Scoped variables

let sum = 0;
for (let i = 0; i < 5; i++) {
    sum += i;
}

try {
    log(i);
} catch (e) {
    log("cannot access scope-blocked variable:", e.message);
}


// Block-Scoped functions

function foo() {
    log("foo1");
}

{
    function foo() {
        log("foo2");
    }
    foo();
}

foo();


// Arrow functions

var global = this;

function bar(fn) {
    log(this === "myContext");
    fn();
    let fn2 = () => log(this === "myContext");
    fn2();
}

bar.call("myContext", () => log(this === "myContext"));


// Default parameter values

function fun1 (a = 1, b = 2) {
    return a + b;
}

log(fun1(0));


// Classes

class Person {
    constructor(firstName, lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }

    get age() {
        return this._age;
    }

    set age(age) {
        log(`setting age from ${this._age ? this._age : '?'} to ${age}`);
        this._age = age;
    }

    fullName() {
        return `${this.firstName} ${this.lastName}`;
    }
}

let hans = new Person("Hans", "Meiser");
hans.age = 18;
log(hans.fullName());

class Customer extends Person {
    constructor(firstName, lastName, email) {
        super(firstName, lastName);
        this.email = email;
    }

    fullName() {
        return super.fullName().toUpperCase();
    }

    spam() {
        log(`sending spam to: ${this.email}`);
    }
}

let peter = new Customer("Peter", "Parker", "peter@parker.com");
log(peter.fullName());
peter.spam();
