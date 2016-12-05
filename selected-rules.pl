fever(25).
rash(25).
headache(25).
runny_nose(25).
chills(25).
cough(25).
conjunctivitis(25).
body_ache(25).
sneezing(20).
sorethroat(20).
swollen_glands(50).
watering_eyes(20).
flushed_face(20).
weakness(20).
fatigue(20).
dizziness(20).
fainting(20).
difficulty_feeding(20).
cyanosis(30).
pulmonary_hypertension(30).
polycythaemia(30).
squinting(40).
eye_pain(40).
tension(18).
blurry_vision(18).
burning_sensation(18).
eyestrain(18).
eye_irritation(18).
difficulty_seeing_at_night(18).
redness_in_the_eyes(30).
watery_tearing(20).
hard_time_of_walking(30).
mild_to_sever_pain(35).
less_movement_in_the_ankle(35).
sore_skin(40).
bruised(30).
swollen(10).
pain(20).
unable_to_jump(20).
enlarged_calf_muscles(20).
walking_on_toes(20).
inward_curvature_of_the_lower_spine(20).
difficulty_getting_up_after_falling(20).
weakness_of_the_shoulders_and_arms(50).
pain_in_the_back_of_the_neck(15).
pain_around_the_shoulder_blades(15).
limited_movement_of_the_neck(40).
holding_the_head_stiffly(15).
tilting_the_head_slightly_to_one_side(15).
hoarse_voice(5).
noisy_breathing(15).

cache1(measles,50).
cache2(rubella,50).
cache3(chicken_pox,50).
cache4(scarlet_fever,50).
cache5(flu,50).
cache6(common_cold,50).
cache7(mumps,50).
cache8(croup,50).
cache9(whooping_cough,50).
cache10(arrhythmias,50).
cache11(eisenmenger_syndrome,50).
cache12(nearsightedness,50).
cache13(farsightedness,50).
cache14(astigmatism,50).
cache15(dry_eye_syndrome,50).
cache16(ankle_sprain,50).
cache17(muscle_strain,50).
cache18(musclar_dystrophy,50).
cache19(neck_pain,50).

disease(X,Y):-
	category(X,Y).
category(X,Y):-
	skin_related(X),
	X='skin_related'.
category(X,Y):-
	ent_related(X),
	X='ent_related'.
category(X,Y):-
	heart_related(X),
	X='heart_related'.
category(X,Y):-
	eye_related(X),
	X='eye_related'.
category(X,Y):-
	muscle_and_bone_related(X),
	X='muscle_and_bone_related'.
skin_related(X):-
	measles(X),
	X='measles'.
skin_related(X):-
	rubella(X),
	X='rubella'.
skin_related(X):-
	chicken_pox(X),
	X='chicken_pox'.
skin_related(X):-
	scarlet_fever(X),
	X='scarlet_fever'.
ent_related(X):-
	flu(X),
	X='flu'.
ent_related(X):-
	common_cold(X),
	X='common_cold'.
ent_related(X):-
	mumps(X),
	X='mumps'.
ent_related(X):-
	croup(X),
	X='croup'.
ent_related(X):-
	whooping_cough(X),
	X='whooping_cough'.
heart_related(X):-
	arrhythmias(X),
	X='arrhythmais'.
heart_related(X):-
	eisenmenger_syndrome(X),
	X='eisenmenger_syndrom'.
eye_related(X):-
	nearsightedness(X),
	X='nearsightedness'.
eye_related(X):-
	farsightedness(X),
	X='farsightdness'.
eye_related(X):-
	astigmatism(X),
	X='asstigmatism'.
eye_related(X):-
	dry_eye_syndrome(X),
        X='dry_eye_syndrome'.
muscle_and_bone_related(X):-
	ankle_sprain(X),
	X='ankle_sprain'.
muscle_and_bone_related(X):-
	muscle_strain(X),
	X='muscle_strain'.
muscle_and_bone_related(X):-
	musclar_dystrophy(X),
	X='musclar_dytrophy'.
muscle_and_bone_related(X):-
	neck_pain(X),
	X='neck_pain'.

measles(CF):-
	fever(X1),
	cough(X2),
	conjunctivitis(X3),
	rash(X4),
	X is X1+X2+X3+X4,
	cache1(measles,C),
	CF is X*C.
rubella(CF):-
	fever(X1),
	headache(X2),
	runny_nose(X3),
	rash(X4),
	X is X1+X2+X3+X4,
	cache2(rubella,C),
	CF is X*C.
