# move_basics
#Get to move smart contracts with me //

Mint the hello_world
# Build  first
```
sui move build
```
# pblish to get the package ID
```
sui client publish
```
# Mint fun
```
sui client call --function mint --module hello_world --package <PACKAGE_ID>
```
# View contents of HelloWorld
```
sui client object 0x1d0442ba4ee447de044922796dc812760f5fb79cefaf0c41142e13c7ecd064df
``

