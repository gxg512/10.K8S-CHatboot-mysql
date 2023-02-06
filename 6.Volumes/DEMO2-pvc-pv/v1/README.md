vream sa facem resize de la 3 la 6 gb pt ambele fisiere

daca totusi dupa ce stergi pvc-ul , pv ramane in released state -> da comanda kubectl patch pv nume-pv -p '{"spec":{"claimRef": null}}'