chicken_pox(CF):-
	fever(X1),
	rash(X2),
	body_ache(X3),
	chills(X4),
	X is X1+X2+X3+X4,
	cache3(chicken_pox,C),
	CF is X*C.
scarlet_fever(CF):-
	fever(X1),
	sorethroat(X2),
	flushed_face(X3),
	rash(X4),
	X is X1+X2+X3+X4,
	cache4(scarlet_fever,C),
	CF is X*C.
flu(CF):-
	fever(X1),
	headache(X2),
	body_ache(X3),
	chills(X4),
	X is X1+X2+X3+X4,
	cache5(flu,C),
	CF is X*C.
common_cold(CF):-
	headache(X1),
	sneezing(X2),
	sorethroat(X3),
	chills(X4),
	runny_nose(X5),
	X is X1+X2+X3+X4+X5,
	cache6(common_cold,C),
	CF is X*C.
mumps(CF):-
	fever(X1),
	swollen_glands(X2),
	X is X1+X2,
	cache7(mumps,C),
	CF is X*C.
croup(CF):-
	runny_nose(X1),
	sorethroat(X2),
	fever(X3),
	cough(X4),
	hoarse_voice(X5),
	noisy_breathing(X6),
	X is X1+X2+X3+X4+X5+X6,
	cache8(croup,C),
	CF is X*C.
whooping_cough(CF):-
	runny_nose(X1),
	sneezing(X2),
	watering_eyes(X3),
	cough(X4),
	sorethroat(X5),
	X is X1+X2+X3+X4+X5,
	cache9(whooping_cough,C),
	CF is X*C.
arrhythmias(CF):-
	weakness(X1),
        fatigue(X2),
        dizziness(X3),
        fainting(X4),
        difficulty_feeding(X5),
	X is X1+X2+X3+X4+X5,
	cache10(arrhythmias,C),
	CF is X*C.
eisenmenger_syndrome(CF):-
        cyanosis(X1),
        pulmonary_hypertension(X2),
        polycythaemia(X3),
	X is X1+X2+X3,
	cache11(eisenmenger_syndrome,C),
	CF is X*C.
nearsightedness(CF):-
	headache(X1),
	squinting(X2),
        eye_pain(X3),
	X is X1+X2+X3,
	cache12(nearsightedness,C),
	CF is X*C.
farsightedness(CF):-
	tension(X1),
	fatigue(X2),
        blurry_vision(X3),
	squinting(X4),
        burning_sensation(X5),
	X is X1+X2+X3+X4+X5,
	cache13(farsightedness,C),
	CF is X*C.
astigmatism(CF):-
	eyestrain(X1),
	squinting(X2),
        eye_irritation(X3),
	blurry_vision(X4),
        difficulty_seeing_at_night(X5),
	X is X1+X2+X3+X4+X5,
	cache14(astigmatism,C),
	CF is X*C.
dry_eye_syndrome(CF):-
	pain(X1),
	redness_in_the_eyes(X2),
        eye_pain(X3),
	blurry_vision(X4),
	watery_tearing(X5),
	X is X1+X2+X3+X4+X5,
	cache15(dry_eye_syndrome,C),
	CF is X*C.
ankle_sprain(CF):-
	hard_time_of_walking(X1),
        mild_to_sever_pain(X2),
        less_movement_in_the_ankle(X3),
	X is X1+X2+X3,
	cache16(ankle_sprain,C),
	CF is X*C.
muscle_strain(CF):-
	sore_skin(X1),
        bruised(X2),
        swollen(X3),
        pain(X4),
	X is X1+X2+X3+X4,
	cache17(muscle_strain,C),
	CF is X*C.
musclar_dystrophy(CF):-
	unable_to_jump(X1),
	enlarged_calf_muscles(X2),
        walking_on_toes(X3),
        inward_curvature_of_the_lower_spine(X4),
        difficulty_getting_up_after_falling(X5),
        weakness_of_the_shoulders_and_arms(X6),
	X is X1+X2+X3+X4+X5+X6,
	cache18(musclar_dystrophy,C),
	CF is X*C.
neck_pain(CF):-
	pain_in_the_back_of_the_neck(X1),
        pain_around_the_shoulder_blades(X2),
        limited_movement_of_the_neck(X3),
        holding_the_head_stiffly(X4),
        tilting_the_head_slightly_to_one_side(X5),
	X is X1+X2+X3+X4+X5,
	cache19(neck_pain,C),
	CF is X*C.





















