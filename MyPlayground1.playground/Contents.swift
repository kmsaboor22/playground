//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var statusCode: Int = 404
var errorString: String

switch statusCode {
    
case 400:
    print(errorString = "Bad request")
case 401:
    errorString = "Unauthorized"
case 403:
    errorString = "Forbidden"
case 404:
    errorString = "Not found"
default:
    errorString = "None"
    
}