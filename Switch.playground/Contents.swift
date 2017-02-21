/* Switch: statements considers a particular value 
 and attempt to match it against a number of cases.
 If there is a match, the switch excutes the code 
 associated with that case.*/

import UIKit

var statusCode: Int = 500
var errorString: String = "The request failed with the error:"

/*
 switch statusCode {
    
case 400, 401, 403, 404:
    errorString = "There was something wrong with the request."
    fallthrough
default:
    errorString += " Please review the request and try again."
    
}
*/

switch statusCode{

case 100, 101:
  // value binding
    errorString += " Informational, \(statusCode)."
    //errorString += "Informational, 1xx."

case 204:
    errorString += " Successful but no content, \(statusCode)."

case 300, 301, 302, 303, 304, 305, 306, 307:
    errorString += " Redirection, \(statusCode)."

case 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416,417:
    errorString += " Client error, \(statusCode)."

case 500, 501, 502, 503, 504, 505:
    errorString += " Server error, \(statusCode)."

case let unknownCode:
    errorString = "\(unknownCode) is not a known error code"
}

