# Scijson : Open-source json file definition to store metadata alongside data

* Version : 0.1b
* License : MIT License
* Support : Matlab 2014 and after (Octave)


## What's new

* 2020/05/18 - First version of the repo, and definition of the standard.


## ToDo

* Check floating point precision after json conversion and back
* Write a json schema
* Develop Python version
* Check complex number support
* Deal with string data for row and column metadata, for 1D data typically
* Develop Excel, Libre Office Calc version

## Definition of the standard

The main objective of the standard is to store data and its metadata at the same
 place. Hence ouputs of scientific and engineering codes are more robust and 
 less prone to errors. In addition with a standard way to store data, it's 
 possible to use functions to automate plotting for example.

Scijson is a [json] file with a typical structure to store data array with its 
metadata like *name*, *unit* and optionally a *description* field. Each array 
and its metadata is called hereafter a *sjdata* object. Find below an example of
 a *sjdata* json object :

```json
{
    "name": "Price",
    "unit": "euro",
    "data": [1,4,2,5,3,8],
    "description": ""
}
```

According to the dimension of the data, several *sjdata* are used to describe 
the dataset. For example 2 dimensions data, represented by two 1D vectors, are 
saved in a set of several *sjdata*, called a *sjset*. Find below an example with
 two vectors named `Time` and `Voltage`.

```json
{
	"row": {
		"name": "Time",
		"unit": "s",
		"data": [1,2,3,4,5,6,7,8,9,10],
		"description": ""
	},
	"array": {
		"name": "Voltage",
		"unit": "V",
		"data": [10,10.5,9,8,6,9,12,11,10.2,9.7],
		"description": ""
	}
}
```

Since json is a structured text file, it is interoperable, machine- and 
human-readable.

[json]: https://www.json.org/json-en.html

The definition is summed up here after. The *sjdata* fields are:    

| Field names |
|-------------|
| `name`      |
| `unit`      |
| `data`      |
|`description`|

The *sjset* field are, according to the dimension of data:

| field names | 1D data | 2D data | 3D data |
|-------------|:-------:|:-------:|:-------:|
| `row`       |         | X       |   X     |
| `col`       |         |         |   X     |
| `array`     |  X      |  X      |   X     |



## Matlab/Octave toolbox

A Matlab/Octrave toolbox has been developed to allow the creation, the storage 
and the plotting of data with scijson standard.

The toolbox is named scijsonlab. The files can be download here: 
[scijsonlab](./scijson_matlab/)

## Python module

To come.


## FAQ

##### I come from Matlab, I can use a struct datatype and save it to a .mat file.

Yes, but the .mat file is only machine readable and not meaned to be 
interoperable. Scijsonlab uses struct to build object before saving them to
json file.