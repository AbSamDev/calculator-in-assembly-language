;+-------------------------------------------+
;|        Assembly Language (Final Project)
;|   ========================================+
;|   49Function
;|   CALCULATOR
;|   ========================================+
;|   Created by: Abdul Samad
;|   
;|   ========================================+
;+-------------------------------------------+

INCLUDE Irvine32.inc

.data
firstMsg Byte "-------------------Calculator's main functionality----------------", 0ah, 0dh, 0ah, 0dh
Byte " Press 1-- to perform basic arithmetics", 0ah, 0dh
Byte " Press 2-- to take exponent of the value", 0ah, 0dh
Byte " Press 3-- to calculate GCD of two numbers", 0ah, 0dh
Byte " Press 4-- to calculate percentage in terms of profit and loss", 0ah, 0dh
Byte " Press 5-- to perform floating point division", 0ah, 0dh
Byte " Press 6-- to show and use specific constants modules", 0ah, 0dh
Byte " Press 7-- to calculate factorial,combination and permutation", 0ah, 0dh
Byte " Press 8-- to exit", 0

stre byte "Enter 4 to print the value of Universal Constants",0
stree byte "Enter 5 to Convert the units of quantities",0
s byte "Enter 6 to Calculate the percentage",0
str1 byte "Enter 1 if you want to see the value of mass of proton",0
str2 byte "Enter 2 if you want to see the value of mass of nutron",0
str3 byte "Enter 3 if you want to see the value of mass of electron",0
str4 byte "Enter 4 if you want to see the value of meau",0
str5 byte "Enter 5 if you want to see the value of A0",0
str6 byte "Enter 6 if you want to see the value of h",0
str7 byte "Enter 7 if you want to see the value of meu n",0
str8 byte "Enter 8 if you want to see the value meu b",0
str9 byte "Enter 9 if you want to see the value of h",0
str10 byte "Enter 10 if you want to see the value of a",0
str11 byte "Enter 11 if you want to see the value of re",0
str12 byte "Enter 12 if you want to see the value of lamda e",0
str13 byte "Enter 13 if you want to see the value of lamda p",0
str14 byte "Enter 14 if you want to see the value of lamda c.p",0
str15 byte "Enter 15 if you want to see the value of lamda c.n",0
str16 byte "Enter 16 if you want to see the value of R infinte",0
str17 byte "Enter 17 if you want to see the value of u",0
str18 byte "Enter 18 if you want to see the value of meu p",0
str19 byte "Enter 19 if you want to see the value of meu e",0
str20 byte "Enter 20 if you want to see the value of meu n",0
str21 byte "Enter 21 if you want to see the value of double meu",0
str22 byte "Enter 22 if you want to see the value of F",0
str23 byte "Enter 23 if you want to see the value of e",0
str24 byte "Enter 24 if you want to see the value of NA",0
str25 byte "Enter 25 if you want to see the value Vm",0
str26 byte "Enter 26 if you want to see the value of K",0
str27 byte "Enter 27 if you want to see the value of R",0
str28 byte "Enter 28 if you want to see the value Co",0
str29 byte "Enter 29 if you want to see the value of C1",0
str30 byte "Enter 30 if you want to see the value of C2",0
str31 byte "Enter 31 if you want to see the value of sigma",0
str32 byte "Enter 32 if you want to see the value of e0",0
str33 byte "Enter 33 if you want to see the value of meu 0",0
str34 byte "Enter 34 if you want to see the value of fi",0
str35 byte "Enter 35 if you want to see the value g",0
str36 byte "Enter 36 if you want to see the value of G0",0
str37 byte "Enter 37 if you want to see the value of Z0",0
str38 byte "Enter 38 if you want to see the value of t",0
str39 byte "Enter 39 if you want to see the value of mass of meu n",0
str40 byte "Enter 40 if you want to see the value of mass of meu n",0
var1 byte "1.6726x10^-27",0
var2 byte "1.6792x10^-27",0
var3 byte "9.013x10^-31",0
var4 byte "1.8835x10^-28",0
var5 byte "5.29177x10^-11",0
var6 byte "6.6206x10^-34",0
var7 byte "5.050x10^-27",0
var8 byte "9.274x10^-24",0
var9 byte "1.0545x10^-34",0
var10 byte "7.2973x10^-3",0
var11 byte "2.8179x10^-15",0
var12 byte "2.4263x10^-12",0
var13 byte "267522209.9",0
var14 byte "1.3214x10^-15",0
var15 byte "1.3195x10^-15",0
var16 byte "10973731.57",0
var17 byte "1.6605x10^-27",0
var18 byte "1.410606x10^-26",0
var19 byte "-9.2847x10^-24",0
var20 byte "-9.662310^-27",0
var21 byte "-4.49044x10^-26",0
var22 byte "96485.3399",0
var23 byte "1.6021x10^-19",0
var24 byte "6.02x10^23",0
var25 byte "1.3806x10^-23",0
var26 byte "0.02241",0
var27 byte "8.314",0
var28 byte "299792458",0
var29 byte "3.74177x10^-16",0
var30 byte "0.01438",0
var31 byte "5.6704x10^-8",0
var32 byte "8.8541x10^-12",0
var33 byte "1.2566x10^-6",0
var34 byte "2.0678x10^-15",0
var35 byte "9.8066",0
var36 byte "7.7480x10^-5",0
var37 byte "376.7303",0
var38 byte "273.15",0
var39 byte "6.67428x10^-11",0
var40 byte "101325",0
per byte "Enter the total value and small value to find percentage ",0
divi byte "Enter the first value and 2nd value: ",0ah,0dh
flo real8 100.0

