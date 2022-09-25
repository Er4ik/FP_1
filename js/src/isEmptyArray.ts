import { FirstElement } from "./models/firstElement.enum";

const isEmptyArray = <T>(array: T[]): boolean => {
    return !array[FirstElement.FIRST_ELEMENT];
}

console.log(isEmptyArray([])); // true
console.log(isEmptyArray([1,2,3,4,5])); // false

export { isEmptyArray }