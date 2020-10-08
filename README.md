# FEX2DTS

This project aims to use a tool sourced from AllWinner official SDK to translate legacy sys_config.fex or script.fex to device tree files.

## Build
```
cd ./dtc/
```

```
make dtc
```

## Usage
```
bash ./fex2dts.sh $PATH_TO_YOUR_FEX_FILE
```
The resultant o.dts file will be at ./ .

## Status

This project is still under development. The original tool in AllWinner's SDK is intended to work with sun8i series SoC and relies on some device tree configurations specific to that series. Currently I have no sun8i devices thus the functionality of this tool is yet to be verified. Furthermore, to be applied on SoCs other than sun8i family, it requires device tree configurations equivalent to that official SDK provided for sun8i.  