firstSubMsg  Byte "-------------------Basic Arithmetics----------------", 0ah, 0dh, 0ah, 0dh
    Byte " Press 1-- to perform addition", 0ah, 0dh
Byte " Press 2-- to perform subtractiono", 0ah, 0dh
Byte " Press 3-- to perform product", 0ah, 0dh
Byte " Press 4-- to perform quotient", 0ah, 0dh
Byte " Press 5-- to perform modulas", 0

SubMsg2 Byte "-------------------Factorial,Combination,Permutation----------------", 0ah, 0dh, 0ah, 0dh
        Byte " Press 1-- to perform factorial", 0ah, 0dh

factMsg1 Byte "Enter the value u want to get factorial of: ", 0

fMsgAdd  Byte "-------------------addition----------------", 0
fMsgSub  Byte "-------------------subtraction----------------", 0    
fMsgMul  Byte "-------------------product----------------", 0
fMsgDiv  Byte "-------------------quotient----------------", 0
fMsgMod  Byte "-------------------modulas----------------", 0
fMsgPow  Byte "-------------------value to some power----------------", 0
fMsgGcd  Byte "-------------------GCD----------------", 0
fMsgFac  Byte "-------------------factorial----------------", 0
fMsgCom  Byte "-------------------combinatoin----------------", 0
fMsgPer  Byte "-------------------permutation----------------", 0
fMsgCen  Byte "-------------------percentage----------------", 0
fMsgUni  Byte "-------------------unit conversion----------------", 0
fMsgCon  Byte "-------------------specific constants----------------", 0

userNum1 DWORD ? ; first integer input by user
userNum2 DWORD ? ; second integer input by user

userSum DWORD ? ; result of sum
userSub DWORD ? ; result of difference
userProd DWORD ? ; result of product
userQuot DWORD ? ; result of quotient
userRem DWORD ? ; result of remainder

input1 BYTE "Please enter your first integer: ", 0
input2 BYTE "Please enter your second integer: ", 0
msgGCD   BYTE "The GCD of the integers is: ", 0
intX DWORD ?
intY DWORD ?

prompt_1 BYTE "First number: ", 0
prompt_2 BYTE "Second number: ", 0

