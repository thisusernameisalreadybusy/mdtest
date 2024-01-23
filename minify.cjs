const fs = require('fs')

const data = fs.readFileSync('package-lock.json')
const string = data.toString()
const object = JSON.parse(string)
const minified = JSON.stringify(object)

fs.writeFileSync('package-lock.json', minified)
