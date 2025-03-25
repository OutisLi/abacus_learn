# ABACUS Hands-On ABC

## A. SCF

### A.1 Download input files
```
>> cd /data
>> git clone https://gitee.com/deepmodeling/colombo-ABACUS.git
>> cd colombo-ABACUS
>> cd ABACUS/B_WDM
>> ls
   Hands_On_Commands_SDFT.md  MD  NSCF  SCF
```

### A.2 Run SCF
```
>> cd SCF
>> mpirun -n 2 abacus
```

### A.3 Get ETOT
```
>> cd OUT.B
>> grep ETOT running_scf.log    
>> grep E_Fermi running_scf.log 
>> grep 'Chebyshev Precision' running_scf.log
```

## B. NSCF

### B.1 Run NSCF
```
>> cd /data/colombo-ABACUS/ABACUS/B_WDM/NSCF
>> cp -r ../SCF/OUT.B ./
>> mpirun -n 2 abacus
```

### B.2 Check DOS
```
>> cd OUT.B
>> ls
   DOS1_smearing.dat
```

## C. MD

### C.1 Run MD
```
>> cd /data/colombo-ABACUS/ABACUS/B_WDM/MD
>> mpirun -n 2 abacus
```

### C.2 Get data
```
>> cd OUT.B
>> grep -A 1 'Energy (Ry)' running_md.log
```