result_A BYTE " + ", 0
result_B BYTE " - ", 0
result_C BYTE " * ", 0
result_D BYTE " / ", 0
result_R BYTE "Quotient Remainder: ", 0
result_o BYTE " or ", 0
result_E BYTE " = ", 0
result_F BYTE " % ", 0

msg1 byte "Enter  value: ", 0
msg2 byte "Enter Power:", 0
msg3 byte "Answer is: ", 0
value dword ?
power dword ?

changeToF REAL8 0.00 ; used to change numbers to floaats
roundFloat1 REAL8 1000.0 ; round the float during multiplication, round to int
roundFloat2 REAL8 1000.0 ; used to div back into flow when rounding
userFloat1 REAL8 ? ; float of userNum1
userFloatRem REAL8 ? ; float version of remainder
userEnd DWORD ? ; decides if the while loop ends
 
loopStop DWORD 0 ; compared. Anything greater than 0 will continue loop.
error_1 BYTE "Error!!! Your first number -must- be larger than the second.", 0 ; Standard error message

output byte "Output is: ",0
.code

sum PROTO, val1:dword , val2:dword
subtract PROTO, val1:dword , val2:dword
multiply PROTO, val1:dword , val2:dword
divide PROTO, val1:dword , val2:dword
modulas PROTO, val1:dword , val2:dword
exponent PROTO, value: dword, power: dword
GCD PROTO, val1 : dword , val2 : dword
Factorial PROTO
;apna
option4 proto
option5 proto
option6 proto
;option 4 prototyes
sub1option4 proto
sub2option4 proto
sub3option4 proto
sub4option4 proto
sub5option4 proto
sub6option4 proto
sub7option4 proto
sub8option4 proto
sub9option4 proto
sub10option4 proto
sub11option4 proto
sub12option4 proto
sub13option4 proto
sub14option4 proto
sub15option4 proto
sub16option4 proto
sub17option4 proto
sub18option4 proto
sub19option4 proto
sub20option4 proto
sub21option4 proto
sub22option4 proto
sub23option4 proto
sub24option4 proto
sub25option4 proto
sub26option4 proto
sub27option4 proto
sub28option4 proto
sub29option4 proto
sub30option4 proto
sub31option4 proto
sub32option4 proto
sub33option4 proto
sub34option4 proto
sub35option4 proto
sub36option4 proto
sub37option4 proto
sub38option4 proto
sub39option4 proto
sub40option4 proto

main PROC
 
mov edx,OFFSET firstMsg
call crlf
call writeString
call crlf
call crlf
call readint
call crlf
cmp eax,1
JE C1
cmp eax,2
JE C2
cmp eax,3
JE C3
cmp eax,4
JE C4
cmp eax,5
JE C5
cmp eax,6
JE C6
cmp eax,7
JE C7
cmp eax,8
JE en


C1:
mov edx, OFFSET firstSubMsg
call writeString
call crlf
call crlf
call readint
call crlf
cmp eax,1
JE B1
cmp eax,2
JE B2
cmp eax,3
JE B3
cmp eax,4
JE B4
cmp eax,5
JE B5
jmp en
B1:  ;sum
mov edx, OFFSET fMsgAdd
call writestring
call crlf
;taking two inputs

mov edx, OFFSET prompt_1 ; ask user for num1
call WriteString
call ReadInt ; get num1
mov userNum1, eax
mov edx, OFFSET prompt_2 ; ask user for num2
call WriteString
call ReadInt ; get num2
mov userNum2, eax
;calling sum function (calculating and displaying)
invoke sum, userNum1,userNum2
jmp en


