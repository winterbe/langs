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

    static boo() {
        log("ha!");
    }
}

let peter = new Customer("Peter", "Parker", "peter@parker.com");
log(peter.fullName());
peter.spam();
Customer.boo();


// Sets
let names = new Set(["Benny", "Jens", "Gerrit"]);

log(names.has("Peter"));
log(names.has("Gerrit"));

names.forEach(name => log(name));


// Objects

function whee () {
    log("woohoo!");
}

var obj = {
    whee,
    toString() {
        return "MyObj";
    },
    [21 + 21]: 42
};

obj.whee();
log(obj.toString());
log(obj[42]);


// Strings

log(`Calling obj.toString() results in: ${obj.toString()}`);
log(`I am
the god
of hell fire!`);


// Destructuring

var [a, , b] = [1, 2, 3];
log(`a=${a}; b=${b}`);

var {firstName, lastName} = new Person("Peter", "Parker");
log(`firstName=${firstName}; lastName=${lastName}`);

function p({firstName: x}) {
    log("firstName passed:", x);
}
p(new Person("Peter", "Parker"));


// Rest

function g(x, ...a) {
    log("x:", x);
    log("Rest:", a.length);
}
g("foo", "bar", "foobar");
g(...[1, 2, 3, 4]);
