% =========================================
% AI SPACE MISSION SIMULATION SYSTEM
% Game Tree Generator Using Prolog
% =========================================


% =========================================
% ROOT SCENARIO
% =========================================

start('Spaceship NOVA-X loses communication near Planet Zorath.').


% =========================================
% MAIN MISSION DECISIONS
% =========================================

choice(start, 'Repair Communication System').
choice(start, 'Explore Nearby Planet').
choice(start, 'Send Emergency Signal').
choice(start, 'Handle Asteroid Collision').


% =========================================
% COMMUNICATION MISSION
% =========================================

choice('Repair Communication System',
       'Restore Contact With Earth').

choice('Repair Communication System',
       'Trigger Reactor Failure').

choice('Restore Contact With Earth',
       'Mission Successfully Saved').

choice('Trigger Reactor Failure',
       'Spaceship Destroyed').


% =========================================
% PLANET EXPLORATION MISSION
% =========================================

choice('Explore Nearby Planet',
       'Find Alien Technology').

choice('Explore Nearby Planet',
       'Encounter Hostile Creature').

choice('Find Alien Technology',
       'Advanced Energy Source Acquired').

choice('Encounter Hostile Creature',
       'Crew Members Injured').


% =========================================
% EMERGENCY SIGNAL MISSION
% =========================================

choice('Send Emergency Signal',
       'Rescue Ship Arrives').

choice('Send Emergency Signal',
       'Enemy Detects Signal').

choice('Rescue Ship Arrives',
       'Crew Rescued Safely').

choice('Enemy Detects Signal',
       'Alien Fleet Attacks').


% =========================================
% ASTEROID COLLISION MISSION
% =========================================

choice('Handle Asteroid Collision',
       'Activate Energy Shields').

choice('Handle Asteroid Collision',
       'Change Space Route').

choice('Handle Asteroid Collision',
       'Launch Escape Pods').

choice('Activate Energy Shields',
       'Asteroid Deflected Successfully').

choice('Activate Energy Shields',
       'Shield System Failure').

choice('Change Space Route',
       'Safe Alternate Route Found').

choice('Change Space Route',
       'Entered Dangerous Black Hole').

choice('Launch Escape Pods',
       'Crew Escaped Safely').

choice('Launch Escape Pods',
       'Pods Lost In Space').


% =========================================
% GAME TREE DISPLAY
% =========================================

show_tree(start) :-
    nl,
    write('=========================================='), nl,
    write('   AI SPACE MISSION SIMULATION SYSTEM'), nl,
    write('=========================================='), nl,
    nl,
    write('Mission AI Initialized Successfully'), nl,
    nl,
    display_tree(start, 0).


display_tree(Node, Depth) :-
    indent(Depth),
    write('|-- '),
    write(Node), nl,
    choice(Node, Next),
    NewDepth is Depth + 1,
    display_tree(Next, NewDepth),
    fail.

display_tree(_, _).


% =========================================
% INDENTATION
% =========================================

indent(0).

indent(N) :-
    N > 0,
    write('    '),
    N1 is N - 1,
    indent(N1).


% =========================================
% NEXT POSSIBLE DECISIONS
% =========================================

next_choice(Node) :-
    choice(Node, Next),
    write('Possible Outcome: '),
    write(Next), nl,
    fail.

next_choice(_).


% =========================================
% OUTCOME EVALUATION
% =========================================

safe('Mission Successfully Saved').
safe('Advanced Energy Source Acquired').
safe('Crew Rescued Safely').
safe('Asteroid Deflected Successfully').
safe('Safe Alternate Route Found').
safe('Crew Escaped Safely').

danger('Spaceship Destroyed').
danger('Alien Fleet Attacks').
danger('Crew Members Injured').
danger('Shield System Failure').
danger('Entered Dangerous Black Hole').
danger('Pods Lost In Space').


evaluate(Outcome) :-
    safe(Outcome),
    write(Outcome),
    write(' --> SAFE OUTCOME'), nl.

evaluate(Outcome) :-
    danger(Outcome),
    write(Outcome),
    write(' --> DANGEROUS OUTCOME'), nl.


% =========================================
% AI RECOMMENDATION SYSTEM
% =========================================

recommend('Repair Communication System') :-
    write('AI Recommendation: Repair Communication System is the safest option.'), nl.

recommend('Explore Nearby Planet') :-
    write('AI Recommendation: Explore carefully due to possible alien threats.'), nl.

recommend('Send Emergency Signal') :-
    write('AI Recommendation: Sending signals may attract unknown enemies.'), nl.

recommend('Handle Asteroid Collision') :-
    write('AI Recommendation: Activate Energy Shields for maximum protection.'), nl.


% =========================================
% MISSION STATUS ANALYZER
% =========================================

mission_status('Mission Successfully Saved') :-
    write('MISSION STATUS: SUCCESS'), nl.

mission_status('Advanced Energy Source Acquired') :-
    write('MISSION STATUS: SUCCESS'), nl.

mission_status('Crew Rescued Safely') :-
    write('MISSION STATUS: SUCCESS'), nl.

mission_status('Asteroid Deflected Successfully') :-
    write('MISSION STATUS: SUCCESS'), nl.

mission_status('Safe Alternate Route Found') :-
    write('MISSION STATUS: SUCCESS'), nl.

mission_status('Crew Escaped Safely') :-
    write('MISSION STATUS: SUCCESS'), nl.

mission_status('Spaceship Destroyed') :-
    write('MISSION STATUS: FAILURE'), nl.

mission_status('Alien Fleet Attacks') :-
    write('MISSION STATUS: FAILURE'), nl.

mission_status('Entered Dangerous Black Hole') :-
    write('MISSION STATUS: FAILURE'), nl.

mission_status('Pods Lost In Space') :-
    write('MISSION STATUS: FAILURE'), nl.


% =========================================
% MISSION SELECTION SYSTEM
% =========================================

start_mission(communication) :-
    nl,
    write('===== COMMUNICATION FAILURE MISSION ====='), nl,
    nl,
    display_tree('Repair Communication System', 0).

start_mission(exploration) :-
    nl,
    write('===== PLANET EXPLORATION MISSION ====='), nl,
    nl,
    display_tree('Explore Nearby Planet', 0).

start_mission(signal) :-
    nl,
    write('===== EMERGENCY SIGNAL MISSION ====='), nl,
    nl,
    display_tree('Send Emergency Signal', 0).

start_mission(asteroid) :-
    nl,
    write('===== ASTEROID COLLISION MISSION ====='), nl,
    nl,
    display_tree('Handle Asteroid Collision', 0).


% =========================================
% AI RISK LEVEL ANALYZER
% =========================================

risk_level('Repair Communication System') :-
    write('RISK LEVEL: LOW RISK'), nl.

risk_level('Explore Nearby Planet') :-
    write('RISK LEVEL: HIGH RISK'), nl.

risk_level('Send Emergency Signal') :-
    write('RISK LEVEL: MEDIUM RISK'), nl.

risk_level('Handle Asteroid Collision') :-
    write('RISK LEVEL: HIGH RISK'), nl.