B2: ;sub
mov edx, OFFSET fMsgSub
call writestring
call crlf
;taking two inputs
mov edx, OFFSET prompt_1 ; ask user for num1
call WriteString
call ReadInt ; get num1
mov userNum1, eax
mov edx, OFFSET prompt_2 ; ask user for num2
call WriteString
call ReadInt ; get num2
mov userNum2, eax
;calling subtract function (calculating and displaying)
invoke subtract, userNum1,userNum2
jmp en
B3: ;mul
mov edx, OFFSET fMsgMul
call writestring
call crlf
;taking two inputs
mov edx, OFFSET prompt_1 ; ask user for num1
call WriteString
call ReadInt ; get num1
mov userNum1, eax
mov edx, OFFSET prompt_2 ; ask user for num2
call WriteString
call ReadInt ; get num2
mov userNum2, eax
;calling multiply function (calculating and displaying)
invoke multiply, userNum1,userNum2
jmp en
B4: ;div
mov edx, OFFSET fMsgDiv
call writestring
call crlf
;taking two inputs
mov edx, OFFSET prompt_1 ; ask user for num1
call WriteString
call ReadInt ; get num1
mov userNum1, eax
mov edx, OFFSET prompt_2 ; ask user for num2
call WriteString
call ReadInt ; get num2
mov userNum2, eax
;calling divide function (calculating and displaying)
invoke divide, userNum1,userNum2
jmp en
B5: ;mod
mov edx, OFFSET fMsgMod
call writestring
call crlf
;taking two inputs
mov edx, OFFSET prompt_1 ; ask user for num1
call WriteString
call ReadInt ; get num1
mov userNum1, eax
mov edx, OFFSET prompt_2 ; ask user for num2
call WriteString
call ReadInt ; get num2
mov userNum2, eax
;calling modulas function (calculating and displaying)
invoke modulas, userNum1,userNum2
jmp en
;exponent of a value to the given power
C2:
mov edx, OFFSET fMsgPow
call writestring
call crlf
; taking value and exponent
mov edx, offset msg1
call writestring
call readint
mov value,eax
mov edx, offset msg2
call writestring
call readint
mov power,eax

invoke exponent, value, power

mov edx, offset msg3
call writestring
call writeint
call crlf



jmp en
C3:;GCD
mov edx, OFFSET fMsgGcd
;taking input
call writestring
call crlf
    mov edx, OFFSET input1 ;read and store intX
CALL WriteString
CALL ReadInt
mov intX, eax

mov edx, OFFSET input2 ;read and store intY
CALL WriteString
CALL ReadInt
mov intY, eax

invoke GCD, intX,intY

jmp en


C4:
mov edx,offset per
call writestring
call readfloat
call readfloat
fdiv st(0),st(1)
fld flo
fmul 
call writefloat
jmp en
C5:
mov edx,offset divi
call crlf
call writestring
call readfloat
call readfloat
fdiv st(0),st(1)
call writefloat
jmp en
C6:
call sub1option4
call crlf
call sub2option4
call crlf
call sub3option4
call crlf
call sub4option4
call crlf
call sub5option4
call crlf
call sub6option4
call crlf
call sub7option4
call crlf
call sub8option4
call crlf
call sub9option4
call crlf
call sub10option4
call crlf
call sub11option4
call crlf
call sub12option4
call crlf
call sub13option4
call crlf
call sub14option4
call crlf
call sub15option4
call crlf
call sub16option4
call crlf
call sub17option4
call crlf
call sub18option4
call crlf
call sub19option4
call crlf
call sub20option4
call crlf
call sub21option4
call crlf
call sub22option4
call crlf
call sub23option4
call crlf
call sub24option4
call crlf
call sub25option4
call crlf
call sub26option4
call crlf
call sub27option4
call crlf
call sub28option4
call crlf
call sub29option4
call crlf
call sub30option4
call crlf
call sub31option4
call crlf
call sub32option4
call crlf
call sub33option4
call crlf
call sub34option4
call crlf
call sub35option4
call crlf
call sub36option4
call crlf
call sub37option4
call crlf
call sub38option4
call crlf
call sub39option4
call crlf
call sub40option4
call crlf
;comparing for jumping
call readint
cmp eax,1
jz j1
cmp eax,2
jz j2
cmp eax,3
jz j3
cmp eax,4
jz j4
cmp eax,5
jz j5
cmp eax,6
jz j6
cmp eax,7
jz j7
cmp eax,8
jz j8
cmp eax,9
jz j9
cmp eax,10
jz j10
cmp eax,11
jz j11
cmp eax,12
jz j12
cmp eax,13
jz j13
cmp eax,14
jz j14
cmp eax,15
jz j15
cmp eax,16
jz j16
cmp eax,17
jz j17
cmp eax,18
jz j18
cmp eax,19
jz j19
cmp eax,20
jz j20
cmp eax,21
jz j21
cmp eax,22
jz j22
cmp eax,23
jz j23
cmp eax,24
jz j24
cmp eax,25
jz j25
cmp eax,26
jz j26
cmp eax,27
jz j27
cmp eax,28
jz j28
cmp eax,29
jz j29
cmp eax,30
jz j30
cmp eax,31
jz j31
cmp eax,32
jz j32
cmp eax,33
jz j33
cmp eax,34
jz j34
cmp eax,35
jz j35
cmp eax,36
jz j36
cmp eax,37
jz j37
cmp eax,38
jz j38
cmp eax,39
jz j39
cmp eax,40
jz j40
jmp en
j1:
mov edx,offset var1
call writestring
jmp en
j2:
mov edx,offset var2
call writestring
jmp en
j3:
mov edx,offset var3
call writestring

