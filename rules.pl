% disease - skin_related %
rule(1,
     lhs( [av(dizziness, no), av(fever, yes), av(cough, yes), av(conjunctivitis, yes), av(rash, yes)] ),
     rhs( av(disease, measles), 90) ).

rule(2,
     lhs( [av(dizziness, no), av(fever, yes), av(headache, yes), av(runny_nose, yes), av(rash, yes)] ),
     rhs( av(disease, rubella), 100) ).

rule(3,
     lhs( [av(dizziness, no), av(fever, yes), av(rash, yes), av(body_ache, yes), av(chills, yes)] ),
     rhs( av(disease, chicken_pox), 100) ).

rule(4,
     lhs( [av(dizziness, no), av(fever, yes), av(sorethroat, yes), av(flushed_face, yes), av(rash, yes)] ),
     rhs( av(disease, scarlet_fever), 100) ).
% end of disease - skin_related %

% disease - ent_related %
rule(5,
     lhs( [av(unable_to_jump, no), av(fever, yes), av(headache, yes), av(body_ache, yes), av(chills, yes)] ),
     rhs( av(disease, flu), 100) ).

rule(6,
     lhs( [av(unable_to_jump, no), av(headache, yes), av(sneezing, yes), av(sorethroat, yes), av(chills, yes), av(runny_nose, yes)] ),
     rhs( av(disease, common_cold), 100) ).

rule(7,
     lhs( [av(unable_to_jump, no), av(fever, yes), av(swollen_glands, yes)] ),
     rhs( av(disease, mumps), 100) ).

rule(8,
     lhs( [av(unable_to_jump, no), av(runny_nose, yes), av(sorethroat, yes), av(fever, yes), av(cough, yes), av(hoarse_voice, yes), av(noisy_breathing, yes)] ),
     rhs( av(disease, croup), 100) ).

rule(9,
     lhs( [av(unable_to_jump, no), av(runny_nose, yes), av(sneezing, yes), av(watering_eyes, yes), av(cough, yes), av(sorethroat, yes)] ),
     rhs( av(disease, whooping_cough), 100) ).

rule(10,
     lhs( [av(unable_to_jump, no), av(fever, yes), av(sore_throat, yes), av(difficulty_swallowing, yes), av(enlarged_red_tonsils, yes), av(loss_of_interest_in_eating_or_drinking, yes)] ),
     rhs( av(disease, strep_throat), 100) ).
% end of disease - ent_related %

% disease - heart_related %
rule(11,
     lhs( [av(fever, no), av(weakness, yes), av(fatigue, yes), av(dizziness, yes), av(fainting, yes), av(difficulty_feeding, yes)] ),
     rhs( av(disease, arrhythmias), 100) ).

rule(12,
     lhs( [av(fever, no), av(cyanosis, yes), av(pulmonary_hypertension, yes), av(polycythaemia, yes)] ),
     rhs( av(disease, eisenmenger_syndrome), 100) ).
% end of disease - heart_related %

% disease - eye_related %
rule(13,
     lhs( [av(fever, no), av(headache, yes), av(squinting, yes), av(eye_pain, yes)] ),
     rhs( av(disease, nearsightedness), 100) ).

rule(14,
     lhs( [av(fever, no), av(tension, yes), av(fatigue, yes), av(blurry_vision, yes), av(squinting, yes), av(burning_sensation, yes)] ),
     rhs( av(disease, farsightedness), 100) ).

rule(15,
     lhs( [av(fever, no), av(eyestrain, yes), av(squinting, yes), av(eye_irritation, yes), av(blurry_vision, yes), av(difficulty_seeing_at_night, yes)] ),
     rhs( av(disease, astigmatism), 100) ).

rule(16,
     lhs( [av(fever, no), av(pain, yes), av(redness_in_the_eyes, yes), av(eye_pain, yes), av(blurry_vision, yes), av(watery_tearing, yes)] ),
     rhs( av(disease, dry_eye_syndrome), 100) ).
% end of disease - eye_related %

% disease - muscle_and_bone_related %
rule(17,
     lhs( [av(fever, no), av(hard_time_of_walking, yes), av(mild_to_sever_pain, yes), av(less_movement_in_the_ankle, yes)] ),
     rhs( av(disease, ankle_sprain), 100) ).

rule(18,
     lhs( [av(fever, no), av(sore_skin, yes), av(bruised, yes), av(swollen, yes), av(pain, yes)] ),
     rhs( av(disease, muscle_strain), 100) ).

rule(19,
     lhs( [av(fever, no), av(unable_to_jump, yes), av(enlarged_calf_muscles, yes), av(walking_on_toes, yes), av(inward_curvature_of_the_lower_spine, yes),
     av(difficulty_getting_up_after_falling, yes), av(weakness_of_the_shoulders_and_arms, yes)] ),
     rhs( av(disease, musclar_dystrophy), 100) ).

rule(20,
     lhs( [av(fever, no), av(pain_in_the_back_of_the_neck, yes), av(pain_around_the_shoulder_blades, yes), av(limited_movement_of_the_neck, yes), av(holding_the_head_stiffly, yes), av(tilting_the_head_slightly_to_one_side, yes)] ),
     rhs( av(disease, neck_pain), 70) ).

