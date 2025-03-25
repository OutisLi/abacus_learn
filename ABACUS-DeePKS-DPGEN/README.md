This is an example of H20 to run ABACUS-DeepKS + DP-GEN.
It will run two steps of dpgen: `init_bulk` and `run`.

Firstly, we need to run init_bulk to produce the initial data.
Enter folder init_bulk, by typing command: 
`cd init_bulk`
You can find the following files:
  1. Files are needed to run ABACUS:
	- structure file: STRU
    - pseudopotential files: H_ONCV_PBE-1.0.upf, O_ONCV_PBE-1.0.upf
	- numerical orbital files: H_gga_6au_60Ry_2s1p.orb, O_gga_6au_60Ry_2s2p1d.orb
	- abacus INPUT: INPUT.md, INPUT.rlx
	- abacus KPT: KPT
	- DeepKS related: jle.orb, model.ptg
  2. Files are needed to run DP-GEN:
	- parameter setting for `init_bulk`: init.json
	- parameter setting for `run`: run_param.json
	- parameter setting for machine: machine.json 

Now, you need to modify the `machine.json` file, and fill in the values
of `email`, `password`, and `program_id`. Be noticed, there are 3 palces 
that need to be modified for each key. 
By typing the below command to run init_bulk:
`dpgen init_bulk init.json machine.json `
After finishing the running, a new folder "STRU.01x01x01" will be created, and 
you can check the results in it.

Then you can do the second step "run".
Enter the folder run, by typing command:
`cd ../run`
In this folder, you can find a new file and a new folder:
	- run_param.json: parameter setting for `run`
	- STRU.01x01x01: structures and initial traning data. It is general produced
		by the init_bulk step, and here we provide the data obtained from our
		previous calculation. 
Before do the running, the "machine.json" file is also needed, and we can use 
the same file in init_bulk. 
Copy machine.json from init_bulk to current path:
`cp ../init_bulk/machine.json ./`
Do the running of `run`:
`dpgen run run_param.json machine.json`
After finishing the running, threee folders iter.000000/iter.000001/iter.000002 will
be created, and you can check the results.
