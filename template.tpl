___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Number \u0026 String Operations",
  "categories": [
    "UTILITY"
  ],
  "description": "Set of Math and string manipulation operations in case you need to do some \"transformation light\" with event data and request parameters",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "functionType",
    "displayName": "Operation Type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "calc",
        "displayValue": "Calculate"
      },
      {
        "value": "math",
        "displayValue": "Math Methods"
      },
      {
        "value": "strings",
        "displayValue": "String Functions"
      }
    ],
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Pick a class of operations to perform"
  },
  {
    "type": "SELECT",
    "name": "calcFunctionName",
    "displayName": "Operation",
    "selectItems": [
      {
        "value": "add",
        "displayValue": "add (+)"
      },
      {
        "value": "subtract",
        "displayValue": "subtract (-)"
      },
      {
        "value": "multiply",
        "displayValue": "multiply (*)"
      },
      {
        "value": "divide",
        "displayValue": "divide (/)"
      }
    ],
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "functionType",
        "paramValue": "calc",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "mathMethodName",
    "displayName": "Method",
    "selectItems": [
      {
        "value": "abs",
        "displayValue": "abs"
      },
      {
        "value": "ceil",
        "displayValue": "ceil"
      },
      {
        "value": "floor",
        "displayValue": "floor"
      },
      {
        "value": "max",
        "displayValue": "max"
      },
      {
        "value": "min",
        "displayValue": "min"
      },
      {
        "value": "round",
        "displayValue": "round"
      },
      {
        "value": "trunc",
        "displayValue": "trunc"
      }
    ],
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "functionType",
        "paramValue": "math",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "stringMethodName",
    "displayName": "Function",
    "selectItems": [
      {
        "value": "indexOf",
        "displayValue": "indexOf"
      },
      {
        "value": "lastIndexOf",
        "displayValue": "lastIndexOf"
      },
      {
        "value": "split",
        "displayValue": "split"
      },
      {
        "value": "toLowerCase",
        "displayValue": "toLowerCase"
      },
      {
        "value": "toUpperCase",
        "displayValue": "toUpperCase"
      },
      {
        "value": "replace",
        "displayValue": "replace"
      },
      {
        "value": "slice",
        "displayValue": "slice"
      },
      {
        "value": "substr",
        "displayValue": "substr"
      },
      {
        "value": "substring",
        "displayValue": "substring"
      },
      {
        "value": "match",
        "displayValue": "match"
      },
      {
        "value": "sha256",
        "displayValue": "sha256"
      },
      {
        "value": "base64",
        "displayValue": "base64"
      }
    ],
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "functionType",
        "paramValue": "strings",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "op1",
    "displayName": "Parameter 1",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "op2",
    "displayName": "Parameter 2",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "functionType",
        "paramValue": "calc",
        "type": "EQUALS"
      },
      {
        "paramName": "mathMethodName",
        "paramValue": "min",
        "type": "EQUALS"
      },
      {
        "paramName": "mathMethodName",
        "paramValue": "max",
        "type": "EQUALS"
      },
      {
        "paramName": "stringMethodName",
        "paramValue": "indexOf",
        "type": "EQUALS"
      },
      {
        "paramName": "stringMethodName",
        "paramValue": "lastIndexOf",
        "type": "EQUALS"
      },
      {
        "paramName": "stringMethodName",
        "paramValue": "match",
        "type": "EQUALS"
      },
      {
        "paramName": "stringMethodName",
        "paramValue": "replace",
        "type": "EQUALS"
      },
      {
        "paramName": "stringMethodName",
        "paramValue": "slice",
        "type": "EQUALS"
      },
      {
        "paramName": "stringMethodName",
        "paramValue": "substr",
        "type": "EQUALS"
      },
      {
        "paramName": "stringMethodName",
        "paramValue": "substring",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "op3",
    "displayName": "Parameter 3",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "stringMethodName",
        "paramValue": "replace",
        "type": "EQUALS"
      },
      {
        "paramName": "stringMethodName",
        "paramValue": "replaceAll",
        "type": "EQUALS"
      },
      {
        "paramName": "stringMethodName",
        "paramValue": "slice",
        "type": "EQUALS"
      },
      {
        "paramName": "stringMethodName",
        "paramValue": "substr",
        "type": "EQUALS"
      },
      {
        "paramName": "stringMethodName",
        "paramValue": "substring",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "resultTransformation",
    "displayName": "Result Transformation",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "none",
        "displayValue": "None (unchanged)"
      },
      {
        "value": "round",
        "displayValue": "Convert To Integer (Rounded)"
      },
      {
        "value": "fixed",
        "displayValue": "Convert to Fixed (2 Decimals)"
      },
      {
        "value": "floor",
        "displayValue": "Convert To Integer (Truncated)"
      }
    ],
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "defaultValue": "none",
    "help": "Choose a transformation method to ensure desired output format",
    "enablingConditions": [
      {
        "paramName": "functionType",
        "paramValue": "calc",
        "type": "EQUALS"
      },
      {
        "paramName": "functionType",
        "paramValue": "math",
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

const log = require("logToConsole");
const Math = require("Math");
const makeNumber = require('makeNumber');
const makeString = require('makeString');
const sha256Sync = require('sha256Sync');
const toBase64 = require('toBase64');

var rs;
const tp = data.functionType;
var op1 = makeNumber(data.op1);
var op2 = makeNumber(data.op2);
var op3 = makeNumber(data.op3);

switch(tp) {
  case "calc": 
    const fn = data.calcFunctionName;
    switch(fn) {
      case "add": rs = op1 + op2; break;
      case "subtract": rs = op1 - op2; break;
      case "multiply": rs = op1 * op2; break;
      case "divide": rs = op1 / op2; break;
    }    
    break;
  case "math": 
    const mf = data.mathMethodName;
    switch(mf) {
      case "abs": rs = Math.abs(op1); break;
      case "ceil": rs = Math.ceil(op1); break;
      case "floor": rs = Math.floor(op1); break;
      case "max": rs = Math.max(op1, op2); break;
      case "min": rs = Math.min(op1, op2); break;
      case "round": rs = Math.round(op1); break;
      case "trunc": rs = Math.floor(op1); break;
    }    
    break;
  case "strings":
    op1 = makeString(data.op1);
    var op2s = makeString(data.op2);
    var op3s = makeString(data.op3);
    const sf = data.stringMethodName;
    switch(sf) {
      case "indexOf": rs = op1.indexOf(op2s); break;
      case "lastIndexOf": rs = op1.lastIndexOf(op2s); break;
      case "split": rs = op1.split(op2s); break;
      case "toLowerCase": rs = op1.toLowerCase(); break;
      case "toUpperCase": rs = op1.toUpperCase(); break;
      case "replace": rs = op1.replace(op2s, op3s); break;
      case "slice": rs = op1.slice(op2, op3); break;
      case "substr": rs = op1.substring(op2, op3+op2); break;
      case "substring": rs = op1.substring(op2, op3); break;
      case "match": var fnd = op1.match(op2s);          
        if (fnd) { rs = fnd[0]; }    
        break;
      case "sha256": rs = sha256Sync(op1); break;  
      case "base64": rs = toBase64(op1); break;  
    }    
    break;
}
      
const rt = data.resultTransformation;
if (rt == 'round') return Math.round(rs); else
if (rt == 'floor') return Math.floor(rs); else
if (rt == 'fixed') return makeNumber(Math.round(rs*100) / 100);
else return rs;


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 19.9.2021, 20:53:00


