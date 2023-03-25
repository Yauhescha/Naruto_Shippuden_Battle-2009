; The CMD file.
[Command]
name = "CPU1"
command = B,F,B,a
time = 0

[Command]
name = "CPU2"
command = B,F,B,b
time = 0

[Command]
name = "CPU3"
command = B,F,B,c
time = 0

[Command]
name = "CPU4"
command = B,F,B,x
time = 0

[Command]
name = "CPU5"
command = B,F,B,y
time = 0

[Command]
name = "CPU6"
command = B,F,B,z
time = 0

[Command]
name = "CPU7"
command = B,D,B,a
time = 0

[Command]
name = "CPU8"
command = B,D,B,b
time = 0

[Command]
name = "CPU9"
command = B,D,B,c
time = 0

[Command]
name = "CPU10"
command = B,D,B,x
time = 0

[Command]
name = "CPU11"
command = B,D,B,y
time = 0

[Command]
name = "CPU12"
command = B,D,B,z
time = 0
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 
;-| AI Activators|-------------------------------------------------------------------

[Command]
name = "CPU"
command = a
time = 1

[Command]
name = "CPU"
command = b
time = 1

[Command]
name = "CPU"
command = c
time = 1

[Command]
name = "CPU"
command = x
time = 1

[Command]
name = "CPU"
command = y
time = 1

[Command]
name = "CPU"
command = z
time = 1

[Command]
name = "CPU"
command = s
time = 1

[Command]
name = "CPU"
command = F
time = 1

[Command]
name = "CPU"
command = B
time = 1

[Command]
name = "CPU"
command = U
time = 1

[Command]
name = "CPU"
command = D
time = 1

[Command]
name = "AI"
command = U, U, U, U, U, U, U, U, b, U, a, U, U, U, U, U, c, U, z, U
time = 1

[Command]
name = "AI1"
command = D, D, D, U, U, U, x, U, U, U, a, U, U, U, U, U, U, U, b, U
time = 1

[Command]
name = "AI2"
command = F, F, F, U, U, U, U, U, x, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI3"
command = B, B, B, U, U, U, U, U, x, U, U, U, z, U, U, U, U, U, U, b
time = 1

[Command]
name = "AI4"
command = U, U, U, U, U, U, U, a, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI5"
command = D, D, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI6"
command = F, F, F, U, U, U, U, U, U, y, U, U, z, y, U, U, U, U, U, U
time = 1

[Command]
name = "AI7"
command = B, B, B, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI8"
command = U, U, U, U, U, U, U, a, U, U, U, U, U, y, y, U, U, U, U, U
time = 1

[Command]
name = "AI9"
command = D, D, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI10"
command = F, B, F, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI11"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI12"
command = F, B, F, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI13"
command = B, F, B, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI14"
command = U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI15"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI16"
command = F, B, F, U, U, U, U, U, U, U, F, U, a, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI17"
command = B, F, B, U, U, U, U, a, U, U, B, U, U, U, U, U, c, U, U, b
time = 1

[Command]
name = "AI18"
command = U, D, U, U, U, U, U, z, U, U, U, y, U, y, U, D, U, U, U, U
time = 1

[Command]
name = "AI19"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, D, U, U, U
time = 1

[Command]
name = "AI20"
command = F, B, F, U, U, U, U, U, U, F, B, z, a, U, U, U, D, U, U, U
time = 1


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1]
type = VarSet
triggerall = statetype = S
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = statetype = S
triggerall = p2statetype = S
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = statetype = A
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
v = 50
value = 1






[State -1, AI Run]
type = ChangeState
value = 100
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = Var(50) = 1
triggerall = p2life > 0
triggerall = p2bodydist X > 420
trigger2 = power >= 0
trigger1 = statetype = S
trigger1 = ctrl

; AI Kynai
[State -1, AI Kynai]
type = ChangeState
value = 999
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < !500
trigger1 = statetype = S
trigger1 = ctrl


; AI Teleport
[State -1, AI Teleport]
type = ChangeState
value = 666
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < !700
trigger1 = statetype = S
trigger1 = ctrl

; AI combo
[State -1, AI combo]
type = ChangeState
value = 200
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl


; AI combo1
[State -1, AI combo1]
type = ChangeState
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
value = 210

; AI combo2
[State -1, AI combo2]
type = ChangeState
triggerall = Var(10) = 0
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 210
value = 220

; AI Crouching Light Punch
[State -1, AI Crouching Light Punch]
type = ChangeState
value = 420
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl


; AI Jump Light Punch
[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl


; AI Jump Medium Punch
[State -1, AI Jump Medium Punch]
type = ChangeState
value = 610
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = A
trigger1 = ctrl


[State -1, AI Katon Husinka no jutsu Air]
type = ChangeState
value = 1400
triggerall = power >= 1000
Triggerall = Command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, AI Sharingan]
Type = ChangeState
Value = 7000
triggerall = Var(6) = 0
triggerall = power >= 100
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl



; Chidori
[State -1, AI Chidori]
type = ChangeState
value = 1313
triggerall = power >= 3000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl


; Snake
[State -1, AI Snake]
type = ChangeState
value = 1414
triggerall = power >= 1000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

; Lez
[State -1,AI Lez]
type = ChangeState
value = 1515
triggerall = power >= 2000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 70
trigger1 = statetype = S
trigger1 = ctrl
triggerall = Var(10) = 0

; Kirin
[State -1,AI Kirin]
type = ChangeState
value = 1616
triggerall = power >= 4000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

; SharNew
[State -1,AI SharNew]
type = ChangeState
value = 1717
triggerall = power >= 4000
triggerall = life <= 400
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl


[State -1,AI CS2]
type = ChangeState
value = 10000
triggerall = var(3) = 0
triggerall = power >= 3000
trigger1 = command = "c"
trigger1 = var(10) = 0
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl


; Fly
[State -1,AI Fly]
type = ChangeState
value = 101100
triggerall = Var(10) = 1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist Y < -30
trigger1 = statetype = S
trigger1 = statetype = A
trigger1 = ctrl










;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;combo
[State -1, combo]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;combo1
[State -1, combo1]
type = ChangeState
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
value = 210
;---------------------------------------------------------------------------
;combo2
[State -1, combo2]
type = ChangeState
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 210
triggerall = Var(10) = 0
value = 220

; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = Var(10) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Kunai
[State -1, Kunai]
type = ChangeState
value = 999
triggerall = command = "y"
trigger1 = (statetype = s) && ctrl
triggerall = Var(10) = 0

[state -1, Teleport]
type = ChangeState
value = 666
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Chakra
[State -1, Chakra]
type = ChangeState
value = 444
triggerall = command = "hold_a"
triggerall = power < 6000
trigger1 = statetype = S
trigger1 = ctrl

[State -1,Katon Husinka no jutsu Air]
type = ChangeState
value = 1400
triggerall = power >= 1000
Triggerall = Command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1,Sharingan]
Type = ChangeState
Value = 7000
triggerall = Var(6) = 0
Triggerall = Command = "s"
triggerall = power >= 100
Trigger1 = StateType = S
Trigger1 = ctrl

[State -1,SharinganOFF]
Type = ChangeState
Value = 7020
triggerall = Var(6) !=0
Triggerall = Command = "s"
Trigger1 = StateType = S
Trigger1 = ctrl

; Katyn
[State -1,Katyn]
type = ChangeState
value = 111
triggerall = power > -4000
triggerall = power >= 10
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Nagashi
[State -1,Nagashi]
type = ChangeState
value = 123
triggerall = power > -4000
triggerall = power >= 10
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Chidori
[State -1, Chidori]
type = ChangeState
value = 1313
triggerall = power >= 3000
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl

; Snake
[State -1,Snake]
type = ChangeState
value = 1414
triggerall = power >= 1000
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl

; Lez
[State -1,Lez]
type = ChangeState
value = 1515
triggerall = power >= 2000
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = Var(10) = 0

; Kirin
[State -1,Kirin]
type = ChangeState
value = 1616
triggerall = power >= 4000
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl

; SharNew
[State -1,SharNew]
type = ChangeState
value = 12345
triggerall = power >= 4000
triggerall = life <= 400
triggerall = command = "s"
trigger1 = statetype = C
trigger1 = ctrl

;Kawarimi
[State -1, Kawarimi]
Type = ChangeState
Value = 8099
Triggerall = Command = "x" && power >= 200
Triggerall = StateType != A
Trigger1 = StateNo = 5001
Trigger2 = StateNo = 5010
Trigger3 = StateNo = 5011
Trigger4 = StateNo = 5020
Trigger5 = StateNo = 5030
Trigger6 = StateNo = 5035
Trigger7 = StateNo = 5040
Trigger8 = StateNo = 5050
Trigger9 = StateNo = 5070
Trigger10 = StateNo = 5071

[State -1,CS2]
type = ChangeState
value = 10000
triggerall = var(3) = 0
triggerall = power >= 3000
trigger1 = command = "c"
trigger1 = var(10) = 0
trigger1 = statetype = S
trigger1 = ctrl

; Fly
[State -1,Fly]
type = ChangeState
value = 101100
triggerall = Var(10) = 1
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl

; Fly2
[State -1,Fly2]
type = ChangeState
value = 101100
triggerall = Var(10) = 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

; Amaterasu
[State -1,Amaterasu]
type = ChangeState
value = 4114
triggerall = p2name = "DTobi"
triggerall = p2stateno = 7000
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl


[State -1,Head]
type = ChangeState
value = 12221
triggerall = var(10) = 0
triggerall = p2name = "DHidan"
triggerall = p2stateno = 101000
trigger1 = statetype = S
trigger1 = ctrl


[State -1,Head]
type = ChangeState
value = 122211
triggerall = var(10) = 1
triggerall = p2name = "DHidan"
triggerall = p2stateno = 101000
trigger1 = statetype = S
trigger1 = ctrl

[State -1,Head]
type = ChangeState
value = 12221
triggerall = var(10) = 0
triggerall = p2name = "DAsuma"
triggerall = p2stateno = 101000
trigger1 = statetype = S
trigger1 = ctrl

[State -1,Head]
type = ChangeState
value = 122211
triggerall = var(10) = 1
triggerall = p2name = "DAsuma"
triggerall = p2stateno = 101000
trigger1 = statetype = S
trigger1 = ctrl

















[State -1,Head]
type = ChangeState
value = 12221
triggerall = var(10) = 0
triggerall = p2name = "DHidan"
triggerall = p2stateno = 101000
trigger1 = statetype = A
trigger1 = ctrl


[State -1,Head]
type = ChangeState
value = 122211
triggerall = var(10) = 1
triggerall = p2name = "DHidan"
triggerall = p2stateno = 101000
trigger1 = statetype = A
trigger1 = ctrl

[State -1,Head]
type = ChangeState
value = 12221
triggerall = var(10) = 0
triggerall = p2name = "DAsuma"
triggerall = p2stateno = 101000
trigger1 = statetype = A
trigger1 = ctrl

[State -1,Head]
type = ChangeState
value = 122211
triggerall = var(10) = 1
triggerall = p2name = "DAsuma"
triggerall = p2stateno = 101000
trigger1 = statetype = A
trigger1 = ctrl


