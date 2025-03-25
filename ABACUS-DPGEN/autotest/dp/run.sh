cp ../../train/machine.json .
dpgen autotest make relax.json
dpgen autotest run relax.json machine.json
dpgen autotest post relax.json
dpgen autotest make property.json 
dpgen autotest run property.json machine.json
dpgen autotest post property.json
