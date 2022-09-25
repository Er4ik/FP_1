const snoc = (array: any[], element: any): any[] => {
    return [...array, element];
}

console.log(snoc([], 1)); // [1]
console.log(snoc([1,2,3], 4)); // [1,2,3,4]

export { snoc };