jmp en
j4:
mov edx,offset var4
call writestring

jmp en
j5:
mov edx,offset var5
call writestring

jmp en
j6:
mov edx,offset var6
call writestring

jmp en
j7:
mov edx,offset var7
call writestring

jmp en
j8:
mov edx,offset var8
call writestring

jmp en
j9:
mov edx,offset var9
call writestring

jmp en
j10:
mov edx,offset var10
call writestring

jmp en
j11:
mov edx,offset var11
call writestring

jmp en
j12:
mov edx,offset var12
call writestring

jmp en
j13:
mov edx,offset var13
call writestring

jmp en
j14:
mov edx,offset var14
call writestring

jmp en
j15:
mov edx,offset var15
call writestring

jmp en
j16:
mov edx,offset var16
call writestring

jmp en
j17:
mov edx,offset var17
call writestring

jmp en
j18:
mov edx,offset var18
call writestring

jmp en
j19:
mov edx,offset var19
call writestring

jmp en
j20:
mov edx,offset var20
call writestring

jmp en
j21:
mov edx,offset var21
call writestring

jmp en
j22:
mov edx,offset var22
call writestring

jmp en
j23:
mov edx,offset var23
call writestring

jmp en
j24:
mov edx,offset var24
call writestring

jmp en
j25:
mov edx,offset var25
call writestring

jmp en
j26:
mov edx,offset var26
call writestring

jmp en
j27:
mov edx,offset var27
call writestring

jmp en
j28:
mov edx,offset var28
call writestring

jmp en
j29:
mov edx,offset var29
call writestring

jmp en
j30:
mov edx,offset var30
call writestring

jmp en
j31:
mov edx,offset var31
call writestring

jmp en
j32:
mov edx,offset var32
call writestring

jmp en
j33:
mov edx,offset var33
call writestring

jmp en
j34:
mov edx,offset var34
call writestring

jmp en
j35:
mov edx,offset var35
call writestring

jmp en
j36:
mov edx,offset var36
call writestring

jmp en
j37:
mov edx,offset var37
call writestring

jmp en
j38:
mov edx,offset var38
call writestring

jmp en
j39:
mov edx,offset var39
call writestring

jmp en
j40:
mov edx,offset var40
call writestring

;factorial part
C7:
mov edx, OFFSET SubMsg2
call writeString
call crlf
call crlf
call readint
call crlf
cmp eax,1
JE F1
F1:   ;factorial call
mov edx, OFFSET fMsgFac
call writeString
call crlf
mov edx, offset factMsg1
call writeString
call readint
push eax
call Factorial
 call WriteDec
 call Crlf
 jmp en
;---------


