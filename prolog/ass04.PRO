predicates
	likes(symbol, symbol)
	programmer(symbol)
	web_developer(symbol)
	database_developer(symbol)
	
clauses
	likes(akhilesh, mathematics).
	likes(akhilesh, algorithm).
	likes(akhilesh, english).
	likes(akhilesh, sql).
	
	likes(anirban, mathematics).
	likes(anirban, algorithm).
	likes(anirban, java).
	
	likes(manab, java).
	likes(manab, english).
	likes(manab, sql).
	likes(manab, javascript).
	likes(manab, html).
	
	
	programmer(X):- likes(X, mathematics), likes(X, algorithm), likes(X, c), likes(X, java).
	web_developer(X):- likes(X, drawing), likes(X, java), likes(X, html), likes(X, javascript), likes(X, sql),likes(X, english).
	database_developer(X):- likes(X, mathematics), likes(X, algorithm), likes(X, sql), likes(X, english).