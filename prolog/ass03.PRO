predicates
	move(symbol, symbol)
	satellite(symbol)
	planet(symbol)
	jupiter_satellite(symbol)
		
clauses
	move(mercury, sun).
	move(venus, sun).
	move(earth, sun).
	move(mars, sun).
	move(jupiter, sun).
	move(saturn, sun).
	move(uranus, sun).
	move(neptune, sun).
	
	move(moon, earth).
	move(phobos, mars).
	move(deimos, mars).
	
	move(ganymede, jupiter).
	move(callisto, jupiter).
	move(io, jupiter).
	move(europa, jupiter).
	
	move(pandora, saturn).
	move(janus, saturn).
	move(epimetheus, saturn).
	move(mimas, saturn).
	move(iapetus, saturn).
	move(phoebe, saturn).
	move(tethys, saturn).
	move(telesto, saturn).
	
	move(miranda, uranus).
	move(ariel, uranus).
	move(umbriel, uranus).
	move(titania, uranus).
	move(oberon, uranus).
	
	move(triton, neptune).
	move(despina, neptune).
	move(galatea, neptune).
	move(halimede, neptune).
	move(hippocamp, neptune).
	move(laomedeia, neptune).
	move(larissa, neptune).
	move(naiad, neptune).
	move(nereid, neptune).
	move(neso, neptune).
	move(proteus, neptune).
	move(psamathe, neptune).
	move(sao, neptune).
	move(thalassa, neptune).
	
	planet(X):- move(X, sun).
	satellite(Y):- move(Y, X),move(X,sun).
	jupiter_satellite(S):- move(S, jupiter).