call crlf
en:
call crlf
call crlf
call waitmsg
INVOKE EXITProcess, 0
main ENDP
; Sum function -----------------------
sum PROC, val1:dword , val2:dword
; Calculate Sum
mov eax, val1
mov ebx, val2
add eax, ebx ; num1 + num2
mov userSum, eax
; Sum Output --  num1 + num2
mov eax, val1
call WriteDec
mov edx, OFFSET result_A
call WriteString
mov eax, val2
call WriteDec
mov edx, OFFSET result_E
call WriteString
mov eax, userSum
call WriteInt
call CrLf
ret
sum ENDP
; Subtract function -----------------------
subtract PROC, val1:dword , val2:dword
; calculate Difference(Subtraction)
mov eax, val1
mov ebx, val2
sub eax, ebx ; num1 - num2
mov userSub, eax
; Difference Output --  num1 - num2
mov eax, val1
call WriteDec
mov edx, OFFSET result_B
call WriteString
mov eax, val2
call WriteDec
mov edx, OFFSET result_E
call WriteString
mov eax, userSub
call WriteInt
call CrLf
ret
subtract endp
; Product function -----------------------
multiply PROC, val1:dword , val2:dword
; Calculate Products
mov eax, val1
mov ebx, val2
mul ebx ; num1 * num2
mov userProd, eax
; Product Output -- num1 * num2
mov eax, val1
call WriteDec
mov edx, OFFSET result_C
call WriteString
mov eax, val2
call WriteDec
mov edx, OFFSET result_E
call WriteString
mov eax, userProd
call Writeint
call CrLf
ret
multiply endp
; Divide function -----------------------
divide PROC, val1:dword , val2:dword
; Calculate Quotients
mov edx,0 ; some kinda precautionary measures 
mov eax, val1
mov ebx, val2
div ebx ; num1 / num2
mov userQuot, eax
; Quotient Output -- num1 / num2 answer in integer (no floating value)
mov eax, val1
call WriteDec
mov edx, OFFSET result_D
call WriteString
mov eax, val2
call WriteDec
mov edx, OFFSET result_E
call WriteString
mov eax, userQuot
call WriteInt
call CrLf
mov edx,offset error_1
ret
divide endp
; Modulas function -----------------------
modulas PROC, val1:dword , val2:dword
; Calculate Remainder
mov edx,0 ; some kinda precautionary measures 
mov eax, val1
mov ebx, val2
div ebx
mov userRem, edx ; num1 % num2
; Remainder Output -- num1 / num2
mov eax, val1
call WriteDec
mov edx, OFFSET result_F
call WriteString
mov eax, val2
call WriteDec
call crlf
mov edx, OFFSET result_R
call WriteString
mov eax, userRem
call WriteDec
mov edx, OFFSET result_o
call WriteString
fld userFloatRem
call WriteFloat
call CrLf
call CrLf
ret
modulas endp
; exponent function -----------------------
exponent PROC, result2: dword, power2: dword
mov eax, 1
mov ecx, power  
L1:
MUL result2    
loop L1
ret
exponent endp
GCD PROC, val1:dword, val2:dword
cmp val1, 0 ;get abs value
jge SkipNeg1
neg val1
SkipNeg1:

cmp val2, 0 ;get abs value
jge SkipNeg2
neg val2
SkipNeg2:

L1:
mov eax, val1
mov ebx, val2
xor edx, edx
div ebx ;eax is quotient, edx is remainder
mov val1, ebx ;move intY into intX  
mov val2, edx ;move remainder into intY
cmp val2, 0
jg L1


mov edx, OFFSET msgGCD
CALL WriteString ;print GCD
mov eax, val1
CALL WriteDec
CALL CRLF
ret
GCD endp
; Factorial function -----------------------
Factorial PROC
push ebp
 mov ebp,esp
 mov eax,[ebp+8]
 cmp eax,0
ja L1
 mov eax,1  
jmp L2
L1:
dec eax
push eax
call Factorial
 ReturnFact:
mov ebx,[ebp+8]  
 mul ebx        
