const singleton = <T>(element: T): T[] => {
    return Array.of(element);
}

console.log(singleton(1)); // [1]
console.log(singleton("one")); // [one]

export { singleton };
