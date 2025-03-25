# ABACUS Hands-On ABC

## A. SCF

### A.1 Download input files
```
>> cd /data
>> git clone https://gitee.com/deepmodeling/colombo-ABACUS.git
>> cd colombo-ABACUS
>> cd ABACUS
>> cd MgO_LCAO
>> ls
   SCF  band_structure  dos  optimization
```

### A.2 Run SCF
```
>> cd SCF
>> abacus
```

### A.3 Get ETOT
```
>> cd OUT.MgO
>> grep ETOT running_scf.log
```

## B. Optimization

### B.1 Run optimization
```
>> cd /data/colombo-ABACUS/ABACUS/MgO_LCAO/optimization
>> abacus
```

### B.2 Check optimized structure
```
>> cd OUT.MgO
>> ls
   .cif file
```

## C. Band Structure

### C.1 Run SCF
```
>> cd /data/colombo-ABACUS/ABACUS/MgO_LCAO/band_structure
>> cp INPUT_scf INPUT
>> cp KPT_scf KPT
>> abacus
```

### C.2 Run NSCF
```
>> cp INPUT_nscf INPUT
>> cp KPT_nscf KPT
>> abacus
```

### C.3 Install `abacus-plot`
```
>> cd /abacus-develop/tools/plot-tools
>> pip install lxml
>> python3 setup.py install
```

### C.4 Plot band structure
```
>> cd /data/colombo-ABACUS/ABACUS/MgO_LCAO/band_structure/OUT.MgO/
>> cp ../KPT ./
>> cp ../config.json ./
>> abacus-plot -b
```

## D. DOS and PDOS

### D.1 Run SCF
```
>> cd /data/colombo-ABACUS/ABACUS/MgO_LCAO/dos/
>> cp INPUT_scf INPUT
>> cp KPT_scf KPT
>> abacus
```

### D.2 Run NSCF
```
>> cp INPUT_nscf INPUT
>> cp KPT_nscf KPT
>> abacus
```

### D.3 Plot TDOS
```
>> cd /data/colombo-ABACUS/ABACUS/MgO_LCAO/dos/OUT.MgO/
>> cp ../config_tdos.json ./config.json
>> abacus-plot -d
```

### D.4 Plot PDOS
```
>> cd /data/colombo-ABACUS/ABACUS/MgO_LCAO/dos/OUT.MgO/
>> cp ../config_pdos.json ./config.json
>> abacus-plot -d -p -o
```