L2: pop ebp ; return EAX
ret 4 ; clean up stack
;mov edx, offset output
; call writeString
Factorial ENDP
; apna
option4 proc
mov edx,offset stre
call writestring
ret
option4 endp

option5 proc
mov edx,offset stree
call writestring
ret
option5 endp

option6 proc
mov edx,offset s
call writestring
ret
option6 endp

sub1option4 proc
mov edx,offset str1
call writestring
ret
sub1option4 endp

sub2option4 proc
mov edx,offset str2
call writestring
ret
sub2option4 endp

sub3option4 proc
mov edx,offset str3
call writestring
ret
sub3option4 endp

sub4option4 proc
mov edx,offset str4
call writestring
ret
sub4option4 endp

sub5option4 proc
mov edx,offset str5
call writestring
ret
sub5option4 endp

sub6option4 proc
mov edx,offset str6
call writestring
ret
sub6option4 endp

sub7option4 proc
mov edx,offset str7
call writestring
ret
sub7option4 endp

sub8option4 proc
mov edx,offset str8
call writestring
ret
sub8option4 endp

sub9option4 proc
mov edx,offset str9
call writestring
ret
sub9option4 endp

sub10option4 proc
mov edx,offset str10
call writestring
ret
sub10option4 endp

sub11option4 proc
mov edx,offset str11
call writestring
ret
sub11option4 endp

sub12option4 proc
mov edx,offset str12
call writestring
ret
sub12option4 endp

sub13option4 proc
mov edx,offset str13
call writestring
ret
sub13option4 endp

sub14option4 proc
mov edx,offset str14
call writestring
ret
sub14option4 endp

sub15option4 proc
mov edx,offset str15
call writestring
ret
sub15option4 endp

sub16option4 proc
mov edx,offset str16
call writestring
ret
sub16option4 endp

sub17option4 proc
mov edx,offset str17
call writestring
ret
sub17option4 endp

sub18option4 proc
mov edx,offset str18
call writestring
ret
sub18option4 endp

sub19option4 proc
mov edx,offset str19
call writestring
ret
sub19option4 endp

sub20option4 proc
mov edx,offset str20
call writestring
ret
sub20option4 endp

sub21option4 proc
mov edx,offset str21
call writestring
ret
sub21option4 endp

sub22option4 proc
mov edx,offset str22
call writestring
ret
sub22option4 endp

sub23option4 proc
mov edx,offset str23
call writestring
ret
sub23option4 endp

sub24option4 proc
mov edx,offset str24
call writestring
ret
sub24option4 endp

sub25option4 proc
mov edx,offset str25
call writestring
ret
sub25option4 endp

sub26option4 proc
mov edx,offset str26
call writestring
ret
sub26option4 endp

sub27option4 proc
mov edx,offset str27
call writestring
ret
sub27option4 endp

sub28option4 proc
mov edx,offset str28
call writestring
ret
sub28option4 endp

sub29option4 proc
mov edx,offset str29
call writestring
ret
sub29option4 endp

sub30option4 proc
mov edx,offset str30
call writestring
ret
sub30option4 endp

sub31option4 proc
mov edx,offset str31
call writestring
ret
sub31option4 endp

sub32option4 proc
mov edx,offset str32
call writestring
ret
sub32option4 endp

sub33option4 proc
mov edx,offset str33
call writestring
ret
sub33option4 endp

sub34option4 proc
mov edx,offset str34
call writestring
ret
sub34option4 endp

sub35option4 proc
mov edx,offset str35
call writestring
ret
sub35option4 endp

sub36option4 proc
mov edx,offset str36
call writestring
ret
sub36option4 endp

sub37option4 proc
mov edx,offset str37
call writestring
ret
sub37option4 endp

sub38option4 proc
mov edx,offset str38
call writestring
ret
sub38option4 endp

sub39option4 proc
mov edx,offset str39
call writestring
ret
sub39option4 endp

sub40option4 proc
mov edx,offset str40
call writestring
ret
sub40option4 endp

END main
;This is the end of the project code
