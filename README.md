# XCode-templates
## What are XCode Templates?

XCode Templates is a tool for creating code snippets to give you a better starting point to achieve your goal. In this tutorial I will walk you through preparing a custom template for MVVM project architecture.

Often we need to create from scratch the structure and files for a new module, and this process is pretty much the same each time. For example – in the MVVM pattern, to create a Login module we need to create folders and at least 4 classes:

> LoginModule Folder

> LoginView

> LoginViewModel

> LoginViewController

> LoginModel

Adding each class using required code is time consuming. With XCode templates we can speed up the process of adding them to our project. I will show you how to configure a template for use with a new MVVM module.

## XCode Templates Installation

To install templates in XCode we need to add a new folder which will contain our custom templates.

## XCode iOS Templates location

All the Xcode custom template files are located in  ~/Library/Developer/Xcode/Templates/ and grouped into sections by folder name. 

## Installation

1 Open directory: 
```bash
$ cd ~/Library/Developer/Xcode/Templates/
```
2 Clone project:
```bash
$ git clone git@github.com:dsay/XCode-templates.git
```