rule(21,
     lhs( [av(fever,no), av(loss_of_appetite, yes) , av(body_ache, yes)]),
     rhs( av(disease, h1n1), 100)).

rule(22,
     lhs([av(fever,no), av(mild_bleeding, yes), av(nausea, yes)]),
     rhs( av(disease, dengue_virus), 100)).

rule(23,
     lhs( [av(fever,no),av(general_weakness, yes),av(yellowish_blood_stained_sputum,yes)]),
     rhs( av(disease, mycobacterium_tuberculosis),100)).

rule(24,
     lhs([av(fever,no),av(abdominal_tenderness,yes),av(lesions_and_damage_to_the_intestinal_wall,yes)]),
     rhs(av(disease,salmonella_typhi),100)).

rule(25,
     lhs([av(fever,no),av(acute_diarrhoea,yes),av(stools_is_white_andwatery,yes)]),
     rhs(av(disease, vibrio_cholerae),100)).

% end of disease - muscle_and_bone_related %


% questions %

askable(body_ache, 'feeling body_ache?').
askable(loss_of_appetite,'feeling loss_of_appetite ?').
askable(nausea,'feeling nausea ?').
askable(mild_bleeding,'feeling mild_bleeding ?').
askable(yellowish_blood_stained_sputum, 'feeling yellowish_blood_stained_sputum ?').
askable(general_weakness,'feeling general_weakness?').
askable(lesions_and_damage_to_the_intestinal_wall,'feeling lesions_and_damage_to_the_intestinal_wall ?').
askable(abdominal_tenderness,'feeling abdominal_tenderness?').
askable(stools_is_white_andwatery,'stools_is_white_andwatery?').
askable(acute_diarrhoea, 'feeling acute_diarrhoea?').
askable(fever, 'feeling fever?').
askable(rash, 'feeling rash?').
askable(headache, 'feeling headache?').
askable(runny_nose, 'feeling runny_nose?').
askable(chills, 'feeling chills?').
askable(cough, 'feeling cough?').
askable(conjunctivitis, 'feeling conjunctivitis?').
askable(body_ache, 'feeling body_ache?').
askable(sneezing, 'feeling sneezing?').
askable(sorethroat, 'feeling sorethroat?').
askable(swollen_glands, 'feeling swollen_glands?').
askable(difficulty_swallowing, 'feeling difficulty_swallowing?').
askable(enlarged_red_tonsils, 'feeling enlarged_red_tonsils?').
askable(loss_of_interest_in_eating_or_drinking, 'feeling loss_of_interest_in_eating_or_drinking?').
askable(watering_eyes, 'feeling watering_eyes?').
askable(flushed_face, 'feeling flushed_face?').
askable(weakness, 'feeling weakness?').
askable(fatigue, 'feeling fatigue?').
askable(dizziness, 'feeling dizziness?').
askable(fainting, 'feeling fainting?').
askable(difficulty_feeding, 'feeling difficulty_feeding?').
askable(cyanosis, 'feeling cyanosis?').
askable(pulmonary_hypertension, 'feeling pulmonary_hypertension?').
askable(polycythaemia, 'feeling polycythaemia?').
askable(squinting, 'feeling squinting?').
askable(eye_pain, 'feeling eye_pain?').
askable(tension, 'feeling tension?').
askable(blurry_vision, 'feeling blurry_vision?').
askable(burning_sensation, 'feeling burning_sensation?').
askable(eyestrain, 'feeling eyestrain?').
askable(eye_irritation, 'feeling eye_irritation?').
askable(difficulty_seeing_at_night, 'feeling difficulty_seeing_at_night?').
askable(redness_in_the_eyes, 'feeling redness_in_the_eyes?').
askable(watery_tearing, 'feeling watery_tearing?').
askable(hard_time_of_walking, 'feeling hard_time_of_walking?').
askable(mild_to_sever_pain, 'feeling mild_to_sever_pain?').
askable(less_movement_in_the_ankle, 'feeling less_movement_in_the_ankle?').
askable(sore_skin, 'feeling sore_skin?').
askable(bruised, 'feeling bruised?').
askable(swollen, 'feeling swollen?').
askable(pain, 'feeling pain?').
askable(unable_to_jump, 'feeling unable_to_jump?').
askable(enlarged_calf_muscles, 'feeling enlarged_calf_muscles?').
askable(walking_on_toes, 'feeling walking_on_toes?').
askable(inward_curvature_of_the_lower_spine, 'feeling inward_curvature_of_the_lower_spine?').
askable(difficulty_getting_up_after_falling, 'feeling difficulty_getting_up_after_falling?').
askable(weakness_of_the_shoulders_and_arms, 'feeling weakness_of_the_shoulders_and_arms?').
askable(pain_in_the_back_of_the_neck, 'feeling pain_in_the_back_of_the_neck?').
askable(pain_around_the_shoulder_blades, 'feeling pain_around_the_shoulder_blades?').
askable(limited_movement_of_the_neck, 'feeling limited_movement_of_the_neck?').
askable(holding_the_head_stiffly, 'feeling holding_the_head_stiffly?').
askable(tilting_the_head_slightly_to_one_side, 'feeling tilting_the_head_slightly_to_one_side?').
askable(hoarse_voice, 'feeling hoarse_voice?').
askable(noisy_breathing, 'feeling noisy_breathing?').

% end of questions %
















