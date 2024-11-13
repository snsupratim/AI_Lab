predicates
	disease(symbol,symbol)
	patient(symbol,symbol)
	has_disease(symbol,symbol)
	has_conjunctivitis(symbol)

clauses
	% Defining diseases and their symptoms
	disease(measles, fever).
	disease(measles, cough).
	disease(measles, conjunctivitis).
	disease(measles, runny_nose).
	disease(measles, rash).
	
	disease(flu, fever).
	disease(flu, headache).
	disease(flu, conjunctivitis).
	disease(flu, chills).
	disease(flu, sore_throat).
	disease(flu, cough).
	disease(flu, runny_nose).

	disease(chicken_pox, fever).
	disease(chicken_pox, rash).
	disease(chicken_pox, body_ache).
	disease(chicken_pox, chills).

	% Defining symptoms of patients
	patient(bob, fever).
	patient(bob, rash).
	patient(bob, cough).
	patient(bob, conjunctivitis).
	patient(bob, runny_nose).
	patient(bob, chills).
	patient(bob, body_ache).

	patient(joe, fever).
	patient(joe, cough).
	patient(joe, conjunctivitis).
	patient(joe, runny_nose).
	patient(joe, chills).
	patient(joe, headache).
	patient(joe, sore_throat).

	patient(jhon, fever).
	patient(jhon, rash).
	patient(jhon, cough).
	patient(jhon, conjunctivitis).
	patient(jhon, runny_nose).
	patient(jhon, chills).

	patient(jill, fever).
	patient(jill, cough).
	patient(jill, conjunctivitis).
	patient(jill, runny_nose).
	patient(jill, chills).
	patient(jill, headache).
	patient(jill, sore_throat).

	% Rule to diagnose a disease based on symptoms
	has_disease(Patient, Disease) :- patient(Patient, Symptom), disease(Disease, Symptom).

	% Rule to check if a patient has conjunctivitis
	has_conjunctivitis(Patient) :- patient(Patient, conjunctivitis).