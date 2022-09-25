const arrayLength = (array: any[]): number => {
    let amountElements = 0;

    array.forEach((el) => {
        amountElements += 1;
    })

    return amountElements;
}

console.log(arrayLength([1,2,3])); // 3
console.log(arrayLength([1,2,3,4,5])); // 5
console.log(arrayLength([1,2,3,4,5,6,7,8,9,10])); // 10

export { arrayLength };