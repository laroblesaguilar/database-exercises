const isPalindrome = (string) => {
    let x = string.toLowerCase();
    return [...x].reverse().join("") === x;
};

console.log(isPalindrome("Bob"));


const zerosToEnd = (array) => {
    let a = array;
    let b = a.filter((num) => num !== 0);
    let c = a.filter((num) => num === 0);
    return [[...b], [...c]].flat();

};

console.log(zerosToEnd([1, 1, 2, 0, 4, 0]));

let obj = [
    {name: "Luis", gender: "male", age: 25},
    {name: "Ariana", gender: "female", age: 24},
    {name: "Luna", gender: "female", age: 1},
    {name: "Luca", gender: "male", age: 2}
];

let obj2 = obj.filter((person) => person.gender === "female");
let array = [1, 2, 3, 4, 5, 6, 7];
array = array.map((num) => num += 1);
console.log(array);

let sum = 0;
for (let i = 0; i < array.length; i++) {
    sum += array[i]
}
console.log(sum)

// let obj3 = obj.map((person) => ({name: person.name, gender: person.gender, age: person.age += 1}));
// console.log(obj3);


let x = ["Luis", "Leo", "Luca"]
let y = [25, 5, 2]
let z = ["male", "male", "male"]
let a = [];

for (let i = 0; i < x.length; i++) {
    a.push({name: x[i], age: y[i], gender: z[i]})
}
console.log(a);

let numbers = [4, 9, 16]
let sqrtNum = numbers.map((num) => Math.sqrt(num));
console.log(sqrtNum)

obj.forEach(function (element, index) {
    if (index % 2 === 0) {
        element.name = element.name.toUpperCase()
    }
})

console.log(obj)


fetch("https://swapi.co/api/people/1/")
    .then(response => response.json())
    .then(data => {
        fetch(data.films[0])
            .then(response => response.json())
            .then(data => console.log(data.title))
    })

let crazy = [1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6]

const uniques = (array) => (Array.from(new Set(array)))

console.log(uniques(crazy))

const nameFormatter = (name) => {
    let first = name.charAt(0).toUpperCase() + name.substring(1, name.indexOf(" "));
    let last = name.charAt(name.indexOf(" ") + 1).toUpperCase() + name.substring(name.indexOf(" ") + 2)
    return first + " " + last;
}

console.log(nameFormatter("luis robles"))


