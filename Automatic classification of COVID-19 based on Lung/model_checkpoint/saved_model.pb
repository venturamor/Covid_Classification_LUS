??0
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
	MaxPool3D

input"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"
Ttype:
2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8̗#
?
conv3d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv3d_9/kernel

#conv3d_9/kernel/Read/ReadVariableOpReadVariableOpconv3d_9/kernel**
_output_shapes
:0*
dtype0
r
conv3d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv3d_9/bias
k
!conv3d_9/bias/Read/ReadVariableOpReadVariableOpconv3d_9/bias*
_output_shapes
:0*
dtype0
?
conv3d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*!
shared_nameconv3d_12/kernel
?
$conv3d_12/kernel/Read/ReadVariableOpReadVariableOpconv3d_12/kernel**
_output_shapes
:0*
dtype0
t
conv3d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv3d_12/bias
m
"conv3d_12/bias/Read/ReadVariableOpReadVariableOpconv3d_12/bias*
_output_shapes
:0*
dtype0
?
conv3d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*!
shared_nameconv3d_15/kernel
?
$conv3d_15/kernel/Read/ReadVariableOpReadVariableOpconv3d_15/kernel**
_output_shapes
:0*
dtype0
t
conv3d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv3d_15/bias
m
"conv3d_15/bias/Read/ReadVariableOpReadVariableOpconv3d_15/bias*
_output_shapes
:0*
dtype0
?
conv3d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*!
shared_nameconv3d_10/kernel
?
$conv3d_10/kernel/Read/ReadVariableOpReadVariableOpconv3d_10/kernel**
_output_shapes
:00*
dtype0
t
conv3d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv3d_10/bias
m
"conv3d_10/bias/Read/ReadVariableOpReadVariableOpconv3d_10/bias*
_output_shapes
:0*
dtype0
?
conv3d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*!
shared_nameconv3d_13/kernel
?
$conv3d_13/kernel/Read/ReadVariableOpReadVariableOpconv3d_13/kernel**
_output_shapes
:00*
dtype0
t
conv3d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv3d_13/bias
m
"conv3d_13/bias/Read/ReadVariableOpReadVariableOpconv3d_13/bias*
_output_shapes
:0*
dtype0
?
conv3d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*!
shared_nameconv3d_16/kernel
?
$conv3d_16/kernel/Read/ReadVariableOpReadVariableOpconv3d_16/kernel**
_output_shapes
:00*
dtype0
t
conv3d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv3d_16/bias
m
"conv3d_16/bias/Read/ReadVariableOpReadVariableOpconv3d_16/bias*
_output_shapes
:0*
dtype0
?
conv3d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*!
shared_nameconv3d_11/kernel
?
$conv3d_11/kernel/Read/ReadVariableOpReadVariableOpconv3d_11/kernel**
_output_shapes
:00*
dtype0
t
conv3d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv3d_11/bias
m
"conv3d_11/bias/Read/ReadVariableOpReadVariableOpconv3d_11/bias*
_output_shapes
:0*
dtype0
?
conv3d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*!
shared_nameconv3d_14/kernel
?
$conv3d_14/kernel/Read/ReadVariableOpReadVariableOpconv3d_14/kernel**
_output_shapes
:00*
dtype0
t
conv3d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv3d_14/bias
m
"conv3d_14/bias/Read/ReadVariableOpReadVariableOpconv3d_14/bias*
_output_shapes
:0*
dtype0
?
conv3d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*!
shared_nameconv3d_17/kernel
?
$conv3d_17/kernel/Read/ReadVariableOpReadVariableOpconv3d_17/kernel**
_output_shapes
:00*
dtype0
t
conv3d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv3d_17/bias
m
"conv3d_17/bias/Read/ReadVariableOpReadVariableOpconv3d_17/bias*
_output_shapes
:0*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
??*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:?*
dtype0
z
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_8/kernel
s
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel* 
_output_shapes
:
??*
dtype0
q
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:?*
dtype0
|
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_10/kernel
u
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel* 
_output_shapes
:
??*
dtype0
s
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_10/bias
l
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes	
:?*
dtype0
y
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_7/kernel
r
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes
:	?*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	?*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
{
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_11/kernel
t
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes
:	?*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
y
true_positives_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nametrue_positives_2
r
$true_positives_2/Read/ReadVariableOpReadVariableOptrue_positives_2*
_output_shapes	
:?*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:?*
dtype0
{
false_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namefalse_positives_1
t
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes	
:?*
dtype0
{
false_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namefalse_negatives_1
t
%false_negatives_1/Read/ReadVariableOpReadVariableOpfalse_negatives_1*
_output_shapes	
:?*
dtype0
b
total_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_5
[
total_5/Read/ReadVariableOpReadVariableOptotal_5*
_output_shapes
: *
dtype0
b
count_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0
b
total_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_6
[
total_6/Read/ReadVariableOpReadVariableOptotal_6*
_output_shapes
: *
dtype0
b
count_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_6
[
count_6/Read/ReadVariableOpReadVariableOpcount_6*
_output_shapes
: *
dtype0
x
true_positives_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_3
q
$true_positives_3/Read/ReadVariableOpReadVariableOptrue_positives_3*
_output_shapes
:*
dtype0
z
false_positives_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namefalse_positives_2
s
%false_positives_2/Read/ReadVariableOpReadVariableOpfalse_positives_2*
_output_shapes
:*
dtype0
x
true_positives_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_4
q
$true_positives_4/Read/ReadVariableOpReadVariableOptrue_positives_4*
_output_shapes
:*
dtype0
z
false_negatives_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namefalse_negatives_2
s
%false_negatives_2/Read/ReadVariableOpReadVariableOpfalse_negatives_2*
_output_shapes
:*
dtype0
y
true_positives_5VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nametrue_positives_5
r
$true_positives_5/Read/ReadVariableOpReadVariableOptrue_positives_5*
_output_shapes	
:?*
dtype0
y
true_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nametrue_negatives_1
r
$true_negatives_1/Read/ReadVariableOpReadVariableOptrue_negatives_1*
_output_shapes	
:?*
dtype0
{
false_positives_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namefalse_positives_3
t
%false_positives_3/Read/ReadVariableOpReadVariableOpfalse_positives_3*
_output_shapes	
:?*
dtype0
{
false_negatives_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namefalse_negatives_3
t
%false_negatives_3/Read/ReadVariableOpReadVariableOpfalse_negatives_3*
_output_shapes	
:?*
dtype0
b
total_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_7
[
total_7/Read/ReadVariableOpReadVariableOptotal_7*
_output_shapes
: *
dtype0
b
count_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_7
[
count_7/Read/ReadVariableOpReadVariableOpcount_7*
_output_shapes
: *
dtype0
b
total_8VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_8
[
total_8/Read/ReadVariableOpReadVariableOptotal_8*
_output_shapes
: *
dtype0
b
count_8VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_8
[
count_8/Read/ReadVariableOpReadVariableOpcount_8*
_output_shapes
: *
dtype0
x
true_positives_6VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_6
q
$true_positives_6/Read/ReadVariableOpReadVariableOptrue_positives_6*
_output_shapes
:*
dtype0
z
false_positives_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namefalse_positives_4
s
%false_positives_4/Read/ReadVariableOpReadVariableOpfalse_positives_4*
_output_shapes
:*
dtype0
x
true_positives_7VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_7
q
$true_positives_7/Read/ReadVariableOpReadVariableOptrue_positives_7*
_output_shapes
:*
dtype0
z
false_negatives_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namefalse_negatives_4
s
%false_negatives_4/Read/ReadVariableOpReadVariableOpfalse_negatives_4*
_output_shapes
:*
dtype0
y
true_positives_8VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nametrue_positives_8
r
$true_positives_8/Read/ReadVariableOpReadVariableOptrue_positives_8*
_output_shapes	
:?*
dtype0
y
true_negatives_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nametrue_negatives_2
r
$true_negatives_2/Read/ReadVariableOpReadVariableOptrue_negatives_2*
_output_shapes	
:?*
dtype0
{
false_positives_5VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namefalse_positives_5
t
%false_positives_5/Read/ReadVariableOpReadVariableOpfalse_positives_5*
_output_shapes	
:?*
dtype0
{
false_negatives_5VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namefalse_negatives_5
t
%false_negatives_5/Read/ReadVariableOpReadVariableOpfalse_negatives_5*
_output_shapes	
:?*
dtype0
b
total_9VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_9
[
total_9/Read/ReadVariableOpReadVariableOptotal_9*
_output_shapes
: *
dtype0
b
count_9VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_9
[
count_9/Read/ReadVariableOpReadVariableOpcount_9*
_output_shapes
: *
dtype0
?
Adam/conv3d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv3d_9/kernel/m
?
*Adam/conv3d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_9/kernel/m**
_output_shapes
:0*
dtype0
?
Adam/conv3d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*%
shared_nameAdam/conv3d_9/bias/m
y
(Adam/conv3d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_9/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv3d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameAdam/conv3d_12/kernel/m
?
+Adam/conv3d_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_12/kernel/m**
_output_shapes
:0*
dtype0
?
Adam/conv3d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_12/bias/m
{
)Adam/conv3d_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_12/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv3d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameAdam/conv3d_15/kernel/m
?
+Adam/conv3d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_15/kernel/m**
_output_shapes
:0*
dtype0
?
Adam/conv3d_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_15/bias/m
{
)Adam/conv3d_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_15/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv3d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_10/kernel/m
?
+Adam/conv3d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_10/kernel/m**
_output_shapes
:00*
dtype0
?
Adam/conv3d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_10/bias/m
{
)Adam/conv3d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_10/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv3d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_13/kernel/m
?
+Adam/conv3d_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_13/kernel/m**
_output_shapes
:00*
dtype0
?
Adam/conv3d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_13/bias/m
{
)Adam/conv3d_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_13/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv3d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_16/kernel/m
?
+Adam/conv3d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_16/kernel/m**
_output_shapes
:00*
dtype0
?
Adam/conv3d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_16/bias/m
{
)Adam/conv3d_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_16/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv3d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_11/kernel/m
?
+Adam/conv3d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_11/kernel/m**
_output_shapes
:00*
dtype0
?
Adam/conv3d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_11/bias/m
{
)Adam/conv3d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_11/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv3d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_14/kernel/m
?
+Adam/conv3d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_14/kernel/m**
_output_shapes
:00*
dtype0
?
Adam/conv3d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_14/bias/m
{
)Adam/conv3d_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_14/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv3d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_17/kernel/m
?
+Adam/conv3d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_17/kernel/m**
_output_shapes
:00*
dtype0
?
Adam/conv3d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_17/bias/m
{
)Adam/conv3d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_17/bias/m*
_output_shapes
:0*
dtype0
?
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_6/kernel/m
?
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_6/bias/m
x
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_8/kernel/m
?
)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_8/bias/m
x
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_10/kernel/m
?
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_10/bias/m
z
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_7/kernel/m
?
)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_9/kernel/m
?
)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_11/kernel/m
?
*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv3d_9/kernel/v
?
*Adam/conv3d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_9/kernel/v**
_output_shapes
:0*
dtype0
?
Adam/conv3d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*%
shared_nameAdam/conv3d_9/bias/v
y
(Adam/conv3d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_9/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv3d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameAdam/conv3d_12/kernel/v
?
+Adam/conv3d_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_12/kernel/v**
_output_shapes
:0*
dtype0
?
Adam/conv3d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_12/bias/v
{
)Adam/conv3d_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_12/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv3d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameAdam/conv3d_15/kernel/v
?
+Adam/conv3d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_15/kernel/v**
_output_shapes
:0*
dtype0
?
Adam/conv3d_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_15/bias/v
{
)Adam/conv3d_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_15/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv3d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_10/kernel/v
?
+Adam/conv3d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_10/kernel/v**
_output_shapes
:00*
dtype0
?
Adam/conv3d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_10/bias/v
{
)Adam/conv3d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_10/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv3d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_13/kernel/v
?
+Adam/conv3d_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_13/kernel/v**
_output_shapes
:00*
dtype0
?
Adam/conv3d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_13/bias/v
{
)Adam/conv3d_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_13/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv3d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_16/kernel/v
?
+Adam/conv3d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_16/kernel/v**
_output_shapes
:00*
dtype0
?
Adam/conv3d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_16/bias/v
{
)Adam/conv3d_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_16/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv3d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_11/kernel/v
?
+Adam/conv3d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_11/kernel/v**
_output_shapes
:00*
dtype0
?
Adam/conv3d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_11/bias/v
{
)Adam/conv3d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_11/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv3d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_14/kernel/v
?
+Adam/conv3d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_14/kernel/v**
_output_shapes
:00*
dtype0
?
Adam/conv3d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_14/bias/v
{
)Adam/conv3d_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_14/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv3d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*(
shared_nameAdam/conv3d_17/kernel/v
?
+Adam/conv3d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_17/kernel/v**
_output_shapes
:00*
dtype0
?
Adam/conv3d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv3d_17/bias/v
{
)Adam/conv3d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_17/bias/v*
_output_shapes
:0*
dtype0
?
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_6/kernel/v
?
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_6/bias/v
x
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_8/kernel/v
?
)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_8/bias/v
x
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_10/kernel/v
?
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_10/bias/v
z
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_7/kernel/v
?
)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_9/kernel/v
?
)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_11/kernel/v
?
*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?	
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer_with_weights-3
layer-13
layer_with_weights-4
layer-14
layer_with_weights-5
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer_with_weights-6
layer-25
layer_with_weights-7
layer-26
layer_with_weights-8
layer-27
layer-28
layer-29
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer-36
&layer-37
'layer-38
(layer-39
)layer_with_weights-9
)layer-40
*layer_with_weights-10
*layer-41
+layer_with_weights-11
+layer-42
,layer-43
-layer-44
.layer-45
/layer-46
0layer-47
1layer-48
2layer_with_weights-12
2layer-49
3layer_with_weights-13
3layer-50
4layer_with_weights-14
4layer-51
5layer-52
6layer-53
7layer-54
8	optimizer
9loss
:	variables
;regularization_losses
<trainable_variables
=	keras_api
>
signatures
 
h

?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
h

Ekernel
Fbias
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
h

Kkernel
Lbias
M	variables
Nregularization_losses
Otrainable_variables
P	keras_api
R
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
R
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
R
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
R
]	variables
^regularization_losses
_trainable_variables
`	keras_api
R
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
R
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
R
i	variables
jregularization_losses
ktrainable_variables
l	keras_api
R
m	variables
nregularization_losses
otrainable_variables
p	keras_api
R
q	variables
rregularization_losses
strainable_variables
t	keras_api
h

ukernel
vbias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
i

{kernel
|bias
}	variables
~regularization_losses
trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate?m?@m?Em?Fm?Km?Lm?um?vm?{m?|m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m??v?@v?Ev?Fv?Kv?Lv?uv?vv?{v?|v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?
 
?
?0
@1
E2
F3
K4
L5
u6
v7
{8
|9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
 
?
?0
@1
E2
F3
K4
L5
u6
v7
{8
|9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?
:	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
;regularization_losses
<trainable_variables
?layers
?non_trainable_variables
 
[Y
VARIABLE_VALUEconv3d_9/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_9/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
 

?0
@1
?
A	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Bregularization_losses
Ctrainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEconv3d_12/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_12/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

E0
F1
 

E0
F1
?
G	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Hregularization_losses
Itrainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEconv3d_15/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_15/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

K0
L1
 

K0
L1
?
M	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Nregularization_losses
Otrainable_variables
?layers
?non_trainable_variables
 
 
 
?
Q	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Rregularization_losses
Strainable_variables
?layers
?non_trainable_variables
 
 
 
?
U	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Vregularization_losses
Wtrainable_variables
?layers
?non_trainable_variables
 
 
 
?
Y	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Zregularization_losses
[trainable_variables
?layers
?non_trainable_variables
 
 
 
?
]	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
^regularization_losses
_trainable_variables
?layers
?non_trainable_variables
 
 
 
?
a	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
bregularization_losses
ctrainable_variables
?layers
?non_trainable_variables
 
 
 
?
e	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
fregularization_losses
gtrainable_variables
?layers
?non_trainable_variables
 
 
 
?
i	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
jregularization_losses
ktrainable_variables
?layers
?non_trainable_variables
 
 
 
?
m	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
nregularization_losses
otrainable_variables
?layers
?non_trainable_variables
 
 
 
?
q	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
rregularization_losses
strainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEconv3d_10/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_10/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

u0
v1
 

u0
v1
?
w	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
xregularization_losses
ytrainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEconv3d_13/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_13/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

{0
|1
 

{0
|1
?
}	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
~regularization_losses
trainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEconv3d_16/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_16/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEconv3d_11/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_11/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEconv3d_14/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_14/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEconv3d_17/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv3d_17/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
[Y
VARIABLE_VALUEdense_8/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_8/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEdense_10/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_10/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
[Y
VARIABLE_VALUEdense_7/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_7/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
[Y
VARIABLE_VALUEdense_9/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_9/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEdense_11/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_11/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
?
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
?18
 
 
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249
350
451
552
653
754
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api
v
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api
v
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api
v
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
 
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/6/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/6/false_negatives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
ca
VARIABLE_VALUEtrue_positives_2=keras_api/metrics/7/true_positives/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/7/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/7/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_negatives_1>keras_api/metrics/7/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
QO
VARIABLE_VALUEtotal_54keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_54keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_64keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_64keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
 
db
VARIABLE_VALUEtrue_positives_3>keras_api/metrics/10/true_positives/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEfalse_positives_2?keras_api/metrics/10/false_positives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
db
VARIABLE_VALUEtrue_positives_4>keras_api/metrics/11/true_positives/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEfalse_negatives_2?keras_api/metrics/11/false_negatives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
db
VARIABLE_VALUEtrue_positives_5>keras_api/metrics/12/true_positives/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEtrue_negatives_1>keras_api/metrics/12/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEfalse_positives_3?keras_api/metrics/12/false_positives/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEfalse_negatives_3?keras_api/metrics/12/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
RP
VARIABLE_VALUEtotal_75keras_api/metrics/13/total/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_75keras_api/metrics/13/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
RP
VARIABLE_VALUEtotal_85keras_api/metrics/14/total/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_85keras_api/metrics/14/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
 
db
VARIABLE_VALUEtrue_positives_6>keras_api/metrics/15/true_positives/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEfalse_positives_4?keras_api/metrics/15/false_positives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
db
VARIABLE_VALUEtrue_positives_7>keras_api/metrics/16/true_positives/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEfalse_negatives_4?keras_api/metrics/16/false_negatives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
db
VARIABLE_VALUEtrue_positives_8>keras_api/metrics/17/true_positives/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEtrue_negatives_2>keras_api/metrics/17/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEfalse_positives_5?keras_api/metrics/17/false_positives/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEfalse_negatives_5?keras_api/metrics/17/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
RP
VARIABLE_VALUEtotal_95keras_api/metrics/18/total/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcount_95keras_api/metrics/18/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
~|
VARIABLE_VALUEAdam/conv3d_9/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv3d_9/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_12/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_12/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_15/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_15/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_10/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_10/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_13/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_13/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_16/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_16/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_11/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_11/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_14/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_14/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_17/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_17/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_8/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_8/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_10/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_10/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_7/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_7/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_9/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_9/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_11/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_11/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv3d_9/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv3d_9/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_12/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_12/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_15/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_15/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_10/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_10/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_13/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_13/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_16/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_16/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_11/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_11/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_14/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_14/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv3d_17/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv3d_17/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_8/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_8/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_10/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_10/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_7/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_7/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_9/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_9/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_11/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_11/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_2Placeholder*5
_output_shapes#
!:???????????*
dtype0**
shape!:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2conv3d_15/kernelconv3d_15/biasconv3d_12/kernelconv3d_12/biasconv3d_9/kernelconv3d_9/biasconv3d_16/kernelconv3d_16/biasconv3d_13/kernelconv3d_13/biasconv3d_10/kernelconv3d_10/biasconv3d_17/kernelconv3d_17/biasconv3d_14/kernelconv3d_14/biasconv3d_11/kernelconv3d_11/biasdense_10/kerneldense_10/biasdense_8/kerneldense_8/biasdense_6/kerneldense_6/biasdense_11/kerneldense_11/biasdense_9/kerneldense_9/biasdense_7/kerneldense_7/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_2350258
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?-
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv3d_9/kernel/Read/ReadVariableOp!conv3d_9/bias/Read/ReadVariableOp$conv3d_12/kernel/Read/ReadVariableOp"conv3d_12/bias/Read/ReadVariableOp$conv3d_15/kernel/Read/ReadVariableOp"conv3d_15/bias/Read/ReadVariableOp$conv3d_10/kernel/Read/ReadVariableOp"conv3d_10/bias/Read/ReadVariableOp$conv3d_13/kernel/Read/ReadVariableOp"conv3d_13/bias/Read/ReadVariableOp$conv3d_16/kernel/Read/ReadVariableOp"conv3d_16/bias/Read/ReadVariableOp$conv3d_11/kernel/Read/ReadVariableOp"conv3d_11/bias/Read/ReadVariableOp$conv3d_14/kernel/Read/ReadVariableOp"conv3d_14/bias/Read/ReadVariableOp$conv3d_17/kernel/Read/ReadVariableOp"conv3d_17/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp$true_positives_2/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp%false_positives_1/Read/ReadVariableOp%false_negatives_1/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOp$true_positives_3/Read/ReadVariableOp%false_positives_2/Read/ReadVariableOp$true_positives_4/Read/ReadVariableOp%false_negatives_2/Read/ReadVariableOp$true_positives_5/Read/ReadVariableOp$true_negatives_1/Read/ReadVariableOp%false_positives_3/Read/ReadVariableOp%false_negatives_3/Read/ReadVariableOptotal_7/Read/ReadVariableOpcount_7/Read/ReadVariableOptotal_8/Read/ReadVariableOpcount_8/Read/ReadVariableOp$true_positives_6/Read/ReadVariableOp%false_positives_4/Read/ReadVariableOp$true_positives_7/Read/ReadVariableOp%false_negatives_4/Read/ReadVariableOp$true_positives_8/Read/ReadVariableOp$true_negatives_2/Read/ReadVariableOp%false_positives_5/Read/ReadVariableOp%false_negatives_5/Read/ReadVariableOptotal_9/Read/ReadVariableOpcount_9/Read/ReadVariableOp*Adam/conv3d_9/kernel/m/Read/ReadVariableOp(Adam/conv3d_9/bias/m/Read/ReadVariableOp+Adam/conv3d_12/kernel/m/Read/ReadVariableOp)Adam/conv3d_12/bias/m/Read/ReadVariableOp+Adam/conv3d_15/kernel/m/Read/ReadVariableOp)Adam/conv3d_15/bias/m/Read/ReadVariableOp+Adam/conv3d_10/kernel/m/Read/ReadVariableOp)Adam/conv3d_10/bias/m/Read/ReadVariableOp+Adam/conv3d_13/kernel/m/Read/ReadVariableOp)Adam/conv3d_13/bias/m/Read/ReadVariableOp+Adam/conv3d_16/kernel/m/Read/ReadVariableOp)Adam/conv3d_16/bias/m/Read/ReadVariableOp+Adam/conv3d_11/kernel/m/Read/ReadVariableOp)Adam/conv3d_11/bias/m/Read/ReadVariableOp+Adam/conv3d_14/kernel/m/Read/ReadVariableOp)Adam/conv3d_14/bias/m/Read/ReadVariableOp+Adam/conv3d_17/kernel/m/Read/ReadVariableOp)Adam/conv3d_17/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp*Adam/conv3d_9/kernel/v/Read/ReadVariableOp(Adam/conv3d_9/bias/v/Read/ReadVariableOp+Adam/conv3d_12/kernel/v/Read/ReadVariableOp)Adam/conv3d_12/bias/v/Read/ReadVariableOp+Adam/conv3d_15/kernel/v/Read/ReadVariableOp)Adam/conv3d_15/bias/v/Read/ReadVariableOp+Adam/conv3d_10/kernel/v/Read/ReadVariableOp)Adam/conv3d_10/bias/v/Read/ReadVariableOp+Adam/conv3d_13/kernel/v/Read/ReadVariableOp)Adam/conv3d_13/bias/v/Read/ReadVariableOp+Adam/conv3d_16/kernel/v/Read/ReadVariableOp)Adam/conv3d_16/bias/v/Read/ReadVariableOp+Adam/conv3d_11/kernel/v/Read/ReadVariableOp)Adam/conv3d_11/bias/v/Read/ReadVariableOp+Adam/conv3d_14/kernel/v/Read/ReadVariableOp)Adam/conv3d_14/bias/v/Read/ReadVariableOp+Adam/conv3d_17/kernel/v/Read/ReadVariableOp)Adam/conv3d_17/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOpConst*?
Tin?
?2?	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_2351990
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_9/kernelconv3d_9/biasconv3d_12/kernelconv3d_12/biasconv3d_15/kernelconv3d_15/biasconv3d_10/kernelconv3d_10/biasconv3d_13/kernelconv3d_13/biasconv3d_16/kernelconv3d_16/biasconv3d_11/kernelconv3d_11/biasconv3d_14/kernelconv3d_14/biasconv3d_17/kernelconv3d_17/biasdense_6/kerneldense_6/biasdense_8/kerneldense_8/biasdense_10/kerneldense_10/biasdense_7/kerneldense_7/biasdense_9/kerneldense_9/biasdense_11/kerneldense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4true_positivesfalse_positivestrue_positives_1false_negativestrue_positives_2true_negativesfalse_positives_1false_negatives_1total_5count_5total_6count_6true_positives_3false_positives_2true_positives_4false_negatives_2true_positives_5true_negatives_1false_positives_3false_negatives_3total_7count_7total_8count_8true_positives_6false_positives_4true_positives_7false_negatives_4true_positives_8true_negatives_2false_positives_5false_negatives_5total_9count_9Adam/conv3d_9/kernel/mAdam/conv3d_9/bias/mAdam/conv3d_12/kernel/mAdam/conv3d_12/bias/mAdam/conv3d_15/kernel/mAdam/conv3d_15/bias/mAdam/conv3d_10/kernel/mAdam/conv3d_10/bias/mAdam/conv3d_13/kernel/mAdam/conv3d_13/bias/mAdam/conv3d_16/kernel/mAdam/conv3d_16/bias/mAdam/conv3d_11/kernel/mAdam/conv3d_11/bias/mAdam/conv3d_14/kernel/mAdam/conv3d_14/bias/mAdam/conv3d_17/kernel/mAdam/conv3d_17/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/mAdam/conv3d_9/kernel/vAdam/conv3d_9/bias/vAdam/conv3d_12/kernel/vAdam/conv3d_12/bias/vAdam/conv3d_15/kernel/vAdam/conv3d_15/bias/vAdam/conv3d_10/kernel/vAdam/conv3d_10/bias/vAdam/conv3d_13/kernel/vAdam/conv3d_13/bias/vAdam/conv3d_16/kernel/vAdam/conv3d_16/bias/vAdam/conv3d_11/kernel/vAdam/conv3d_11/bias/vAdam/conv3d_14/kernel/vAdam/conv3d_14/bias/vAdam/conv3d_17/kernel/vAdam/conv3d_17/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/v*?
Tin?
?2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_2352417??
?
K
/__inference_activation_17_layer_call_fn_2351001

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_23489872
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????((0:[ W
3
_output_shapes!
:?????????((0
 
_user_specified_nameinputs
?
f
G__inference_dropout_19_layer_call_and_return_conditional_losses_2351419

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_activation_14_layer_call_and_return_conditional_losses_2349210

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?	
?
D__inference_dense_9_layer_call_and_return_conditional_losses_2351490

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2348659

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2349137

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
J__inference_activation_19_layer_call_and_return_conditional_losses_2349449

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_11_layer_call_and_return_conditional_losses_2349570

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_6_layer_call_and_return_conditional_losses_2349415

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_13_layer_call_and_return_conditional_losses_2351028

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
??
?
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2349923

inputs
conv3d_15_2349806
conv3d_15_2349808
conv3d_12_2349811
conv3d_12_2349813
conv3d_9_2349816
conv3d_9_2349818
conv3d_16_2349830
conv3d_16_2349832
conv3d_13_2349835
conv3d_13_2349837
conv3d_10_2349840
conv3d_10_2349842
conv3d_17_2349854
conv3d_17_2349856
conv3d_14_2349859
conv3d_14_2349861
conv3d_11_2349864
conv3d_11_2349866
dense_10_2349881
dense_10_2349883
dense_8_2349886
dense_8_2349888
dense_6_2349891
dense_6_2349893
dense_11_2349902
dense_11_2349904
dense_9_2349907
dense_9_2349909
dense_7_2349912
dense_7_2349914
identity

identity_1

identity_2??!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall?!conv3d_12/StatefulPartitionedCall?!conv3d_13/StatefulPartitionedCall?!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall?!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?"dropout_12/StatefulPartitionedCall?"dropout_13/StatefulPartitionedCall?"dropout_14/StatefulPartitionedCall?"dropout_15/StatefulPartitionedCall?"dropout_16/StatefulPartitionedCall?"dropout_17/StatefulPartitionedCall?"dropout_18/StatefulPartitionedCall?"dropout_19/StatefulPartitionedCall?"dropout_20/StatefulPartitionedCall?"dropout_21/StatefulPartitionedCall?"dropout_22/StatefulPartitionedCall?"dropout_23/StatefulPartitionedCall?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_15_2349806conv3d_15_2349808*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_15_layer_call_and_return_conditional_losses_23486912#
!conv3d_15/StatefulPartitionedCall?
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_12_2349811conv3d_12_2349813*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_12_layer_call_and_return_conditional_losses_23487172#
!conv3d_12/StatefulPartitionedCall?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_9_2349816conv3d_9_2349818*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_23487432"
 conv3d_9/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_23487642
activation_20/PartitionedCall?
activation_16/PartitionedCallPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_23487772
activation_16/PartitionedCall?
activation_12/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_23487902
activation_12/PartitionedCall?
 max_pooling3d_15/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_23485992"
 max_pooling3d_15/PartitionedCall?
 max_pooling3d_12/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_23485872"
 max_pooling3d_12/PartitionedCall?
max_pooling3d_9/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_9_layer_call_and_return_conditional_losses_23485752!
max_pooling3d_9/PartitionedCall?
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_20_layer_call_and_return_conditional_losses_23488132$
"dropout_20/StatefulPartitionedCall?
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_12/PartitionedCall:output:0#^dropout_20/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_23488432$
"dropout_16/StatefulPartitionedCall?
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_9/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_23488732$
"dropout_12/StatefulPartitionedCall?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0conv3d_16_2349830conv3d_16_2349832*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_16_layer_call_and_return_conditional_losses_23489012#
!conv3d_16/StatefulPartitionedCall?
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv3d_13_2349835conv3d_13_2349837*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_13_layer_call_and_return_conditional_losses_23489272#
!conv3d_13/StatefulPartitionedCall?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0conv3d_10_2349840conv3d_10_2349842*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_23489532#
!conv3d_10/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_23489742
activation_21/PartitionedCall?
activation_17/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_23489872
activation_17/PartitionedCall?
activation_13/PartitionedCallPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_23490002
activation_13/PartitionedCall?
 max_pooling3d_16/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_23486352"
 max_pooling3d_16/PartitionedCall?
 max_pooling3d_13/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_23486232"
 max_pooling3d_13/PartitionedCall?
 max_pooling3d_10/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_10_layer_call_and_return_conditional_losses_23486112"
 max_pooling3d_10/PartitionedCall?
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_16/PartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_23490232$
"dropout_21/StatefulPartitionedCall?
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_13/PartitionedCall:output:0#^dropout_21/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_23490532$
"dropout_17/StatefulPartitionedCall?
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_10/PartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_23490832$
"dropout_13/StatefulPartitionedCall?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0conv3d_17_2349854conv3d_17_2349856*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_17_layer_call_and_return_conditional_losses_23491112#
!conv3d_17/StatefulPartitionedCall?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0conv3d_14_2349859conv3d_14_2349861*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_14_layer_call_and_return_conditional_losses_23491372#
!conv3d_14/StatefulPartitionedCall?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0conv3d_11_2349864conv3d_11_2349866*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_11_layer_call_and_return_conditional_losses_23491632#
!conv3d_11/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_23491842
activation_22/PartitionedCall?
activation_18/PartitionedCallPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_18_layer_call_and_return_conditional_losses_23491972
activation_18/PartitionedCall?
activation_14/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_23492102
activation_14/PartitionedCall?
 max_pooling3d_17/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_23486712"
 max_pooling3d_17/PartitionedCall?
 max_pooling3d_14/PartitionedCallPartitionedCall&activation_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_23486592"
 max_pooling3d_14/PartitionedCall?
 max_pooling3d_11/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_11_layer_call_and_return_conditional_losses_23486472"
 max_pooling3d_11/PartitionedCall?
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_17/PartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_22_layer_call_and_return_conditional_losses_23492332$
"dropout_22/StatefulPartitionedCall?
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_14/PartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_23492632$
"dropout_18/StatefulPartitionedCall?
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_11/PartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_23492932$
"dropout_14/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCall+dropout_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_23493172
flatten_5/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall+dropout_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_23493312
flatten_4/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall+dropout_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_23493452
flatten_3/PartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_10_2349881dense_10_2349883*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_23493632"
 dense_10/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_2349886dense_8_2349888*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_23493892!
dense_8/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_2349891dense_6_2349893*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_23494152!
dense_6/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_23494362
activation_23/PartitionedCall?
activation_19/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_19_layer_call_and_return_conditional_losses_23494492
activation_19/PartitionedCall?
activation_15/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_15_layer_call_and_return_conditional_losses_23494622
activation_15/PartitionedCall?
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_23_layer_call_and_return_conditional_losses_23494822$
"dropout_23/StatefulPartitionedCall?
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0#^dropout_23/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_23495122$
"dropout_19/StatefulPartitionedCall?
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall&activation_15/PartitionedCall:output:0#^dropout_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_23495422$
"dropout_15/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0dense_11_2349902dense_11_2349904*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_23495702"
 dense_11/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_9_2349907dense_9_2349909*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_23495962!
dense_9/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0dense_7_2349912dense_7_2349914*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_23496222!
dense_7/StatefulPartitionedCall?
$consolidation_output/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_consolidation_output_layer_call_and_return_conditional_losses_23496432&
$consolidation_output/PartitionedCall?
&pleural_regular_output/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_pleural_regular_output_layer_call_and_return_conditional_losses_23496562(
&pleural_regular_output/PartitionedCall?
%covid_severity_output/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_covid_severity_output_layer_call_and_return_conditional_losses_23496692'
%covid_severity_output/PartitionedCall?
IdentityIdentity.covid_severity_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity/pleural_regular_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity-consolidation_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_21_layer_call_and_return_conditional_losses_2349028

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
,__inference_dropout_13_layer_call_fn_2351033

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_23490832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????022
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_12_layer_call_and_return_conditional_losses_2350860

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????**02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????**02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
f
G__inference_dropout_20_layer_call_and_return_conditional_losses_2348813

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????**0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????**02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????**02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
e
G__inference_dropout_13_layer_call_and_return_conditional_losses_2349088

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
?
+__inference_conv3d_11_layer_call_fn_2351111

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_11_layer_call_and_return_conditional_losses_23491632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????0::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?	
?
D__inference_dense_8_layer_call_and_return_conditional_losses_2349389

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_7_layer_call_and_return_conditional_losses_2349622

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
І
?
"__inference__wrapped_model_2348569
input_2:
6covid_lus_net_conv3d_15_conv3d_readvariableop_resource;
7covid_lus_net_conv3d_15_biasadd_readvariableop_resource:
6covid_lus_net_conv3d_12_conv3d_readvariableop_resource;
7covid_lus_net_conv3d_12_biasadd_readvariableop_resource9
5covid_lus_net_conv3d_9_conv3d_readvariableop_resource:
6covid_lus_net_conv3d_9_biasadd_readvariableop_resource:
6covid_lus_net_conv3d_16_conv3d_readvariableop_resource;
7covid_lus_net_conv3d_16_biasadd_readvariableop_resource:
6covid_lus_net_conv3d_13_conv3d_readvariableop_resource;
7covid_lus_net_conv3d_13_biasadd_readvariableop_resource:
6covid_lus_net_conv3d_10_conv3d_readvariableop_resource;
7covid_lus_net_conv3d_10_biasadd_readvariableop_resource:
6covid_lus_net_conv3d_17_conv3d_readvariableop_resource;
7covid_lus_net_conv3d_17_biasadd_readvariableop_resource:
6covid_lus_net_conv3d_14_conv3d_readvariableop_resource;
7covid_lus_net_conv3d_14_biasadd_readvariableop_resource:
6covid_lus_net_conv3d_11_conv3d_readvariableop_resource;
7covid_lus_net_conv3d_11_biasadd_readvariableop_resource9
5covid_lus_net_dense_10_matmul_readvariableop_resource:
6covid_lus_net_dense_10_biasadd_readvariableop_resource8
4covid_lus_net_dense_8_matmul_readvariableop_resource9
5covid_lus_net_dense_8_biasadd_readvariableop_resource8
4covid_lus_net_dense_6_matmul_readvariableop_resource9
5covid_lus_net_dense_6_biasadd_readvariableop_resource9
5covid_lus_net_dense_11_matmul_readvariableop_resource:
6covid_lus_net_dense_11_biasadd_readvariableop_resource8
4covid_lus_net_dense_9_matmul_readvariableop_resource9
5covid_lus_net_dense_9_biasadd_readvariableop_resource8
4covid_lus_net_dense_7_matmul_readvariableop_resource9
5covid_lus_net_dense_7_biasadd_readvariableop_resource
identity

identity_1

identity_2??.Covid_LUS_net/conv3d_10/BiasAdd/ReadVariableOp?-Covid_LUS_net/conv3d_10/Conv3D/ReadVariableOp?.Covid_LUS_net/conv3d_11/BiasAdd/ReadVariableOp?-Covid_LUS_net/conv3d_11/Conv3D/ReadVariableOp?.Covid_LUS_net/conv3d_12/BiasAdd/ReadVariableOp?-Covid_LUS_net/conv3d_12/Conv3D/ReadVariableOp?.Covid_LUS_net/conv3d_13/BiasAdd/ReadVariableOp?-Covid_LUS_net/conv3d_13/Conv3D/ReadVariableOp?.Covid_LUS_net/conv3d_14/BiasAdd/ReadVariableOp?-Covid_LUS_net/conv3d_14/Conv3D/ReadVariableOp?.Covid_LUS_net/conv3d_15/BiasAdd/ReadVariableOp?-Covid_LUS_net/conv3d_15/Conv3D/ReadVariableOp?.Covid_LUS_net/conv3d_16/BiasAdd/ReadVariableOp?-Covid_LUS_net/conv3d_16/Conv3D/ReadVariableOp?.Covid_LUS_net/conv3d_17/BiasAdd/ReadVariableOp?-Covid_LUS_net/conv3d_17/Conv3D/ReadVariableOp?-Covid_LUS_net/conv3d_9/BiasAdd/ReadVariableOp?,Covid_LUS_net/conv3d_9/Conv3D/ReadVariableOp?-Covid_LUS_net/dense_10/BiasAdd/ReadVariableOp?,Covid_LUS_net/dense_10/MatMul/ReadVariableOp?-Covid_LUS_net/dense_11/BiasAdd/ReadVariableOp?,Covid_LUS_net/dense_11/MatMul/ReadVariableOp?,Covid_LUS_net/dense_6/BiasAdd/ReadVariableOp?+Covid_LUS_net/dense_6/MatMul/ReadVariableOp?,Covid_LUS_net/dense_7/BiasAdd/ReadVariableOp?+Covid_LUS_net/dense_7/MatMul/ReadVariableOp?,Covid_LUS_net/dense_8/BiasAdd/ReadVariableOp?+Covid_LUS_net/dense_8/MatMul/ReadVariableOp?,Covid_LUS_net/dense_9/BiasAdd/ReadVariableOp?+Covid_LUS_net/dense_9/MatMul/ReadVariableOp?
-Covid_LUS_net/conv3d_15/Conv3D/ReadVariableOpReadVariableOp6covid_lus_net_conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:0*
dtype02/
-Covid_LUS_net/conv3d_15/Conv3D/ReadVariableOp?
Covid_LUS_net/conv3d_15/Conv3DConv3Dinput_25Covid_LUS_net/conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2 
Covid_LUS_net/conv3d_15/Conv3D?
.Covid_LUS_net/conv3d_15/BiasAdd/ReadVariableOpReadVariableOp7covid_lus_net_conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype020
.Covid_LUS_net/conv3d_15/BiasAdd/ReadVariableOp?
Covid_LUS_net/conv3d_15/BiasAddBiasAdd'Covid_LUS_net/conv3d_15/Conv3D:output:06Covid_LUS_net/conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02!
Covid_LUS_net/conv3d_15/BiasAdd?
-Covid_LUS_net/conv3d_12/Conv3D/ReadVariableOpReadVariableOp6covid_lus_net_conv3d_12_conv3d_readvariableop_resource**
_output_shapes
:0*
dtype02/
-Covid_LUS_net/conv3d_12/Conv3D/ReadVariableOp?
Covid_LUS_net/conv3d_12/Conv3DConv3Dinput_25Covid_LUS_net/conv3d_12/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2 
Covid_LUS_net/conv3d_12/Conv3D?
.Covid_LUS_net/conv3d_12/BiasAdd/ReadVariableOpReadVariableOp7covid_lus_net_conv3d_12_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype020
.Covid_LUS_net/conv3d_12/BiasAdd/ReadVariableOp?
Covid_LUS_net/conv3d_12/BiasAddBiasAdd'Covid_LUS_net/conv3d_12/Conv3D:output:06Covid_LUS_net/conv3d_12/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02!
Covid_LUS_net/conv3d_12/BiasAdd?
,Covid_LUS_net/conv3d_9/Conv3D/ReadVariableOpReadVariableOp5covid_lus_net_conv3d_9_conv3d_readvariableop_resource**
_output_shapes
:0*
dtype02.
,Covid_LUS_net/conv3d_9/Conv3D/ReadVariableOp?
Covid_LUS_net/conv3d_9/Conv3DConv3Dinput_24Covid_LUS_net/conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
Covid_LUS_net/conv3d_9/Conv3D?
-Covid_LUS_net/conv3d_9/BiasAdd/ReadVariableOpReadVariableOp6covid_lus_net_conv3d_9_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02/
-Covid_LUS_net/conv3d_9/BiasAdd/ReadVariableOp?
Covid_LUS_net/conv3d_9/BiasAddBiasAdd&Covid_LUS_net/conv3d_9/Conv3D:output:05Covid_LUS_net/conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02 
Covid_LUS_net/conv3d_9/BiasAdd?
 Covid_LUS_net/activation_20/ReluRelu(Covid_LUS_net/conv3d_15/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????~~02"
 Covid_LUS_net/activation_20/Relu?
 Covid_LUS_net/activation_16/ReluRelu(Covid_LUS_net/conv3d_12/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????~~02"
 Covid_LUS_net/activation_16/Relu?
 Covid_LUS_net/activation_12/ReluRelu'Covid_LUS_net/conv3d_9/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????~~02"
 Covid_LUS_net/activation_12/Relu?
(Covid_LUS_net/max_pooling3d_15/MaxPool3D	MaxPool3D.Covid_LUS_net/activation_20/Relu:activations:0*
T0*3
_output_shapes!
:?????????**0*
ksize	
*
paddingVALID*
strides	
2*
(Covid_LUS_net/max_pooling3d_15/MaxPool3D?
(Covid_LUS_net/max_pooling3d_12/MaxPool3D	MaxPool3D.Covid_LUS_net/activation_16/Relu:activations:0*
T0*3
_output_shapes!
:?????????**0*
ksize	
*
paddingVALID*
strides	
2*
(Covid_LUS_net/max_pooling3d_12/MaxPool3D?
'Covid_LUS_net/max_pooling3d_9/MaxPool3D	MaxPool3D.Covid_LUS_net/activation_12/Relu:activations:0*
T0*3
_output_shapes!
:?????????**0*
ksize	
*
paddingVALID*
strides	
2)
'Covid_LUS_net/max_pooling3d_9/MaxPool3D?
!Covid_LUS_net/dropout_20/IdentityIdentity1Covid_LUS_net/max_pooling3d_15/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????**02#
!Covid_LUS_net/dropout_20/Identity?
!Covid_LUS_net/dropout_16/IdentityIdentity1Covid_LUS_net/max_pooling3d_12/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????**02#
!Covid_LUS_net/dropout_16/Identity?
!Covid_LUS_net/dropout_12/IdentityIdentity0Covid_LUS_net/max_pooling3d_9/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????**02#
!Covid_LUS_net/dropout_12/Identity?
-Covid_LUS_net/conv3d_16/Conv3D/ReadVariableOpReadVariableOp6covid_lus_net_conv3d_16_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02/
-Covid_LUS_net/conv3d_16/Conv3D/ReadVariableOp?
Covid_LUS_net/conv3d_16/Conv3DConv3D*Covid_LUS_net/dropout_20/Identity:output:05Covid_LUS_net/conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2 
Covid_LUS_net/conv3d_16/Conv3D?
.Covid_LUS_net/conv3d_16/BiasAdd/ReadVariableOpReadVariableOp7covid_lus_net_conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype020
.Covid_LUS_net/conv3d_16/BiasAdd/ReadVariableOp?
Covid_LUS_net/conv3d_16/BiasAddBiasAdd'Covid_LUS_net/conv3d_16/Conv3D:output:06Covid_LUS_net/conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02!
Covid_LUS_net/conv3d_16/BiasAdd?
-Covid_LUS_net/conv3d_13/Conv3D/ReadVariableOpReadVariableOp6covid_lus_net_conv3d_13_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02/
-Covid_LUS_net/conv3d_13/Conv3D/ReadVariableOp?
Covid_LUS_net/conv3d_13/Conv3DConv3D*Covid_LUS_net/dropout_16/Identity:output:05Covid_LUS_net/conv3d_13/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2 
Covid_LUS_net/conv3d_13/Conv3D?
.Covid_LUS_net/conv3d_13/BiasAdd/ReadVariableOpReadVariableOp7covid_lus_net_conv3d_13_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype020
.Covid_LUS_net/conv3d_13/BiasAdd/ReadVariableOp?
Covid_LUS_net/conv3d_13/BiasAddBiasAdd'Covid_LUS_net/conv3d_13/Conv3D:output:06Covid_LUS_net/conv3d_13/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02!
Covid_LUS_net/conv3d_13/BiasAdd?
-Covid_LUS_net/conv3d_10/Conv3D/ReadVariableOpReadVariableOp6covid_lus_net_conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02/
-Covid_LUS_net/conv3d_10/Conv3D/ReadVariableOp?
Covid_LUS_net/conv3d_10/Conv3DConv3D*Covid_LUS_net/dropout_12/Identity:output:05Covid_LUS_net/conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2 
Covid_LUS_net/conv3d_10/Conv3D?
.Covid_LUS_net/conv3d_10/BiasAdd/ReadVariableOpReadVariableOp7covid_lus_net_conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype020
.Covid_LUS_net/conv3d_10/BiasAdd/ReadVariableOp?
Covid_LUS_net/conv3d_10/BiasAddBiasAdd'Covid_LUS_net/conv3d_10/Conv3D:output:06Covid_LUS_net/conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02!
Covid_LUS_net/conv3d_10/BiasAdd?
 Covid_LUS_net/activation_21/ReluRelu(Covid_LUS_net/conv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????((02"
 Covid_LUS_net/activation_21/Relu?
 Covid_LUS_net/activation_17/ReluRelu(Covid_LUS_net/conv3d_13/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????((02"
 Covid_LUS_net/activation_17/Relu?
 Covid_LUS_net/activation_13/ReluRelu(Covid_LUS_net/conv3d_10/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????((02"
 Covid_LUS_net/activation_13/Relu?
(Covid_LUS_net/max_pooling3d_16/MaxPool3D	MaxPool3D.Covid_LUS_net/activation_21/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2*
(Covid_LUS_net/max_pooling3d_16/MaxPool3D?
(Covid_LUS_net/max_pooling3d_13/MaxPool3D	MaxPool3D.Covid_LUS_net/activation_17/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2*
(Covid_LUS_net/max_pooling3d_13/MaxPool3D?
(Covid_LUS_net/max_pooling3d_10/MaxPool3D	MaxPool3D.Covid_LUS_net/activation_13/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2*
(Covid_LUS_net/max_pooling3d_10/MaxPool3D?
!Covid_LUS_net/dropout_21/IdentityIdentity1Covid_LUS_net/max_pooling3d_16/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02#
!Covid_LUS_net/dropout_21/Identity?
!Covid_LUS_net/dropout_17/IdentityIdentity1Covid_LUS_net/max_pooling3d_13/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02#
!Covid_LUS_net/dropout_17/Identity?
!Covid_LUS_net/dropout_13/IdentityIdentity1Covid_LUS_net/max_pooling3d_10/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02#
!Covid_LUS_net/dropout_13/Identity?
-Covid_LUS_net/conv3d_17/Conv3D/ReadVariableOpReadVariableOp6covid_lus_net_conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02/
-Covid_LUS_net/conv3d_17/Conv3D/ReadVariableOp?
Covid_LUS_net/conv3d_17/Conv3DConv3D*Covid_LUS_net/dropout_21/Identity:output:05Covid_LUS_net/conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2 
Covid_LUS_net/conv3d_17/Conv3D?
.Covid_LUS_net/conv3d_17/BiasAdd/ReadVariableOpReadVariableOp7covid_lus_net_conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype020
.Covid_LUS_net/conv3d_17/BiasAdd/ReadVariableOp?
Covid_LUS_net/conv3d_17/BiasAddBiasAdd'Covid_LUS_net/conv3d_17/Conv3D:output:06Covid_LUS_net/conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02!
Covid_LUS_net/conv3d_17/BiasAdd?
-Covid_LUS_net/conv3d_14/Conv3D/ReadVariableOpReadVariableOp6covid_lus_net_conv3d_14_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02/
-Covid_LUS_net/conv3d_14/Conv3D/ReadVariableOp?
Covid_LUS_net/conv3d_14/Conv3DConv3D*Covid_LUS_net/dropout_17/Identity:output:05Covid_LUS_net/conv3d_14/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2 
Covid_LUS_net/conv3d_14/Conv3D?
.Covid_LUS_net/conv3d_14/BiasAdd/ReadVariableOpReadVariableOp7covid_lus_net_conv3d_14_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype020
.Covid_LUS_net/conv3d_14/BiasAdd/ReadVariableOp?
Covid_LUS_net/conv3d_14/BiasAddBiasAdd'Covid_LUS_net/conv3d_14/Conv3D:output:06Covid_LUS_net/conv3d_14/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02!
Covid_LUS_net/conv3d_14/BiasAdd?
-Covid_LUS_net/conv3d_11/Conv3D/ReadVariableOpReadVariableOp6covid_lus_net_conv3d_11_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02/
-Covid_LUS_net/conv3d_11/Conv3D/ReadVariableOp?
Covid_LUS_net/conv3d_11/Conv3DConv3D*Covid_LUS_net/dropout_13/Identity:output:05Covid_LUS_net/conv3d_11/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2 
Covid_LUS_net/conv3d_11/Conv3D?
.Covid_LUS_net/conv3d_11/BiasAdd/ReadVariableOpReadVariableOp7covid_lus_net_conv3d_11_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype020
.Covid_LUS_net/conv3d_11/BiasAdd/ReadVariableOp?
Covid_LUS_net/conv3d_11/BiasAddBiasAdd'Covid_LUS_net/conv3d_11/Conv3D:output:06Covid_LUS_net/conv3d_11/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02!
Covid_LUS_net/conv3d_11/BiasAdd?
 Covid_LUS_net/activation_22/ReluRelu(Covid_LUS_net/conv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????02"
 Covid_LUS_net/activation_22/Relu?
 Covid_LUS_net/activation_18/ReluRelu(Covid_LUS_net/conv3d_14/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????02"
 Covid_LUS_net/activation_18/Relu?
 Covid_LUS_net/activation_14/ReluRelu(Covid_LUS_net/conv3d_11/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????02"
 Covid_LUS_net/activation_14/Relu?
(Covid_LUS_net/max_pooling3d_17/MaxPool3D	MaxPool3D.Covid_LUS_net/activation_22/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2*
(Covid_LUS_net/max_pooling3d_17/MaxPool3D?
(Covid_LUS_net/max_pooling3d_14/MaxPool3D	MaxPool3D.Covid_LUS_net/activation_18/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2*
(Covid_LUS_net/max_pooling3d_14/MaxPool3D?
(Covid_LUS_net/max_pooling3d_11/MaxPool3D	MaxPool3D.Covid_LUS_net/activation_14/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2*
(Covid_LUS_net/max_pooling3d_11/MaxPool3D?
!Covid_LUS_net/dropout_22/IdentityIdentity1Covid_LUS_net/max_pooling3d_17/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02#
!Covid_LUS_net/dropout_22/Identity?
!Covid_LUS_net/dropout_18/IdentityIdentity1Covid_LUS_net/max_pooling3d_14/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02#
!Covid_LUS_net/dropout_18/Identity?
!Covid_LUS_net/dropout_14/IdentityIdentity1Covid_LUS_net/max_pooling3d_11/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02#
!Covid_LUS_net/dropout_14/Identity?
Covid_LUS_net/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Covid_LUS_net/flatten_5/Const?
Covid_LUS_net/flatten_5/ReshapeReshape*Covid_LUS_net/dropout_22/Identity:output:0&Covid_LUS_net/flatten_5/Const:output:0*
T0*(
_output_shapes
:??????????2!
Covid_LUS_net/flatten_5/Reshape?
Covid_LUS_net/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Covid_LUS_net/flatten_4/Const?
Covid_LUS_net/flatten_4/ReshapeReshape*Covid_LUS_net/dropout_18/Identity:output:0&Covid_LUS_net/flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????2!
Covid_LUS_net/flatten_4/Reshape?
Covid_LUS_net/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Covid_LUS_net/flatten_3/Const?
Covid_LUS_net/flatten_3/ReshapeReshape*Covid_LUS_net/dropout_14/Identity:output:0&Covid_LUS_net/flatten_3/Const:output:0*
T0*(
_output_shapes
:??????????2!
Covid_LUS_net/flatten_3/Reshape?
,Covid_LUS_net/dense_10/MatMul/ReadVariableOpReadVariableOp5covid_lus_net_dense_10_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Covid_LUS_net/dense_10/MatMul/ReadVariableOp?
Covid_LUS_net/dense_10/MatMulMatMul(Covid_LUS_net/flatten_5/Reshape:output:04Covid_LUS_net/dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Covid_LUS_net/dense_10/MatMul?
-Covid_LUS_net/dense_10/BiasAdd/ReadVariableOpReadVariableOp6covid_lus_net_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Covid_LUS_net/dense_10/BiasAdd/ReadVariableOp?
Covid_LUS_net/dense_10/BiasAddBiasAdd'Covid_LUS_net/dense_10/MatMul:product:05Covid_LUS_net/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Covid_LUS_net/dense_10/BiasAdd?
+Covid_LUS_net/dense_8/MatMul/ReadVariableOpReadVariableOp4covid_lus_net_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+Covid_LUS_net/dense_8/MatMul/ReadVariableOp?
Covid_LUS_net/dense_8/MatMulMatMul(Covid_LUS_net/flatten_4/Reshape:output:03Covid_LUS_net/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Covid_LUS_net/dense_8/MatMul?
,Covid_LUS_net/dense_8/BiasAdd/ReadVariableOpReadVariableOp5covid_lus_net_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,Covid_LUS_net/dense_8/BiasAdd/ReadVariableOp?
Covid_LUS_net/dense_8/BiasAddBiasAdd&Covid_LUS_net/dense_8/MatMul:product:04Covid_LUS_net/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Covid_LUS_net/dense_8/BiasAdd?
+Covid_LUS_net/dense_6/MatMul/ReadVariableOpReadVariableOp4covid_lus_net_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+Covid_LUS_net/dense_6/MatMul/ReadVariableOp?
Covid_LUS_net/dense_6/MatMulMatMul(Covid_LUS_net/flatten_3/Reshape:output:03Covid_LUS_net/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Covid_LUS_net/dense_6/MatMul?
,Covid_LUS_net/dense_6/BiasAdd/ReadVariableOpReadVariableOp5covid_lus_net_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,Covid_LUS_net/dense_6/BiasAdd/ReadVariableOp?
Covid_LUS_net/dense_6/BiasAddBiasAdd&Covid_LUS_net/dense_6/MatMul:product:04Covid_LUS_net/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Covid_LUS_net/dense_6/BiasAdd?
 Covid_LUS_net/activation_23/ReluRelu'Covid_LUS_net/dense_10/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2"
 Covid_LUS_net/activation_23/Relu?
 Covid_LUS_net/activation_19/ReluRelu&Covid_LUS_net/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2"
 Covid_LUS_net/activation_19/Relu?
 Covid_LUS_net/activation_15/ReluRelu&Covid_LUS_net/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2"
 Covid_LUS_net/activation_15/Relu?
!Covid_LUS_net/dropout_23/IdentityIdentity.Covid_LUS_net/activation_23/Relu:activations:0*
T0*(
_output_shapes
:??????????2#
!Covid_LUS_net/dropout_23/Identity?
!Covid_LUS_net/dropout_19/IdentityIdentity.Covid_LUS_net/activation_19/Relu:activations:0*
T0*(
_output_shapes
:??????????2#
!Covid_LUS_net/dropout_19/Identity?
!Covid_LUS_net/dropout_15/IdentityIdentity.Covid_LUS_net/activation_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2#
!Covid_LUS_net/dropout_15/Identity?
,Covid_LUS_net/dense_11/MatMul/ReadVariableOpReadVariableOp5covid_lus_net_dense_11_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,Covid_LUS_net/dense_11/MatMul/ReadVariableOp?
Covid_LUS_net/dense_11/MatMulMatMul*Covid_LUS_net/dropout_23/Identity:output:04Covid_LUS_net/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Covid_LUS_net/dense_11/MatMul?
-Covid_LUS_net/dense_11/BiasAdd/ReadVariableOpReadVariableOp6covid_lus_net_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-Covid_LUS_net/dense_11/BiasAdd/ReadVariableOp?
Covid_LUS_net/dense_11/BiasAddBiasAdd'Covid_LUS_net/dense_11/MatMul:product:05Covid_LUS_net/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
Covid_LUS_net/dense_11/BiasAdd?
+Covid_LUS_net/dense_9/MatMul/ReadVariableOpReadVariableOp4covid_lus_net_dense_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02-
+Covid_LUS_net/dense_9/MatMul/ReadVariableOp?
Covid_LUS_net/dense_9/MatMulMatMul*Covid_LUS_net/dropout_19/Identity:output:03Covid_LUS_net/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Covid_LUS_net/dense_9/MatMul?
,Covid_LUS_net/dense_9/BiasAdd/ReadVariableOpReadVariableOp5covid_lus_net_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,Covid_LUS_net/dense_9/BiasAdd/ReadVariableOp?
Covid_LUS_net/dense_9/BiasAddBiasAdd&Covid_LUS_net/dense_9/MatMul:product:04Covid_LUS_net/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Covid_LUS_net/dense_9/BiasAdd?
+Covid_LUS_net/dense_7/MatMul/ReadVariableOpReadVariableOp4covid_lus_net_dense_7_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02-
+Covid_LUS_net/dense_7/MatMul/ReadVariableOp?
Covid_LUS_net/dense_7/MatMulMatMul*Covid_LUS_net/dropout_15/Identity:output:03Covid_LUS_net/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Covid_LUS_net/dense_7/MatMul?
,Covid_LUS_net/dense_7/BiasAdd/ReadVariableOpReadVariableOp5covid_lus_net_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,Covid_LUS_net/dense_7/BiasAdd/ReadVariableOp?
Covid_LUS_net/dense_7/BiasAddBiasAdd&Covid_LUS_net/dense_7/MatMul:product:04Covid_LUS_net/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Covid_LUS_net/dense_7/BiasAdd?
*Covid_LUS_net/consolidation_output/SigmoidSigmoid'Covid_LUS_net/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2,
*Covid_LUS_net/consolidation_output/Sigmoid?
,Covid_LUS_net/pleural_regular_output/SigmoidSigmoid&Covid_LUS_net/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2.
,Covid_LUS_net/pleural_regular_output/Sigmoid?
+Covid_LUS_net/covid_severity_output/SoftmaxSoftmax&Covid_LUS_net/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2-
+Covid_LUS_net/covid_severity_output/Softmax?
IdentityIdentity.Covid_LUS_net/consolidation_output/Sigmoid:y:0/^Covid_LUS_net/conv3d_10/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_10/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_11/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_11/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_12/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_12/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_13/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_13/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_14/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_14/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_15/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_15/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_16/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_16/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_17/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_17/Conv3D/ReadVariableOp.^Covid_LUS_net/conv3d_9/BiasAdd/ReadVariableOp-^Covid_LUS_net/conv3d_9/Conv3D/ReadVariableOp.^Covid_LUS_net/dense_10/BiasAdd/ReadVariableOp-^Covid_LUS_net/dense_10/MatMul/ReadVariableOp.^Covid_LUS_net/dense_11/BiasAdd/ReadVariableOp-^Covid_LUS_net/dense_11/MatMul/ReadVariableOp-^Covid_LUS_net/dense_6/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_6/MatMul/ReadVariableOp-^Covid_LUS_net/dense_7/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_7/MatMul/ReadVariableOp-^Covid_LUS_net/dense_8/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_8/MatMul/ReadVariableOp-^Covid_LUS_net/dense_9/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity5Covid_LUS_net/covid_severity_output/Softmax:softmax:0/^Covid_LUS_net/conv3d_10/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_10/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_11/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_11/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_12/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_12/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_13/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_13/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_14/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_14/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_15/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_15/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_16/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_16/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_17/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_17/Conv3D/ReadVariableOp.^Covid_LUS_net/conv3d_9/BiasAdd/ReadVariableOp-^Covid_LUS_net/conv3d_9/Conv3D/ReadVariableOp.^Covid_LUS_net/dense_10/BiasAdd/ReadVariableOp-^Covid_LUS_net/dense_10/MatMul/ReadVariableOp.^Covid_LUS_net/dense_11/BiasAdd/ReadVariableOp-^Covid_LUS_net/dense_11/MatMul/ReadVariableOp-^Covid_LUS_net/dense_6/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_6/MatMul/ReadVariableOp-^Covid_LUS_net/dense_7/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_7/MatMul/ReadVariableOp-^Covid_LUS_net/dense_8/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_8/MatMul/ReadVariableOp-^Covid_LUS_net/dense_9/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity0Covid_LUS_net/pleural_regular_output/Sigmoid:y:0/^Covid_LUS_net/conv3d_10/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_10/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_11/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_11/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_12/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_12/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_13/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_13/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_14/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_14/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_15/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_15/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_16/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_16/Conv3D/ReadVariableOp/^Covid_LUS_net/conv3d_17/BiasAdd/ReadVariableOp.^Covid_LUS_net/conv3d_17/Conv3D/ReadVariableOp.^Covid_LUS_net/conv3d_9/BiasAdd/ReadVariableOp-^Covid_LUS_net/conv3d_9/Conv3D/ReadVariableOp.^Covid_LUS_net/dense_10/BiasAdd/ReadVariableOp-^Covid_LUS_net/dense_10/MatMul/ReadVariableOp.^Covid_LUS_net/dense_11/BiasAdd/ReadVariableOp-^Covid_LUS_net/dense_11/MatMul/ReadVariableOp-^Covid_LUS_net/dense_6/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_6/MatMul/ReadVariableOp-^Covid_LUS_net/dense_7/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_7/MatMul/ReadVariableOp-^Covid_LUS_net/dense_8/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_8/MatMul/ReadVariableOp-^Covid_LUS_net/dense_9/BiasAdd/ReadVariableOp,^Covid_LUS_net/dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2`
.Covid_LUS_net/conv3d_10/BiasAdd/ReadVariableOp.Covid_LUS_net/conv3d_10/BiasAdd/ReadVariableOp2^
-Covid_LUS_net/conv3d_10/Conv3D/ReadVariableOp-Covid_LUS_net/conv3d_10/Conv3D/ReadVariableOp2`
.Covid_LUS_net/conv3d_11/BiasAdd/ReadVariableOp.Covid_LUS_net/conv3d_11/BiasAdd/ReadVariableOp2^
-Covid_LUS_net/conv3d_11/Conv3D/ReadVariableOp-Covid_LUS_net/conv3d_11/Conv3D/ReadVariableOp2`
.Covid_LUS_net/conv3d_12/BiasAdd/ReadVariableOp.Covid_LUS_net/conv3d_12/BiasAdd/ReadVariableOp2^
-Covid_LUS_net/conv3d_12/Conv3D/ReadVariableOp-Covid_LUS_net/conv3d_12/Conv3D/ReadVariableOp2`
.Covid_LUS_net/conv3d_13/BiasAdd/ReadVariableOp.Covid_LUS_net/conv3d_13/BiasAdd/ReadVariableOp2^
-Covid_LUS_net/conv3d_13/Conv3D/ReadVariableOp-Covid_LUS_net/conv3d_13/Conv3D/ReadVariableOp2`
.Covid_LUS_net/conv3d_14/BiasAdd/ReadVariableOp.Covid_LUS_net/conv3d_14/BiasAdd/ReadVariableOp2^
-Covid_LUS_net/conv3d_14/Conv3D/ReadVariableOp-Covid_LUS_net/conv3d_14/Conv3D/ReadVariableOp2`
.Covid_LUS_net/conv3d_15/BiasAdd/ReadVariableOp.Covid_LUS_net/conv3d_15/BiasAdd/ReadVariableOp2^
-Covid_LUS_net/conv3d_15/Conv3D/ReadVariableOp-Covid_LUS_net/conv3d_15/Conv3D/ReadVariableOp2`
.Covid_LUS_net/conv3d_16/BiasAdd/ReadVariableOp.Covid_LUS_net/conv3d_16/BiasAdd/ReadVariableOp2^
-Covid_LUS_net/conv3d_16/Conv3D/ReadVariableOp-Covid_LUS_net/conv3d_16/Conv3D/ReadVariableOp2`
.Covid_LUS_net/conv3d_17/BiasAdd/ReadVariableOp.Covid_LUS_net/conv3d_17/BiasAdd/ReadVariableOp2^
-Covid_LUS_net/conv3d_17/Conv3D/ReadVariableOp-Covid_LUS_net/conv3d_17/Conv3D/ReadVariableOp2^
-Covid_LUS_net/conv3d_9/BiasAdd/ReadVariableOp-Covid_LUS_net/conv3d_9/BiasAdd/ReadVariableOp2\
,Covid_LUS_net/conv3d_9/Conv3D/ReadVariableOp,Covid_LUS_net/conv3d_9/Conv3D/ReadVariableOp2^
-Covid_LUS_net/dense_10/BiasAdd/ReadVariableOp-Covid_LUS_net/dense_10/BiasAdd/ReadVariableOp2\
,Covid_LUS_net/dense_10/MatMul/ReadVariableOp,Covid_LUS_net/dense_10/MatMul/ReadVariableOp2^
-Covid_LUS_net/dense_11/BiasAdd/ReadVariableOp-Covid_LUS_net/dense_11/BiasAdd/ReadVariableOp2\
,Covid_LUS_net/dense_11/MatMul/ReadVariableOp,Covid_LUS_net/dense_11/MatMul/ReadVariableOp2\
,Covid_LUS_net/dense_6/BiasAdd/ReadVariableOp,Covid_LUS_net/dense_6/BiasAdd/ReadVariableOp2Z
+Covid_LUS_net/dense_6/MatMul/ReadVariableOp+Covid_LUS_net/dense_6/MatMul/ReadVariableOp2\
,Covid_LUS_net/dense_7/BiasAdd/ReadVariableOp,Covid_LUS_net/dense_7/BiasAdd/ReadVariableOp2Z
+Covid_LUS_net/dense_7/MatMul/ReadVariableOp+Covid_LUS_net/dense_7/MatMul/ReadVariableOp2\
,Covid_LUS_net/dense_8/BiasAdd/ReadVariableOp,Covid_LUS_net/dense_8/BiasAdd/ReadVariableOp2Z
+Covid_LUS_net/dense_8/MatMul/ReadVariableOp+Covid_LUS_net/dense_8/MatMul/ReadVariableOp2\
,Covid_LUS_net/dense_9/BiasAdd/ReadVariableOp,Covid_LUS_net/dense_9/BiasAdd/ReadVariableOp2Z
+Covid_LUS_net/dense_9/MatMul/ReadVariableOp+Covid_LUS_net/dense_9/MatMul/ReadVariableOp:^ Z
5
_output_shapes#
!:???????????
!
_user_specified_name	input_2
?
f
G__inference_dropout_17_layer_call_and_return_conditional_losses_2351050

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
,__inference_dropout_22_layer_call_fn_2351255

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_22_layer_call_and_return_conditional_losses_23492332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????022
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
J__inference_activation_16_layer_call_and_return_conditional_losses_2348777

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????~~02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????~~0:[ W
3
_output_shapes!
:?????????~~0
 
_user_specified_nameinputs
?

?
F__inference_conv3d_10_layer_call_and_return_conditional_losses_2348953

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????**0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
f
J__inference_activation_16_layer_call_and_return_conditional_losses_2350828

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????~~02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????~~0:[ W
3
_output_shapes!
:?????????~~0
 
_user_specified_nameinputs
?
H
,__inference_dropout_20_layer_call_fn_2350924

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_20_layer_call_and_return_conditional_losses_23488182
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_11_layer_call_and_return_conditional_losses_2348647

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_6_layer_call_and_return_conditional_losses_2351303

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_activation_18_layer_call_and_return_conditional_losses_2349197

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
??
?
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2350480

inputs,
(conv3d_15_conv3d_readvariableop_resource-
)conv3d_15_biasadd_readvariableop_resource,
(conv3d_12_conv3d_readvariableop_resource-
)conv3d_12_biasadd_readvariableop_resource+
'conv3d_9_conv3d_readvariableop_resource,
(conv3d_9_biasadd_readvariableop_resource,
(conv3d_16_conv3d_readvariableop_resource-
)conv3d_16_biasadd_readvariableop_resource,
(conv3d_13_conv3d_readvariableop_resource-
)conv3d_13_biasadd_readvariableop_resource,
(conv3d_10_conv3d_readvariableop_resource-
)conv3d_10_biasadd_readvariableop_resource,
(conv3d_17_conv3d_readvariableop_resource-
)conv3d_17_biasadd_readvariableop_resource,
(conv3d_14_conv3d_readvariableop_resource-
)conv3d_14_biasadd_readvariableop_resource,
(conv3d_11_conv3d_readvariableop_resource-
)conv3d_11_biasadd_readvariableop_resource+
'dense_10_matmul_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identity

identity_1

identity_2?? conv3d_10/BiasAdd/ReadVariableOp?conv3d_10/Conv3D/ReadVariableOp? conv3d_11/BiasAdd/ReadVariableOp?conv3d_11/Conv3D/ReadVariableOp? conv3d_12/BiasAdd/ReadVariableOp?conv3d_12/Conv3D/ReadVariableOp? conv3d_13/BiasAdd/ReadVariableOp?conv3d_13/Conv3D/ReadVariableOp? conv3d_14/BiasAdd/ReadVariableOp?conv3d_14/Conv3D/ReadVariableOp? conv3d_15/BiasAdd/ReadVariableOp?conv3d_15/Conv3D/ReadVariableOp? conv3d_16/BiasAdd/ReadVariableOp?conv3d_16/Conv3D/ReadVariableOp? conv3d_17/BiasAdd/ReadVariableOp?conv3d_17/Conv3D/ReadVariableOp?conv3d_9/BiasAdd/ReadVariableOp?conv3d_9/Conv3D/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?
conv3d_15/Conv3D/ReadVariableOpReadVariableOp(conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:0*
dtype02!
conv3d_15/Conv3D/ReadVariableOp?
conv3d_15/Conv3DConv3Dinputs'conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
conv3d_15/Conv3D?
 conv3d_15/BiasAdd/ReadVariableOpReadVariableOp)conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_15/BiasAdd/ReadVariableOp?
conv3d_15/BiasAddBiasAddconv3d_15/Conv3D:output:0(conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02
conv3d_15/BiasAdd?
conv3d_12/Conv3D/ReadVariableOpReadVariableOp(conv3d_12_conv3d_readvariableop_resource**
_output_shapes
:0*
dtype02!
conv3d_12/Conv3D/ReadVariableOp?
conv3d_12/Conv3DConv3Dinputs'conv3d_12/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
conv3d_12/Conv3D?
 conv3d_12/BiasAdd/ReadVariableOpReadVariableOp)conv3d_12_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_12/BiasAdd/ReadVariableOp?
conv3d_12/BiasAddBiasAddconv3d_12/Conv3D:output:0(conv3d_12/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02
conv3d_12/BiasAdd?
conv3d_9/Conv3D/ReadVariableOpReadVariableOp'conv3d_9_conv3d_readvariableop_resource**
_output_shapes
:0*
dtype02 
conv3d_9/Conv3D/ReadVariableOp?
conv3d_9/Conv3DConv3Dinputs&conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
conv3d_9/Conv3D?
conv3d_9/BiasAdd/ReadVariableOpReadVariableOp(conv3d_9_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02!
conv3d_9/BiasAdd/ReadVariableOp?
conv3d_9/BiasAddBiasAddconv3d_9/Conv3D:output:0'conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02
conv3d_9/BiasAdd?
activation_20/ReluReluconv3d_15/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????~~02
activation_20/Relu?
activation_16/ReluReluconv3d_12/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????~~02
activation_16/Relu?
activation_12/ReluReluconv3d_9/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????~~02
activation_12/Relu?
max_pooling3d_15/MaxPool3D	MaxPool3D activation_20/Relu:activations:0*
T0*3
_output_shapes!
:?????????**0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_15/MaxPool3D?
max_pooling3d_12/MaxPool3D	MaxPool3D activation_16/Relu:activations:0*
T0*3
_output_shapes!
:?????????**0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_12/MaxPool3D?
max_pooling3d_9/MaxPool3D	MaxPool3D activation_12/Relu:activations:0*
T0*3
_output_shapes!
:?????????**0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_9/MaxPool3Dy
dropout_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_20/dropout/Const?
dropout_20/dropout/MulMul#max_pooling3d_15/MaxPool3D:output:0!dropout_20/dropout/Const:output:0*
T0*3
_output_shapes!
:?????????**02
dropout_20/dropout/Mul?
dropout_20/dropout/ShapeShape#max_pooling3d_15/MaxPool3D:output:0*
T0*
_output_shapes
:2
dropout_20/dropout/Shape?
/dropout_20/dropout/random_uniform/RandomUniformRandomUniform!dropout_20/dropout/Shape:output:0*
T0*3
_output_shapes!
:?????????**0*
dtype021
/dropout_20/dropout/random_uniform/RandomUniform?
!dropout_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2#
!dropout_20/dropout/GreaterEqual/y?
dropout_20/dropout/GreaterEqualGreaterEqual8dropout_20/dropout/random_uniform/RandomUniform:output:0*dropout_20/dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????**02!
dropout_20/dropout/GreaterEqual?
dropout_20/dropout/CastCast#dropout_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????**02
dropout_20/dropout/Cast?
dropout_20/dropout/Mul_1Muldropout_20/dropout/Mul:z:0dropout_20/dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????**02
dropout_20/dropout/Mul_1y
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_16/dropout/Const?
dropout_16/dropout/MulMul#max_pooling3d_12/MaxPool3D:output:0!dropout_16/dropout/Const:output:0*
T0*3
_output_shapes!
:?????????**02
dropout_16/dropout/Mul?
dropout_16/dropout/ShapeShape#max_pooling3d_12/MaxPool3D:output:0*
T0*
_output_shapes
:2
dropout_16/dropout/Shape?
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*3
_output_shapes!
:?????????**0*
dtype021
/dropout_16/dropout/random_uniform/RandomUniform?
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2#
!dropout_16/dropout/GreaterEqual/y?
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????**02!
dropout_16/dropout/GreaterEqual?
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????**02
dropout_16/dropout/Cast?
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????**02
dropout_16/dropout/Mul_1y
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_12/dropout/Const?
dropout_12/dropout/MulMul"max_pooling3d_9/MaxPool3D:output:0!dropout_12/dropout/Const:output:0*
T0*3
_output_shapes!
:?????????**02
dropout_12/dropout/Mul?
dropout_12/dropout/ShapeShape"max_pooling3d_9/MaxPool3D:output:0*
T0*
_output_shapes
:2
dropout_12/dropout/Shape?
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*3
_output_shapes!
:?????????**0*
dtype021
/dropout_12/dropout/random_uniform/RandomUniform?
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2#
!dropout_12/dropout/GreaterEqual/y?
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????**02!
dropout_12/dropout/GreaterEqual?
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????**02
dropout_12/dropout/Cast?
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????**02
dropout_12/dropout/Mul_1?
conv3d_16/Conv3D/ReadVariableOpReadVariableOp(conv3d_16_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_16/Conv3D/ReadVariableOp?
conv3d_16/Conv3DConv3Ddropout_20/dropout/Mul_1:z:0'conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
conv3d_16/Conv3D?
 conv3d_16/BiasAdd/ReadVariableOpReadVariableOp)conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_16/BiasAdd/ReadVariableOp?
conv3d_16/BiasAddBiasAddconv3d_16/Conv3D:output:0(conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02
conv3d_16/BiasAdd?
conv3d_13/Conv3D/ReadVariableOpReadVariableOp(conv3d_13_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_13/Conv3D/ReadVariableOp?
conv3d_13/Conv3DConv3Ddropout_16/dropout/Mul_1:z:0'conv3d_13/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
conv3d_13/Conv3D?
 conv3d_13/BiasAdd/ReadVariableOpReadVariableOp)conv3d_13_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_13/BiasAdd/ReadVariableOp?
conv3d_13/BiasAddBiasAddconv3d_13/Conv3D:output:0(conv3d_13/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02
conv3d_13/BiasAdd?
conv3d_10/Conv3D/ReadVariableOpReadVariableOp(conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_10/Conv3D/ReadVariableOp?
conv3d_10/Conv3DConv3Ddropout_12/dropout/Mul_1:z:0'conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
conv3d_10/Conv3D?
 conv3d_10/BiasAdd/ReadVariableOpReadVariableOp)conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_10/BiasAdd/ReadVariableOp?
conv3d_10/BiasAddBiasAddconv3d_10/Conv3D:output:0(conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02
conv3d_10/BiasAdd?
activation_21/ReluReluconv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????((02
activation_21/Relu?
activation_17/ReluReluconv3d_13/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????((02
activation_17/Relu?
activation_13/ReluReluconv3d_10/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????((02
activation_13/Relu?
max_pooling3d_16/MaxPool3D	MaxPool3D activation_21/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_16/MaxPool3D?
max_pooling3d_13/MaxPool3D	MaxPool3D activation_17/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_13/MaxPool3D?
max_pooling3d_10/MaxPool3D	MaxPool3D activation_13/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_10/MaxPool3Dy
dropout_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_21/dropout/Const?
dropout_21/dropout/MulMul#max_pooling3d_16/MaxPool3D:output:0!dropout_21/dropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout_21/dropout/Mul?
dropout_21/dropout/ShapeShape#max_pooling3d_16/MaxPool3D:output:0*
T0*
_output_shapes
:2
dropout_21/dropout/Shape?
/dropout_21/dropout/random_uniform/RandomUniformRandomUniform!dropout_21/dropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype021
/dropout_21/dropout/random_uniform/RandomUniform?
!dropout_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2#
!dropout_21/dropout/GreaterEqual/y?
dropout_21/dropout/GreaterEqualGreaterEqual8dropout_21/dropout/random_uniform/RandomUniform:output:0*dropout_21/dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02!
dropout_21/dropout/GreaterEqual?
dropout_21/dropout/CastCast#dropout_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout_21/dropout/Cast?
dropout_21/dropout/Mul_1Muldropout_21/dropout/Mul:z:0dropout_21/dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout_21/dropout/Mul_1y
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_17/dropout/Const?
dropout_17/dropout/MulMul#max_pooling3d_13/MaxPool3D:output:0!dropout_17/dropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout_17/dropout/Mul?
dropout_17/dropout/ShapeShape#max_pooling3d_13/MaxPool3D:output:0*
T0*
_output_shapes
:2
dropout_17/dropout/Shape?
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype021
/dropout_17/dropout/random_uniform/RandomUniform?
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2#
!dropout_17/dropout/GreaterEqual/y?
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02!
dropout_17/dropout/GreaterEqual?
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout_17/dropout/Cast?
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout_17/dropout/Mul_1y
dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_13/dropout/Const?
dropout_13/dropout/MulMul#max_pooling3d_10/MaxPool3D:output:0!dropout_13/dropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout_13/dropout/Mul?
dropout_13/dropout/ShapeShape#max_pooling3d_10/MaxPool3D:output:0*
T0*
_output_shapes
:2
dropout_13/dropout/Shape?
/dropout_13/dropout/random_uniform/RandomUniformRandomUniform!dropout_13/dropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype021
/dropout_13/dropout/random_uniform/RandomUniform?
!dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2#
!dropout_13/dropout/GreaterEqual/y?
dropout_13/dropout/GreaterEqualGreaterEqual8dropout_13/dropout/random_uniform/RandomUniform:output:0*dropout_13/dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02!
dropout_13/dropout/GreaterEqual?
dropout_13/dropout/CastCast#dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout_13/dropout/Cast?
dropout_13/dropout/Mul_1Muldropout_13/dropout/Mul:z:0dropout_13/dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout_13/dropout/Mul_1?
conv3d_17/Conv3D/ReadVariableOpReadVariableOp(conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_17/Conv3D/ReadVariableOp?
conv3d_17/Conv3DConv3Ddropout_21/dropout/Mul_1:z:0'conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
conv3d_17/Conv3D?
 conv3d_17/BiasAdd/ReadVariableOpReadVariableOp)conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_17/BiasAdd/ReadVariableOp?
conv3d_17/BiasAddBiasAddconv3d_17/Conv3D:output:0(conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02
conv3d_17/BiasAdd?
conv3d_14/Conv3D/ReadVariableOpReadVariableOp(conv3d_14_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_14/Conv3D/ReadVariableOp?
conv3d_14/Conv3DConv3Ddropout_17/dropout/Mul_1:z:0'conv3d_14/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
conv3d_14/Conv3D?
 conv3d_14/BiasAdd/ReadVariableOpReadVariableOp)conv3d_14_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_14/BiasAdd/ReadVariableOp?
conv3d_14/BiasAddBiasAddconv3d_14/Conv3D:output:0(conv3d_14/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02
conv3d_14/BiasAdd?
conv3d_11/Conv3D/ReadVariableOpReadVariableOp(conv3d_11_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_11/Conv3D/ReadVariableOp?
conv3d_11/Conv3DConv3Ddropout_13/dropout/Mul_1:z:0'conv3d_11/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
conv3d_11/Conv3D?
 conv3d_11/BiasAdd/ReadVariableOpReadVariableOp)conv3d_11_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_11/BiasAdd/ReadVariableOp?
conv3d_11/BiasAddBiasAddconv3d_11/Conv3D:output:0(conv3d_11/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02
conv3d_11/BiasAdd?
activation_22/ReluReluconv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????02
activation_22/Relu?
activation_18/ReluReluconv3d_14/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????02
activation_18/Relu?
activation_14/ReluReluconv3d_11/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????02
activation_14/Relu?
max_pooling3d_17/MaxPool3D	MaxPool3D activation_22/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_17/MaxPool3D?
max_pooling3d_14/MaxPool3D	MaxPool3D activation_18/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_14/MaxPool3D?
max_pooling3d_11/MaxPool3D	MaxPool3D activation_14/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_11/MaxPool3Dy
dropout_22/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_22/dropout/Const?
dropout_22/dropout/MulMul#max_pooling3d_17/MaxPool3D:output:0!dropout_22/dropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout_22/dropout/Mul?
dropout_22/dropout/ShapeShape#max_pooling3d_17/MaxPool3D:output:0*
T0*
_output_shapes
:2
dropout_22/dropout/Shape?
/dropout_22/dropout/random_uniform/RandomUniformRandomUniform!dropout_22/dropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype021
/dropout_22/dropout/random_uniform/RandomUniform?
!dropout_22/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2#
!dropout_22/dropout/GreaterEqual/y?
dropout_22/dropout/GreaterEqualGreaterEqual8dropout_22/dropout/random_uniform/RandomUniform:output:0*dropout_22/dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02!
dropout_22/dropout/GreaterEqual?
dropout_22/dropout/CastCast#dropout_22/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout_22/dropout/Cast?
dropout_22/dropout/Mul_1Muldropout_22/dropout/Mul:z:0dropout_22/dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout_22/dropout/Mul_1y
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_18/dropout/Const?
dropout_18/dropout/MulMul#max_pooling3d_14/MaxPool3D:output:0!dropout_18/dropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout_18/dropout/Mul?
dropout_18/dropout/ShapeShape#max_pooling3d_14/MaxPool3D:output:0*
T0*
_output_shapes
:2
dropout_18/dropout/Shape?
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype021
/dropout_18/dropout/random_uniform/RandomUniform?
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2#
!dropout_18/dropout/GreaterEqual/y?
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02!
dropout_18/dropout/GreaterEqual?
dropout_18/dropout/CastCast#dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout_18/dropout/Cast?
dropout_18/dropout/Mul_1Muldropout_18/dropout/Mul:z:0dropout_18/dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout_18/dropout/Mul_1y
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_14/dropout/Const?
dropout_14/dropout/MulMul#max_pooling3d_11/MaxPool3D:output:0!dropout_14/dropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout_14/dropout/Mul?
dropout_14/dropout/ShapeShape#max_pooling3d_11/MaxPool3D:output:0*
T0*
_output_shapes
:2
dropout_14/dropout/Shape?
/dropout_14/dropout/random_uniform/RandomUniformRandomUniform!dropout_14/dropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype021
/dropout_14/dropout/random_uniform/RandomUniform?
!dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2#
!dropout_14/dropout/GreaterEqual/y?
dropout_14/dropout/GreaterEqualGreaterEqual8dropout_14/dropout/random_uniform/RandomUniform:output:0*dropout_14/dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02!
dropout_14/dropout/GreaterEqual?
dropout_14/dropout/CastCast#dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout_14/dropout/Cast?
dropout_14/dropout/Mul_1Muldropout_14/dropout/Mul:z:0dropout_14/dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout_14/dropout/Mul_1s
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_5/Const?
flatten_5/ReshapeReshapedropout_22/dropout/Mul_1:z:0flatten_5/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_5/Reshapes
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_4/Const?
flatten_4/ReshapeReshapedropout_18/dropout/Mul_1:z:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_4/Reshapes
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_3/Const?
flatten_3/ReshapeReshapedropout_14/dropout/Mul_1:z:0flatten_3/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_3/Reshape?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMulflatten_5/Reshape:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_10/BiasAdd?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/BiasAdd?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/BiasAdd~
activation_23/ReluReludense_10/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_23/Relu}
activation_19/ReluReludense_8/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_19/Relu}
activation_15/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_15/Reluy
dropout_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_23/dropout/Const?
dropout_23/dropout/MulMul activation_23/Relu:activations:0!dropout_23/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_23/dropout/Mul?
dropout_23/dropout/ShapeShape activation_23/Relu:activations:0*
T0*
_output_shapes
:2
dropout_23/dropout/Shape?
/dropout_23/dropout/random_uniform/RandomUniformRandomUniform!dropout_23/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_23/dropout/random_uniform/RandomUniform?
!dropout_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_23/dropout/GreaterEqual/y?
dropout_23/dropout/GreaterEqualGreaterEqual8dropout_23/dropout/random_uniform/RandomUniform:output:0*dropout_23/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_23/dropout/GreaterEqual?
dropout_23/dropout/CastCast#dropout_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_23/dropout/Cast?
dropout_23/dropout/Mul_1Muldropout_23/dropout/Mul:z:0dropout_23/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_23/dropout/Mul_1y
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_19/dropout/Const?
dropout_19/dropout/MulMul activation_19/Relu:activations:0!dropout_19/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_19/dropout/Mul?
dropout_19/dropout/ShapeShape activation_19/Relu:activations:0*
T0*
_output_shapes
:2
dropout_19/dropout/Shape?
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_19/dropout/random_uniform/RandomUniform?
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_19/dropout/GreaterEqual/y?
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_19/dropout/GreaterEqual?
dropout_19/dropout/CastCast#dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_19/dropout/Cast?
dropout_19/dropout/Mul_1Muldropout_19/dropout/Mul:z:0dropout_19/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_19/dropout/Mul_1y
dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_15/dropout/Const?
dropout_15/dropout/MulMul activation_15/Relu:activations:0!dropout_15/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_15/dropout/Mul?
dropout_15/dropout/ShapeShape activation_15/Relu:activations:0*
T0*
_output_shapes
:2
dropout_15/dropout/Shape?
/dropout_15/dropout/random_uniform/RandomUniformRandomUniform!dropout_15/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_15/dropout/random_uniform/RandomUniform?
!dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_15/dropout/GreaterEqual/y?
dropout_15/dropout/GreaterEqualGreaterEqual8dropout_15/dropout/random_uniform/RandomUniform:output:0*dropout_15/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_15/dropout/GreaterEqual?
dropout_15/dropout/CastCast#dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_15/dropout/Cast?
dropout_15/dropout/Mul_1Muldropout_15/dropout/Mul:z:0dropout_15/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_15/dropout/Mul_1?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMuldropout_23/dropout/Mul_1:z:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/BiasAdd?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMuldropout_19/dropout/Mul_1:z:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAdd?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMuldropout_15/dropout/Mul_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAdd?
consolidation_output/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
consolidation_output/Sigmoid?
pleural_regular_output/SigmoidSigmoiddense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
pleural_regular_output/Sigmoid?
covid_severity_output/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
covid_severity_output/Softmax?
IdentityIdentity'covid_severity_output/Softmax:softmax:0!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp!^conv3d_11/BiasAdd/ReadVariableOp ^conv3d_11/Conv3D/ReadVariableOp!^conv3d_12/BiasAdd/ReadVariableOp ^conv3d_12/Conv3D/ReadVariableOp!^conv3d_13/BiasAdd/ReadVariableOp ^conv3d_13/Conv3D/ReadVariableOp!^conv3d_14/BiasAdd/ReadVariableOp ^conv3d_14/Conv3D/ReadVariableOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity"pleural_regular_output/Sigmoid:y:0!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp!^conv3d_11/BiasAdd/ReadVariableOp ^conv3d_11/Conv3D/ReadVariableOp!^conv3d_12/BiasAdd/ReadVariableOp ^conv3d_12/Conv3D/ReadVariableOp!^conv3d_13/BiasAdd/ReadVariableOp ^conv3d_13/Conv3D/ReadVariableOp!^conv3d_14/BiasAdd/ReadVariableOp ^conv3d_14/Conv3D/ReadVariableOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity consolidation_output/Sigmoid:y:0!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp!^conv3d_11/BiasAdd/ReadVariableOp ^conv3d_11/Conv3D/ReadVariableOp!^conv3d_12/BiasAdd/ReadVariableOp ^conv3d_12/Conv3D/ReadVariableOp!^conv3d_13/BiasAdd/ReadVariableOp ^conv3d_13/Conv3D/ReadVariableOp!^conv3d_14/BiasAdd/ReadVariableOp ^conv3d_14/Conv3D/ReadVariableOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2D
 conv3d_10/BiasAdd/ReadVariableOp conv3d_10/BiasAdd/ReadVariableOp2B
conv3d_10/Conv3D/ReadVariableOpconv3d_10/Conv3D/ReadVariableOp2D
 conv3d_11/BiasAdd/ReadVariableOp conv3d_11/BiasAdd/ReadVariableOp2B
conv3d_11/Conv3D/ReadVariableOpconv3d_11/Conv3D/ReadVariableOp2D
 conv3d_12/BiasAdd/ReadVariableOp conv3d_12/BiasAdd/ReadVariableOp2B
conv3d_12/Conv3D/ReadVariableOpconv3d_12/Conv3D/ReadVariableOp2D
 conv3d_13/BiasAdd/ReadVariableOp conv3d_13/BiasAdd/ReadVariableOp2B
conv3d_13/Conv3D/ReadVariableOpconv3d_13/Conv3D/ReadVariableOp2D
 conv3d_14/BiasAdd/ReadVariableOp conv3d_14/BiasAdd/ReadVariableOp2B
conv3d_14/Conv3D/ReadVariableOpconv3d_14/Conv3D/ReadVariableOp2D
 conv3d_15/BiasAdd/ReadVariableOp conv3d_15/BiasAdd/ReadVariableOp2B
conv3d_15/Conv3D/ReadVariableOpconv3d_15/Conv3D/ReadVariableOp2D
 conv3d_16/BiasAdd/ReadVariableOp conv3d_16/BiasAdd/ReadVariableOp2B
conv3d_16/Conv3D/ReadVariableOpconv3d_16/Conv3D/ReadVariableOp2D
 conv3d_17/BiasAdd/ReadVariableOp conv3d_17/BiasAdd/ReadVariableOp2B
conv3d_17/Conv3D/ReadVariableOpconv3d_17/Conv3D/ReadVariableOp2B
conv3d_9/BiasAdd/ReadVariableOpconv3d_9/BiasAdd/ReadVariableOp2@
conv3d_9/Conv3D/ReadVariableOpconv3d_9/Conv3D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
?
+__inference_conv3d_15_layer_call_fn_2350813

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_15_layer_call_and_return_conditional_losses_23486912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_20_layer_call_fn_2350919

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_20_layer_call_and_return_conditional_losses_23488132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**022
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_2350258
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_23485692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:???????????
!
_user_specified_name	input_2
?

?
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2350804

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_22_layer_call_and_return_conditional_losses_2351250

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
,__inference_dropout_18_layer_call_fn_2351228

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_23492632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????022
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
G__inference_dropout_18_layer_call_and_return_conditional_losses_2351218

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
J__inference_activation_18_layer_call_and_return_conditional_losses_2351164

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_14_layer_call_fn_2348665

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_23486592
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_15_layer_call_fn_2351407

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_23495472
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_23_layer_call_and_return_conditional_losses_2349482

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_dense_11_layer_call_fn_2351518

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_23495702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv3d_13_layer_call_fn_2350962

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_13_layer_call_and_return_conditional_losses_23489272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????**0::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
f
J__inference_activation_22_layer_call_and_return_conditional_losses_2349184

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2348587

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv3d_11_layer_call_and_return_conditional_losses_2351102

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?	
?
D__inference_dense_8_layer_call_and_return_conditional_losses_2351322

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_14_layer_call_and_return_conditional_losses_2351196

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
,__inference_dropout_17_layer_call_fn_2351060

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_23490532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????022
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
K
/__inference_activation_14_layer_call_fn_2351159

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_23492102
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_10_layer_call_and_return_conditional_losses_2348611

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
K
/__inference_activation_16_layer_call_fn_2350833

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_23487772
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????~~0:[ W
3
_output_shapes!
:?????????~~0
 
_user_specified_nameinputs
?

?
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2351121

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
J__inference_activation_21_layer_call_and_return_conditional_losses_2351006

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????((02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????((0:[ W
3
_output_shapes!
:?????????((0
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_17_layer_call_fn_2348677

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_23486712
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
?
/__inference_Covid_LUS_net_layer_call_fn_2349990
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_23499232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:???????????
!
_user_specified_name	input_2
?
f
J__inference_activation_12_layer_call_and_return_conditional_losses_2350818

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????~~02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????~~0:[ W
3
_output_shapes!
:?????????~~0
 
_user_specified_nameinputs
?
e
G__inference_dropout_16_layer_call_and_return_conditional_losses_2348848

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????**02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????**02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
K
/__inference_activation_23_layer_call_fn_2351380

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_23494362
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_23_layer_call_and_return_conditional_losses_2349487

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_16_layer_call_and_return_conditional_losses_2350882

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????**0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????**02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????**02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
K
/__inference_activation_15_layer_call_fn_2351360

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_15_layer_call_and_return_conditional_losses_23494622
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2348635

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_10_layer_call_fn_2348617

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_10_layer_call_and_return_conditional_losses_23486112
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_23_layer_call_fn_2351461

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_23_layer_call_and_return_conditional_losses_23494872
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_15_layer_call_and_return_conditional_losses_2351392

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_activation_23_layer_call_and_return_conditional_losses_2349436

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_19_layer_call_and_return_conditional_losses_2349512

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2348691

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
K
/__inference_activation_20_layer_call_fn_2350843

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_23487642
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????~~0:[ W
3
_output_shapes!
:?????????~~0
 
_user_specified_nameinputs
??
?

J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2349800
input_2
conv3d_15_2349683
conv3d_15_2349685
conv3d_12_2349688
conv3d_12_2349690
conv3d_9_2349693
conv3d_9_2349695
conv3d_16_2349707
conv3d_16_2349709
conv3d_13_2349712
conv3d_13_2349714
conv3d_10_2349717
conv3d_10_2349719
conv3d_17_2349731
conv3d_17_2349733
conv3d_14_2349736
conv3d_14_2349738
conv3d_11_2349741
conv3d_11_2349743
dense_10_2349758
dense_10_2349760
dense_8_2349763
dense_8_2349765
dense_6_2349768
dense_6_2349770
dense_11_2349779
dense_11_2349781
dense_9_2349784
dense_9_2349786
dense_7_2349789
dense_7_2349791
identity

identity_1

identity_2??!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall?!conv3d_12/StatefulPartitionedCall?!conv3d_13/StatefulPartitionedCall?!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall?!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCallinput_2conv3d_15_2349683conv3d_15_2349685*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_15_layer_call_and_return_conditional_losses_23486912#
!conv3d_15/StatefulPartitionedCall?
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCallinput_2conv3d_12_2349688conv3d_12_2349690*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_12_layer_call_and_return_conditional_losses_23487172#
!conv3d_12/StatefulPartitionedCall?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCallinput_2conv3d_9_2349693conv3d_9_2349695*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_23487432"
 conv3d_9/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_23487642
activation_20/PartitionedCall?
activation_16/PartitionedCallPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_23487772
activation_16/PartitionedCall?
activation_12/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_23487902
activation_12/PartitionedCall?
 max_pooling3d_15/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_23485992"
 max_pooling3d_15/PartitionedCall?
 max_pooling3d_12/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_23485872"
 max_pooling3d_12/PartitionedCall?
max_pooling3d_9/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_9_layer_call_and_return_conditional_losses_23485752!
max_pooling3d_9/PartitionedCall?
dropout_20/PartitionedCallPartitionedCall)max_pooling3d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_20_layer_call_and_return_conditional_losses_23488182
dropout_20/PartitionedCall?
dropout_16/PartitionedCallPartitionedCall)max_pooling3d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_23488482
dropout_16/PartitionedCall?
dropout_12/PartitionedCallPartitionedCall(max_pooling3d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_23488782
dropout_12/PartitionedCall?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0conv3d_16_2349707conv3d_16_2349709*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_16_layer_call_and_return_conditional_losses_23489012#
!conv3d_16/StatefulPartitionedCall?
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv3d_13_2349712conv3d_13_2349714*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_13_layer_call_and_return_conditional_losses_23489272#
!conv3d_13/StatefulPartitionedCall?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0conv3d_10_2349717conv3d_10_2349719*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_23489532#
!conv3d_10/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_23489742
activation_21/PartitionedCall?
activation_17/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_23489872
activation_17/PartitionedCall?
activation_13/PartitionedCallPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_23490002
activation_13/PartitionedCall?
 max_pooling3d_16/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_23486352"
 max_pooling3d_16/PartitionedCall?
 max_pooling3d_13/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_23486232"
 max_pooling3d_13/PartitionedCall?
 max_pooling3d_10/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_10_layer_call_and_return_conditional_losses_23486112"
 max_pooling3d_10/PartitionedCall?
dropout_21/PartitionedCallPartitionedCall)max_pooling3d_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_23490282
dropout_21/PartitionedCall?
dropout_17/PartitionedCallPartitionedCall)max_pooling3d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_23490582
dropout_17/PartitionedCall?
dropout_13/PartitionedCallPartitionedCall)max_pooling3d_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_23490882
dropout_13/PartitionedCall?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0conv3d_17_2349731conv3d_17_2349733*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_17_layer_call_and_return_conditional_losses_23491112#
!conv3d_17/StatefulPartitionedCall?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0conv3d_14_2349736conv3d_14_2349738*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_14_layer_call_and_return_conditional_losses_23491372#
!conv3d_14/StatefulPartitionedCall?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0conv3d_11_2349741conv3d_11_2349743*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_11_layer_call_and_return_conditional_losses_23491632#
!conv3d_11/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_23491842
activation_22/PartitionedCall?
activation_18/PartitionedCallPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_18_layer_call_and_return_conditional_losses_23491972
activation_18/PartitionedCall?
activation_14/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_23492102
activation_14/PartitionedCall?
 max_pooling3d_17/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_23486712"
 max_pooling3d_17/PartitionedCall?
 max_pooling3d_14/PartitionedCallPartitionedCall&activation_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_23486592"
 max_pooling3d_14/PartitionedCall?
 max_pooling3d_11/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_11_layer_call_and_return_conditional_losses_23486472"
 max_pooling3d_11/PartitionedCall?
dropout_22/PartitionedCallPartitionedCall)max_pooling3d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_22_layer_call_and_return_conditional_losses_23492382
dropout_22/PartitionedCall?
dropout_18/PartitionedCallPartitionedCall)max_pooling3d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_23492682
dropout_18/PartitionedCall?
dropout_14/PartitionedCallPartitionedCall)max_pooling3d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_23492982
dropout_14/PartitionedCall?
flatten_5/PartitionedCallPartitionedCall#dropout_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_23493172
flatten_5/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall#dropout_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_23493312
flatten_4/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall#dropout_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_23493452
flatten_3/PartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_10_2349758dense_10_2349760*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_23493632"
 dense_10/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_2349763dense_8_2349765*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_23493892!
dense_8/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_2349768dense_6_2349770*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_23494152!
dense_6/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_23494362
activation_23/PartitionedCall?
activation_19/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_19_layer_call_and_return_conditional_losses_23494492
activation_19/PartitionedCall?
activation_15/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_15_layer_call_and_return_conditional_losses_23494622
activation_15/PartitionedCall?
dropout_23/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_23_layer_call_and_return_conditional_losses_23494872
dropout_23/PartitionedCall?
dropout_19/PartitionedCallPartitionedCall&activation_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_23495172
dropout_19/PartitionedCall?
dropout_15/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_23495472
dropout_15/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0dense_11_2349779dense_11_2349781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_23495702"
 dense_11/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_9_2349784dense_9_2349786*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_23495962!
dense_9/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_7_2349789dense_7_2349791*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_23496222!
dense_7/StatefulPartitionedCall?
$consolidation_output/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_consolidation_output_layer_call_and_return_conditional_losses_23496432&
$consolidation_output/PartitionedCall?
&pleural_regular_output/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_pleural_regular_output_layer_call_and_return_conditional_losses_23496562(
&pleural_regular_output/PartitionedCall?
%covid_severity_output/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_covid_severity_output_layer_call_and_return_conditional_losses_23496692'
%covid_severity_output/PartitionedCall?
IdentityIdentity.covid_severity_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity/pleural_regular_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity-consolidation_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:???????????
!
_user_specified_name	input_2
?
f
G__inference_dropout_18_layer_call_and_return_conditional_losses_2349263

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
,__inference_dropout_15_layer_call_fn_2351402

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_23495422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
o
S__inference_pleural_regular_output_layer_call_and_return_conditional_losses_2349656

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
J__inference_activation_19_layer_call_and_return_conditional_losses_2351365

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_activation_23_layer_call_and_return_conditional_losses_2351375

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
F__inference_conv3d_13_layer_call_and_return_conditional_losses_2350953

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????**0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
K
/__inference_activation_22_layer_call_fn_2351179

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_23491842
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
,__inference_dropout_14_layer_call_fn_2351201

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_23492932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????022
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
G__inference_dropout_17_layer_call_and_return_conditional_losses_2349053

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
,__inference_dropout_23_layer_call_fn_2351456

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_23_layer_call_and_return_conditional_losses_23494822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_activation_21_layer_call_fn_2351011

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_23489742
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????((0:[ W
3
_output_shapes!
:?????????((0
 
_user_specified_nameinputs
?

?
E__inference_conv3d_9_layer_call_and_return_conditional_losses_2350766

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
?
/__inference_Covid_LUS_net_layer_call_fn_2350687

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_23499232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_17_layer_call_fn_2351065

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_23490582
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
?
/__inference_Covid_LUS_net_layer_call_fn_2350179
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_23501122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:???????????
!
_user_specified_name	input_2
?
K
/__inference_activation_18_layer_call_fn_2351169

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_18_layer_call_and_return_conditional_losses_23491972
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
J__inference_activation_22_layer_call_and_return_conditional_losses_2351174

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?

?
E__inference_conv3d_9_layer_call_and_return_conditional_losses_2348743

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?

*__inference_conv3d_9_layer_call_fn_2350775

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_23487432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_3_layer_call_fn_2351271

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_23493452
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_2349317

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_12_layer_call_and_return_conditional_losses_2348878

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????**02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????**02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
e
,__inference_dropout_19_layer_call_fn_2351429

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_23495122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_21_layer_call_fn_2351087

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_23490232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????022
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
J__inference_activation_15_layer_call_and_return_conditional_losses_2349462

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2348901

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????**0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?

?
F__inference_conv3d_11_layer_call_and_return_conditional_losses_2349163

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
?
+__inference_conv3d_16_layer_call_fn_2350981

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_16_layer_call_and_return_conditional_losses_23489012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????**0::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
e
G__inference_dropout_20_layer_call_and_return_conditional_losses_2350914

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????**02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????**02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?

*__inference_dense_10_layer_call_fn_2351350

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_23493632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_21_layer_call_fn_2351092

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_23490282
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
G__inference_dropout_14_layer_call_and_return_conditional_losses_2351191

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
n
R__inference_covid_severity_output_layer_call_and_return_conditional_losses_2351523

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_19_layer_call_fn_2351434

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_23495172
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
~
)__inference_dense_9_layer_call_fn_2351499

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_23495962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
F__inference_conv3d_12_layer_call_and_return_conditional_losses_2348717

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_13_layer_call_fn_2348629

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_23486232
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_18_layer_call_and_return_conditional_losses_2351223

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?	
?
E__inference_dense_10_layer_call_and_return_conditional_losses_2351341

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_23_layer_call_and_return_conditional_losses_2351446

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv3d_17_layer_call_fn_2351149

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_17_layer_call_and_return_conditional_losses_23491112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????0::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
,__inference_dropout_16_layer_call_fn_2350892

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_23488432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**022
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
m
Q__inference_consolidation_output_layer_call_and_return_conditional_losses_2351543

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_15_layer_call_and_return_conditional_losses_2349547

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling3d_9_layer_call_fn_2348581

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_9_layer_call_and_return_conditional_losses_23485752
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_16_layer_call_fn_2348641

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_23486352
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_activation_21_layer_call_and_return_conditional_losses_2348974

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????((02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????((0:[ W
3
_output_shapes!
:?????????((0
 
_user_specified_nameinputs
?
e
G__inference_dropout_18_layer_call_and_return_conditional_losses_2349268

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
h
L__inference_max_pooling3d_9_layer_call_and_return_conditional_losses_2348575

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_12_layer_call_and_return_conditional_losses_2350855

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????**0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????**02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????**02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
f
J__inference_activation_20_layer_call_and_return_conditional_losses_2350838

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????~~02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????~~0:[ W
3
_output_shapes!
:?????????~~0
 
_user_specified_nameinputs
?
f
G__inference_dropout_22_layer_call_and_return_conditional_losses_2351245

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
G__inference_dropout_15_layer_call_and_return_conditional_losses_2349542

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_4_layer_call_fn_2351282

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_23493312
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
~
)__inference_dense_8_layer_call_fn_2351331

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_23493892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
S
7__inference_covid_severity_output_layer_call_fn_2351528

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_covid_severity_output_layer_call_and_return_conditional_losses_23496692
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_22_layer_call_fn_2351260

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_22_layer_call_and_return_conditional_losses_23492382
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
T
8__inference_pleural_regular_output_layer_call_fn_2351538

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_pleural_regular_output_layer_call_and_return_conditional_losses_23496562
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_2349345

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_2351288

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_20_layer_call_and_return_conditional_losses_2348818

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????**02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????**02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
??
?

J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2350112

inputs
conv3d_15_2349995
conv3d_15_2349997
conv3d_12_2350000
conv3d_12_2350002
conv3d_9_2350005
conv3d_9_2350007
conv3d_16_2350019
conv3d_16_2350021
conv3d_13_2350024
conv3d_13_2350026
conv3d_10_2350029
conv3d_10_2350031
conv3d_17_2350043
conv3d_17_2350045
conv3d_14_2350048
conv3d_14_2350050
conv3d_11_2350053
conv3d_11_2350055
dense_10_2350070
dense_10_2350072
dense_8_2350075
dense_8_2350077
dense_6_2350080
dense_6_2350082
dense_11_2350091
dense_11_2350093
dense_9_2350096
dense_9_2350098
dense_7_2350101
dense_7_2350103
identity

identity_1

identity_2??!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall?!conv3d_12/StatefulPartitionedCall?!conv3d_13/StatefulPartitionedCall?!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall?!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_15_2349995conv3d_15_2349997*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_15_layer_call_and_return_conditional_losses_23486912#
!conv3d_15/StatefulPartitionedCall?
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_12_2350000conv3d_12_2350002*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_12_layer_call_and_return_conditional_losses_23487172#
!conv3d_12/StatefulPartitionedCall?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_9_2350005conv3d_9_2350007*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_23487432"
 conv3d_9/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_23487642
activation_20/PartitionedCall?
activation_16/PartitionedCallPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_23487772
activation_16/PartitionedCall?
activation_12/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_23487902
activation_12/PartitionedCall?
 max_pooling3d_15/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_23485992"
 max_pooling3d_15/PartitionedCall?
 max_pooling3d_12/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_23485872"
 max_pooling3d_12/PartitionedCall?
max_pooling3d_9/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_9_layer_call_and_return_conditional_losses_23485752!
max_pooling3d_9/PartitionedCall?
dropout_20/PartitionedCallPartitionedCall)max_pooling3d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_20_layer_call_and_return_conditional_losses_23488182
dropout_20/PartitionedCall?
dropout_16/PartitionedCallPartitionedCall)max_pooling3d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_23488482
dropout_16/PartitionedCall?
dropout_12/PartitionedCallPartitionedCall(max_pooling3d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_23488782
dropout_12/PartitionedCall?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0conv3d_16_2350019conv3d_16_2350021*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_16_layer_call_and_return_conditional_losses_23489012#
!conv3d_16/StatefulPartitionedCall?
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv3d_13_2350024conv3d_13_2350026*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_13_layer_call_and_return_conditional_losses_23489272#
!conv3d_13/StatefulPartitionedCall?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0conv3d_10_2350029conv3d_10_2350031*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_23489532#
!conv3d_10/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_23489742
activation_21/PartitionedCall?
activation_17/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_23489872
activation_17/PartitionedCall?
activation_13/PartitionedCallPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_23490002
activation_13/PartitionedCall?
 max_pooling3d_16/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_23486352"
 max_pooling3d_16/PartitionedCall?
 max_pooling3d_13/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_23486232"
 max_pooling3d_13/PartitionedCall?
 max_pooling3d_10/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_10_layer_call_and_return_conditional_losses_23486112"
 max_pooling3d_10/PartitionedCall?
dropout_21/PartitionedCallPartitionedCall)max_pooling3d_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_23490282
dropout_21/PartitionedCall?
dropout_17/PartitionedCallPartitionedCall)max_pooling3d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_23490582
dropout_17/PartitionedCall?
dropout_13/PartitionedCallPartitionedCall)max_pooling3d_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_23490882
dropout_13/PartitionedCall?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0conv3d_17_2350043conv3d_17_2350045*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_17_layer_call_and_return_conditional_losses_23491112#
!conv3d_17/StatefulPartitionedCall?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0conv3d_14_2350048conv3d_14_2350050*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_14_layer_call_and_return_conditional_losses_23491372#
!conv3d_14/StatefulPartitionedCall?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0conv3d_11_2350053conv3d_11_2350055*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_11_layer_call_and_return_conditional_losses_23491632#
!conv3d_11/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_23491842
activation_22/PartitionedCall?
activation_18/PartitionedCallPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_18_layer_call_and_return_conditional_losses_23491972
activation_18/PartitionedCall?
activation_14/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_23492102
activation_14/PartitionedCall?
 max_pooling3d_17/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_23486712"
 max_pooling3d_17/PartitionedCall?
 max_pooling3d_14/PartitionedCallPartitionedCall&activation_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_23486592"
 max_pooling3d_14/PartitionedCall?
 max_pooling3d_11/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_11_layer_call_and_return_conditional_losses_23486472"
 max_pooling3d_11/PartitionedCall?
dropout_22/PartitionedCallPartitionedCall)max_pooling3d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_22_layer_call_and_return_conditional_losses_23492382
dropout_22/PartitionedCall?
dropout_18/PartitionedCallPartitionedCall)max_pooling3d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_23492682
dropout_18/PartitionedCall?
dropout_14/PartitionedCallPartitionedCall)max_pooling3d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_23492982
dropout_14/PartitionedCall?
flatten_5/PartitionedCallPartitionedCall#dropout_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_23493172
flatten_5/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall#dropout_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_23493312
flatten_4/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall#dropout_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_23493452
flatten_3/PartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_10_2350070dense_10_2350072*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_23493632"
 dense_10/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_2350075dense_8_2350077*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_23493892!
dense_8/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_2350080dense_6_2350082*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_23494152!
dense_6/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_23494362
activation_23/PartitionedCall?
activation_19/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_19_layer_call_and_return_conditional_losses_23494492
activation_19/PartitionedCall?
activation_15/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_15_layer_call_and_return_conditional_losses_23494622
activation_15/PartitionedCall?
dropout_23/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_23_layer_call_and_return_conditional_losses_23494872
dropout_23/PartitionedCall?
dropout_19/PartitionedCallPartitionedCall&activation_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_23495172
dropout_19/PartitionedCall?
dropout_15/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_23495472
dropout_15/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0dense_11_2350091dense_11_2350093*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_23495702"
 dense_11/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_9_2350096dense_9_2350098*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_23495962!
dense_9/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_7_2350101dense_7_2350103*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_23496222!
dense_7/StatefulPartitionedCall?
$consolidation_output/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_consolidation_output_layer_call_and_return_conditional_losses_23496432&
$consolidation_output/PartitionedCall?
&pleural_regular_output/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_pleural_regular_output_layer_call_and_return_conditional_losses_23496562(
&pleural_regular_output/PartitionedCall?
%covid_severity_output/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_covid_severity_output_layer_call_and_return_conditional_losses_23496692'
%covid_severity_output/PartitionedCall?
IdentityIdentity.covid_severity_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity/pleural_regular_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity-consolidation_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_13_layer_call_and_return_conditional_losses_2349083

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
G__inference_dropout_20_layer_call_and_return_conditional_losses_2350909

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????**0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????**02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????**02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
e
,__inference_dropout_12_layer_call_fn_2350865

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_23488732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**022
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
H
,__inference_dropout_12_layer_call_fn_2350870

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_23488782
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
f
J__inference_activation_17_layer_call_and_return_conditional_losses_2350996

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????((02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????((0:[ W
3
_output_shapes!
:?????????((0
 
_user_specified_nameinputs
?

?
F__inference_conv3d_13_layer_call_and_return_conditional_losses_2348927

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????**0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
??
?G
#__inference__traced_restore_2352417
file_prefix$
 assignvariableop_conv3d_9_kernel$
 assignvariableop_1_conv3d_9_bias'
#assignvariableop_2_conv3d_12_kernel%
!assignvariableop_3_conv3d_12_bias'
#assignvariableop_4_conv3d_15_kernel%
!assignvariableop_5_conv3d_15_bias'
#assignvariableop_6_conv3d_10_kernel%
!assignvariableop_7_conv3d_10_bias'
#assignvariableop_8_conv3d_13_kernel%
!assignvariableop_9_conv3d_13_bias(
$assignvariableop_10_conv3d_16_kernel&
"assignvariableop_11_conv3d_16_bias(
$assignvariableop_12_conv3d_11_kernel&
"assignvariableop_13_conv3d_11_bias(
$assignvariableop_14_conv3d_14_kernel&
"assignvariableop_15_conv3d_14_bias(
$assignvariableop_16_conv3d_17_kernel&
"assignvariableop_17_conv3d_17_bias&
"assignvariableop_18_dense_6_kernel$
 assignvariableop_19_dense_6_bias&
"assignvariableop_20_dense_8_kernel$
 assignvariableop_21_dense_8_bias'
#assignvariableop_22_dense_10_kernel%
!assignvariableop_23_dense_10_bias&
"assignvariableop_24_dense_7_kernel$
 assignvariableop_25_dense_7_bias&
"assignvariableop_26_dense_9_kernel$
 assignvariableop_27_dense_9_bias'
#assignvariableop_28_dense_11_kernel%
!assignvariableop_29_dense_11_bias!
assignvariableop_30_adam_iter#
assignvariableop_31_adam_beta_1#
assignvariableop_32_adam_beta_2"
assignvariableop_33_adam_decay*
&assignvariableop_34_adam_learning_rate
assignvariableop_35_total
assignvariableop_36_count
assignvariableop_37_total_1
assignvariableop_38_count_1
assignvariableop_39_total_2
assignvariableop_40_count_2
assignvariableop_41_total_3
assignvariableop_42_count_3
assignvariableop_43_total_4
assignvariableop_44_count_4&
"assignvariableop_45_true_positives'
#assignvariableop_46_false_positives(
$assignvariableop_47_true_positives_1'
#assignvariableop_48_false_negatives(
$assignvariableop_49_true_positives_2&
"assignvariableop_50_true_negatives)
%assignvariableop_51_false_positives_1)
%assignvariableop_52_false_negatives_1
assignvariableop_53_total_5
assignvariableop_54_count_5
assignvariableop_55_total_6
assignvariableop_56_count_6(
$assignvariableop_57_true_positives_3)
%assignvariableop_58_false_positives_2(
$assignvariableop_59_true_positives_4)
%assignvariableop_60_false_negatives_2(
$assignvariableop_61_true_positives_5(
$assignvariableop_62_true_negatives_1)
%assignvariableop_63_false_positives_3)
%assignvariableop_64_false_negatives_3
assignvariableop_65_total_7
assignvariableop_66_count_7
assignvariableop_67_total_8
assignvariableop_68_count_8(
$assignvariableop_69_true_positives_6)
%assignvariableop_70_false_positives_4(
$assignvariableop_71_true_positives_7)
%assignvariableop_72_false_negatives_4(
$assignvariableop_73_true_positives_8(
$assignvariableop_74_true_negatives_2)
%assignvariableop_75_false_positives_5)
%assignvariableop_76_false_negatives_5
assignvariableop_77_total_9
assignvariableop_78_count_9.
*assignvariableop_79_adam_conv3d_9_kernel_m,
(assignvariableop_80_adam_conv3d_9_bias_m/
+assignvariableop_81_adam_conv3d_12_kernel_m-
)assignvariableop_82_adam_conv3d_12_bias_m/
+assignvariableop_83_adam_conv3d_15_kernel_m-
)assignvariableop_84_adam_conv3d_15_bias_m/
+assignvariableop_85_adam_conv3d_10_kernel_m-
)assignvariableop_86_adam_conv3d_10_bias_m/
+assignvariableop_87_adam_conv3d_13_kernel_m-
)assignvariableop_88_adam_conv3d_13_bias_m/
+assignvariableop_89_adam_conv3d_16_kernel_m-
)assignvariableop_90_adam_conv3d_16_bias_m/
+assignvariableop_91_adam_conv3d_11_kernel_m-
)assignvariableop_92_adam_conv3d_11_bias_m/
+assignvariableop_93_adam_conv3d_14_kernel_m-
)assignvariableop_94_adam_conv3d_14_bias_m/
+assignvariableop_95_adam_conv3d_17_kernel_m-
)assignvariableop_96_adam_conv3d_17_bias_m-
)assignvariableop_97_adam_dense_6_kernel_m+
'assignvariableop_98_adam_dense_6_bias_m-
)assignvariableop_99_adam_dense_8_kernel_m,
(assignvariableop_100_adam_dense_8_bias_m/
+assignvariableop_101_adam_dense_10_kernel_m-
)assignvariableop_102_adam_dense_10_bias_m.
*assignvariableop_103_adam_dense_7_kernel_m,
(assignvariableop_104_adam_dense_7_bias_m.
*assignvariableop_105_adam_dense_9_kernel_m,
(assignvariableop_106_adam_dense_9_bias_m/
+assignvariableop_107_adam_dense_11_kernel_m-
)assignvariableop_108_adam_dense_11_bias_m/
+assignvariableop_109_adam_conv3d_9_kernel_v-
)assignvariableop_110_adam_conv3d_9_bias_v0
,assignvariableop_111_adam_conv3d_12_kernel_v.
*assignvariableop_112_adam_conv3d_12_bias_v0
,assignvariableop_113_adam_conv3d_15_kernel_v.
*assignvariableop_114_adam_conv3d_15_bias_v0
,assignvariableop_115_adam_conv3d_10_kernel_v.
*assignvariableop_116_adam_conv3d_10_bias_v0
,assignvariableop_117_adam_conv3d_13_kernel_v.
*assignvariableop_118_adam_conv3d_13_bias_v0
,assignvariableop_119_adam_conv3d_16_kernel_v.
*assignvariableop_120_adam_conv3d_16_bias_v0
,assignvariableop_121_adam_conv3d_11_kernel_v.
*assignvariableop_122_adam_conv3d_11_bias_v0
,assignvariableop_123_adam_conv3d_14_kernel_v.
*assignvariableop_124_adam_conv3d_14_bias_v0
,assignvariableop_125_adam_conv3d_17_kernel_v.
*assignvariableop_126_adam_conv3d_17_bias_v.
*assignvariableop_127_adam_dense_6_kernel_v,
(assignvariableop_128_adam_dense_6_bias_v.
*assignvariableop_129_adam_dense_8_kernel_v,
(assignvariableop_130_adam_dense_8_bias_v/
+assignvariableop_131_adam_dense_10_kernel_v-
)assignvariableop_132_adam_dense_10_bias_v.
*assignvariableop_133_adam_dense_7_kernel_v,
(assignvariableop_134_adam_dense_7_bias_v.
*assignvariableop_135_adam_dense_9_kernel_v,
(assignvariableop_136_adam_dense_9_bias_v/
+assignvariableop_137_adam_dense_11_kernel_v-
)assignvariableop_138_adam_dense_11_bias_v
identity_140??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_119?AssignVariableOp_12?AssignVariableOp_120?AssignVariableOp_121?AssignVariableOp_122?AssignVariableOp_123?AssignVariableOp_124?AssignVariableOp_125?AssignVariableOp_126?AssignVariableOp_127?AssignVariableOp_128?AssignVariableOp_129?AssignVariableOp_13?AssignVariableOp_130?AssignVariableOp_131?AssignVariableOp_132?AssignVariableOp_133?AssignVariableOp_134?AssignVariableOp_135?AssignVariableOp_136?AssignVariableOp_137?AssignVariableOp_138?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?K
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?J
value?JB?J?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/6/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/6/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/7/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/7/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/7/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/7/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/10/true_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/10/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/11/true_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/11/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/12/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/12/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/12/false_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/12/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/13/total/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/13/count/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/14/total/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/14/count/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/15/true_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/15/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/16/true_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/16/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/17/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/17/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/17/false_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/17/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/18/total/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/18/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2?	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv3d_9_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv3d_9_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_12_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_12_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv3d_15_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv3d_15_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv3d_10_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv3d_10_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv3d_13_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv3d_13_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv3d_16_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv3d_16_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv3d_11_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv3d_11_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv3d_14_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv3d_14_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv3d_17_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp"assignvariableop_17_conv3d_17_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_6_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_6_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_8_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_8_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp#assignvariableop_22_dense_10_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp!assignvariableop_23_dense_10_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_7_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_7_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp"assignvariableop_26_dense_9_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp assignvariableop_27_dense_9_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp#assignvariableop_28_dense_11_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp!assignvariableop_29_dense_11_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_iterIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_beta_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_beta_2Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_decayIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_learning_rateIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpassignvariableop_35_totalIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpassignvariableop_36_countIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpassignvariableop_37_total_1Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_count_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_2Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_2Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_3Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_3Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpassignvariableop_43_total_4Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpassignvariableop_44_count_4Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp"assignvariableop_45_true_positivesIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp#assignvariableop_46_false_positivesIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp$assignvariableop_47_true_positives_1Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp#assignvariableop_48_false_negativesIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp$assignvariableop_49_true_positives_2Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp"assignvariableop_50_true_negativesIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp%assignvariableop_51_false_positives_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp%assignvariableop_52_false_negatives_1Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOpassignvariableop_53_total_5Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOpassignvariableop_54_count_5Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOpassignvariableop_55_total_6Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOpassignvariableop_56_count_6Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp$assignvariableop_57_true_positives_3Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp%assignvariableop_58_false_positives_2Identity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp$assignvariableop_59_true_positives_4Identity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp%assignvariableop_60_false_negatives_2Identity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp$assignvariableop_61_true_positives_5Identity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp$assignvariableop_62_true_negatives_1Identity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp%assignvariableop_63_false_positives_3Identity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp%assignvariableop_64_false_negatives_3Identity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOpassignvariableop_65_total_7Identity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOpassignvariableop_66_count_7Identity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOpassignvariableop_67_total_8Identity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOpassignvariableop_68_count_8Identity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp$assignvariableop_69_true_positives_6Identity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp%assignvariableop_70_false_positives_4Identity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp$assignvariableop_71_true_positives_7Identity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp%assignvariableop_72_false_negatives_4Identity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp$assignvariableop_73_true_positives_8Identity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp$assignvariableop_74_true_negatives_2Identity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp%assignvariableop_75_false_positives_5Identity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp%assignvariableop_76_false_negatives_5Identity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOpassignvariableop_77_total_9Identity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOpassignvariableop_78_count_9Identity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp*assignvariableop_79_adam_conv3d_9_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp(assignvariableop_80_adam_conv3d_9_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp+assignvariableop_81_adam_conv3d_12_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp)assignvariableop_82_adam_conv3d_12_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp+assignvariableop_83_adam_conv3d_15_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp)assignvariableop_84_adam_conv3d_15_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOp+assignvariableop_85_adam_conv3d_10_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOp)assignvariableop_86_adam_conv3d_10_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp+assignvariableop_87_adam_conv3d_13_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp)assignvariableop_88_adam_conv3d_13_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOp+assignvariableop_89_adam_conv3d_16_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOp)assignvariableop_90_adam_conv3d_16_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp+assignvariableop_91_adam_conv3d_11_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp)assignvariableop_92_adam_conv3d_11_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOp+assignvariableop_93_adam_conv3d_14_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOp)assignvariableop_94_adam_conv3d_14_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp+assignvariableop_95_adam_conv3d_17_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp)assignvariableop_96_adam_conv3d_17_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOp)assignvariableop_97_adam_dense_6_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOp'assignvariableop_98_adam_dense_6_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOp)assignvariableop_99_adam_dense_8_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOp(assignvariableop_100_adam_dense_8_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOp+assignvariableop_101_adam_dense_10_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOp)assignvariableop_102_adam_dense_10_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp*assignvariableop_103_adam_dense_7_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp(assignvariableop_104_adam_dense_7_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105?
AssignVariableOp_105AssignVariableOp*assignvariableop_105_adam_dense_9_kernel_mIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106?
AssignVariableOp_106AssignVariableOp(assignvariableop_106_adam_dense_9_bias_mIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107?
AssignVariableOp_107AssignVariableOp+assignvariableop_107_adam_dense_11_kernel_mIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108?
AssignVariableOp_108AssignVariableOp)assignvariableop_108_adam_dense_11_bias_mIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109?
AssignVariableOp_109AssignVariableOp+assignvariableop_109_adam_conv3d_9_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110?
AssignVariableOp_110AssignVariableOp)assignvariableop_110_adam_conv3d_9_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111?
AssignVariableOp_111AssignVariableOp,assignvariableop_111_adam_conv3d_12_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112?
AssignVariableOp_112AssignVariableOp*assignvariableop_112_adam_conv3d_12_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113?
AssignVariableOp_113AssignVariableOp,assignvariableop_113_adam_conv3d_15_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114?
AssignVariableOp_114AssignVariableOp*assignvariableop_114_adam_conv3d_15_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115?
AssignVariableOp_115AssignVariableOp,assignvariableop_115_adam_conv3d_10_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116?
AssignVariableOp_116AssignVariableOp*assignvariableop_116_adam_conv3d_10_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117?
AssignVariableOp_117AssignVariableOp,assignvariableop_117_adam_conv3d_13_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118?
AssignVariableOp_118AssignVariableOp*assignvariableop_118_adam_conv3d_13_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119?
AssignVariableOp_119AssignVariableOp,assignvariableop_119_adam_conv3d_16_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120?
AssignVariableOp_120AssignVariableOp*assignvariableop_120_adam_conv3d_16_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121?
AssignVariableOp_121AssignVariableOp,assignvariableop_121_adam_conv3d_11_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_121q
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:2
Identity_122?
AssignVariableOp_122AssignVariableOp*assignvariableop_122_adam_conv3d_11_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_122q
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:2
Identity_123?
AssignVariableOp_123AssignVariableOp,assignvariableop_123_adam_conv3d_14_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_123q
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:2
Identity_124?
AssignVariableOp_124AssignVariableOp*assignvariableop_124_adam_conv3d_14_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_124q
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:2
Identity_125?
AssignVariableOp_125AssignVariableOp,assignvariableop_125_adam_conv3d_17_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_125q
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:2
Identity_126?
AssignVariableOp_126AssignVariableOp*assignvariableop_126_adam_conv3d_17_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_126q
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:2
Identity_127?
AssignVariableOp_127AssignVariableOp*assignvariableop_127_adam_dense_6_kernel_vIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_127q
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:2
Identity_128?
AssignVariableOp_128AssignVariableOp(assignvariableop_128_adam_dense_6_bias_vIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_128q
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:2
Identity_129?
AssignVariableOp_129AssignVariableOp*assignvariableop_129_adam_dense_8_kernel_vIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_129q
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:2
Identity_130?
AssignVariableOp_130AssignVariableOp(assignvariableop_130_adam_dense_8_bias_vIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_130q
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:2
Identity_131?
AssignVariableOp_131AssignVariableOp+assignvariableop_131_adam_dense_10_kernel_vIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_131q
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:2
Identity_132?
AssignVariableOp_132AssignVariableOp)assignvariableop_132_adam_dense_10_bias_vIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_132q
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:2
Identity_133?
AssignVariableOp_133AssignVariableOp*assignvariableop_133_adam_dense_7_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_133q
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:2
Identity_134?
AssignVariableOp_134AssignVariableOp(assignvariableop_134_adam_dense_7_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_134q
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:2
Identity_135?
AssignVariableOp_135AssignVariableOp*assignvariableop_135_adam_dense_9_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_135q
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:2
Identity_136?
AssignVariableOp_136AssignVariableOp(assignvariableop_136_adam_dense_9_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_136q
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:2
Identity_137?
AssignVariableOp_137AssignVariableOp+assignvariableop_137_adam_dense_11_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_137q
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:2
Identity_138?
AssignVariableOp_138AssignVariableOp)assignvariableop_138_adam_dense_11_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_139Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_139?
Identity_140IdentityIdentity_139:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_140"%
identity_140Identity_140:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
G
+__inference_flatten_5_layer_call_fn_2351293

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_23493172
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_21_layer_call_and_return_conditional_losses_2351082

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
G__inference_dropout_21_layer_call_and_return_conditional_losses_2349023

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2348599

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_activation_15_layer_call_and_return_conditional_losses_2351355

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv3d_10_layer_call_fn_2350943

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_23489532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????**0::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?

?
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2349111

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2348623

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2351140

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
o
S__inference_pleural_regular_output_layer_call_and_return_conditional_losses_2351533

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
K
/__inference_activation_19_layer_call_fn_2351370

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_19_layer_call_and_return_conditional_losses_23494492
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_19_layer_call_and_return_conditional_losses_2349517

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_11_layer_call_and_return_conditional_losses_2351509

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_16_layer_call_fn_2350897

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_23488482
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
f
J__inference_activation_14_layer_call_and_return_conditional_losses_2351154

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_22_layer_call_and_return_conditional_losses_2349238

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_16_layer_call_and_return_conditional_losses_2350887

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????**02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????**02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_2349058

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
J__inference_activation_13_layer_call_and_return_conditional_losses_2350986

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????((02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????((0:[ W
3
_output_shapes!
:?????????((0
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_11_layer_call_fn_2348653

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_11_layer_call_and_return_conditional_losses_23486472
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
n
R__inference_covid_severity_output_layer_call_and_return_conditional_losses_2349669

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
~
)__inference_dense_6_layer_call_fn_2351312

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_23494152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_9_layer_call_and_return_conditional_losses_2349596

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_15_layer_call_and_return_conditional_losses_2351397

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
~
)__inference_dense_7_layer_call_fn_2351480

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_23496222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_activation_17_layer_call_and_return_conditional_losses_2348987

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????((02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????((0:[ W
3
_output_shapes!
:?????????((0
 
_user_specified_nameinputs
?	
?
D__inference_dense_7_layer_call_and_return_conditional_losses_2351471

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
m
Q__inference_consolidation_output_layer_call_and_return_conditional_losses_2349643

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_2349331

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_23_layer_call_and_return_conditional_losses_2351451

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_18_layer_call_fn_2351233

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_23492682
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
??
?6
 __inference__traced_save_2351990
file_prefix.
*savev2_conv3d_9_kernel_read_readvariableop,
(savev2_conv3d_9_bias_read_readvariableop/
+savev2_conv3d_12_kernel_read_readvariableop-
)savev2_conv3d_12_bias_read_readvariableop/
+savev2_conv3d_15_kernel_read_readvariableop-
)savev2_conv3d_15_bias_read_readvariableop/
+savev2_conv3d_10_kernel_read_readvariableop-
)savev2_conv3d_10_bias_read_readvariableop/
+savev2_conv3d_13_kernel_read_readvariableop-
)savev2_conv3d_13_bias_read_readvariableop/
+savev2_conv3d_16_kernel_read_readvariableop-
)savev2_conv3d_16_bias_read_readvariableop/
+savev2_conv3d_11_kernel_read_readvariableop-
)savev2_conv3d_11_bias_read_readvariableop/
+savev2_conv3d_14_kernel_read_readvariableop-
)savev2_conv3d_14_bias_read_readvariableop/
+savev2_conv3d_17_kernel_read_readvariableop-
)savev2_conv3d_17_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_negatives_read_readvariableop/
+savev2_true_positives_2_read_readvariableop-
)savev2_true_negatives_read_readvariableop0
,savev2_false_positives_1_read_readvariableop0
,savev2_false_negatives_1_read_readvariableop&
"savev2_total_5_read_readvariableop&
"savev2_count_5_read_readvariableop&
"savev2_total_6_read_readvariableop&
"savev2_count_6_read_readvariableop/
+savev2_true_positives_3_read_readvariableop0
,savev2_false_positives_2_read_readvariableop/
+savev2_true_positives_4_read_readvariableop0
,savev2_false_negatives_2_read_readvariableop/
+savev2_true_positives_5_read_readvariableop/
+savev2_true_negatives_1_read_readvariableop0
,savev2_false_positives_3_read_readvariableop0
,savev2_false_negatives_3_read_readvariableop&
"savev2_total_7_read_readvariableop&
"savev2_count_7_read_readvariableop&
"savev2_total_8_read_readvariableop&
"savev2_count_8_read_readvariableop/
+savev2_true_positives_6_read_readvariableop0
,savev2_false_positives_4_read_readvariableop/
+savev2_true_positives_7_read_readvariableop0
,savev2_false_negatives_4_read_readvariableop/
+savev2_true_positives_8_read_readvariableop/
+savev2_true_negatives_2_read_readvariableop0
,savev2_false_positives_5_read_readvariableop0
,savev2_false_negatives_5_read_readvariableop&
"savev2_total_9_read_readvariableop&
"savev2_count_9_read_readvariableop5
1savev2_adam_conv3d_9_kernel_m_read_readvariableop3
/savev2_adam_conv3d_9_bias_m_read_readvariableop6
2savev2_adam_conv3d_12_kernel_m_read_readvariableop4
0savev2_adam_conv3d_12_bias_m_read_readvariableop6
2savev2_adam_conv3d_15_kernel_m_read_readvariableop4
0savev2_adam_conv3d_15_bias_m_read_readvariableop6
2savev2_adam_conv3d_10_kernel_m_read_readvariableop4
0savev2_adam_conv3d_10_bias_m_read_readvariableop6
2savev2_adam_conv3d_13_kernel_m_read_readvariableop4
0savev2_adam_conv3d_13_bias_m_read_readvariableop6
2savev2_adam_conv3d_16_kernel_m_read_readvariableop4
0savev2_adam_conv3d_16_bias_m_read_readvariableop6
2savev2_adam_conv3d_11_kernel_m_read_readvariableop4
0savev2_adam_conv3d_11_bias_m_read_readvariableop6
2savev2_adam_conv3d_14_kernel_m_read_readvariableop4
0savev2_adam_conv3d_14_bias_m_read_readvariableop6
2savev2_adam_conv3d_17_kernel_m_read_readvariableop4
0savev2_adam_conv3d_17_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop5
1savev2_adam_conv3d_9_kernel_v_read_readvariableop3
/savev2_adam_conv3d_9_bias_v_read_readvariableop6
2savev2_adam_conv3d_12_kernel_v_read_readvariableop4
0savev2_adam_conv3d_12_bias_v_read_readvariableop6
2savev2_adam_conv3d_15_kernel_v_read_readvariableop4
0savev2_adam_conv3d_15_bias_v_read_readvariableop6
2savev2_adam_conv3d_10_kernel_v_read_readvariableop4
0savev2_adam_conv3d_10_bias_v_read_readvariableop6
2savev2_adam_conv3d_13_kernel_v_read_readvariableop4
0savev2_adam_conv3d_13_bias_v_read_readvariableop6
2savev2_adam_conv3d_16_kernel_v_read_readvariableop4
0savev2_adam_conv3d_16_bias_v_read_readvariableop6
2savev2_adam_conv3d_11_kernel_v_read_readvariableop4
0savev2_adam_conv3d_11_bias_v_read_readvariableop6
2savev2_adam_conv3d_14_kernel_v_read_readvariableop4
0savev2_adam_conv3d_14_bias_v_read_readvariableop6
2savev2_adam_conv3d_17_kernel_v_read_readvariableop4
0savev2_adam_conv3d_17_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?K
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?J
value?JB?J?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/6/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/6/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/7/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/7/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/7/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/7/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/10/true_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/10/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/11/true_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/11/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/12/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/12/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/12/false_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/12/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/13/total/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/13/count/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/14/total/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/14/count/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/15/true_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/15/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/16/true_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/16/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/17/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/17/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/17/false_positives/.ATTRIBUTES/VARIABLE_VALUEB?keras_api/metrics/17/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/18/total/.ATTRIBUTES/VARIABLE_VALUEB5keras_api/metrics/18/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?3
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv3d_9_kernel_read_readvariableop(savev2_conv3d_9_bias_read_readvariableop+savev2_conv3d_12_kernel_read_readvariableop)savev2_conv3d_12_bias_read_readvariableop+savev2_conv3d_15_kernel_read_readvariableop)savev2_conv3d_15_bias_read_readvariableop+savev2_conv3d_10_kernel_read_readvariableop)savev2_conv3d_10_bias_read_readvariableop+savev2_conv3d_13_kernel_read_readvariableop)savev2_conv3d_13_bias_read_readvariableop+savev2_conv3d_16_kernel_read_readvariableop)savev2_conv3d_16_bias_read_readvariableop+savev2_conv3d_11_kernel_read_readvariableop)savev2_conv3d_11_bias_read_readvariableop+savev2_conv3d_14_kernel_read_readvariableop)savev2_conv3d_14_bias_read_readvariableop+savev2_conv3d_17_kernel_read_readvariableop)savev2_conv3d_17_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop+savev2_true_positives_2_read_readvariableop)savev2_true_negatives_read_readvariableop,savev2_false_positives_1_read_readvariableop,savev2_false_negatives_1_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop+savev2_true_positives_3_read_readvariableop,savev2_false_positives_2_read_readvariableop+savev2_true_positives_4_read_readvariableop,savev2_false_negatives_2_read_readvariableop+savev2_true_positives_5_read_readvariableop+savev2_true_negatives_1_read_readvariableop,savev2_false_positives_3_read_readvariableop,savev2_false_negatives_3_read_readvariableop"savev2_total_7_read_readvariableop"savev2_count_7_read_readvariableop"savev2_total_8_read_readvariableop"savev2_count_8_read_readvariableop+savev2_true_positives_6_read_readvariableop,savev2_false_positives_4_read_readvariableop+savev2_true_positives_7_read_readvariableop,savev2_false_negatives_4_read_readvariableop+savev2_true_positives_8_read_readvariableop+savev2_true_negatives_2_read_readvariableop,savev2_false_positives_5_read_readvariableop,savev2_false_negatives_5_read_readvariableop"savev2_total_9_read_readvariableop"savev2_count_9_read_readvariableop1savev2_adam_conv3d_9_kernel_m_read_readvariableop/savev2_adam_conv3d_9_bias_m_read_readvariableop2savev2_adam_conv3d_12_kernel_m_read_readvariableop0savev2_adam_conv3d_12_bias_m_read_readvariableop2savev2_adam_conv3d_15_kernel_m_read_readvariableop0savev2_adam_conv3d_15_bias_m_read_readvariableop2savev2_adam_conv3d_10_kernel_m_read_readvariableop0savev2_adam_conv3d_10_bias_m_read_readvariableop2savev2_adam_conv3d_13_kernel_m_read_readvariableop0savev2_adam_conv3d_13_bias_m_read_readvariableop2savev2_adam_conv3d_16_kernel_m_read_readvariableop0savev2_adam_conv3d_16_bias_m_read_readvariableop2savev2_adam_conv3d_11_kernel_m_read_readvariableop0savev2_adam_conv3d_11_bias_m_read_readvariableop2savev2_adam_conv3d_14_kernel_m_read_readvariableop0savev2_adam_conv3d_14_bias_m_read_readvariableop2savev2_adam_conv3d_17_kernel_m_read_readvariableop0savev2_adam_conv3d_17_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop1savev2_adam_conv3d_9_kernel_v_read_readvariableop/savev2_adam_conv3d_9_bias_v_read_readvariableop2savev2_adam_conv3d_12_kernel_v_read_readvariableop0savev2_adam_conv3d_12_bias_v_read_readvariableop2savev2_adam_conv3d_15_kernel_v_read_readvariableop0savev2_adam_conv3d_15_bias_v_read_readvariableop2savev2_adam_conv3d_10_kernel_v_read_readvariableop0savev2_adam_conv3d_10_bias_v_read_readvariableop2savev2_adam_conv3d_13_kernel_v_read_readvariableop0savev2_adam_conv3d_13_bias_v_read_readvariableop2savev2_adam_conv3d_16_kernel_v_read_readvariableop0savev2_adam_conv3d_16_bias_v_read_readvariableop2savev2_adam_conv3d_11_kernel_v_read_readvariableop0savev2_adam_conv3d_11_bias_v_read_readvariableop2savev2_adam_conv3d_14_kernel_v_read_readvariableop0savev2_adam_conv3d_14_bias_v_read_readvariableop2savev2_adam_conv3d_17_kernel_v_read_readvariableop0savev2_adam_conv3d_17_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes?
?2?	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?

_input_shapes?

?
: :0:0:0:0:0:0:00:0:00:0:00:0:00:0:00:0:00:0:
??:?:
??:?:
??:?:	?::	?::	?:: : : : : : : : : : : : : : : :::::?:?:?:?: : : : :::::?:?:?:?: : : : :::::?:?:?:?: : :0:0:0:0:0:0:00:0:00:0:00:0:00:0:00:0:00:0:
??:?:
??:?:
??:?:	?::	?::	?::0:0:0:0:0:0:00:0:00:0:00:0:00:0:00:0:00:0:
??:?:
??:?:
??:?:	?::	?::	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
:0: 

_output_shapes
:0:0,
*
_output_shapes
:0: 

_output_shapes
:0:0,
*
_output_shapes
:0: 

_output_shapes
:0:0,
*
_output_shapes
:00: 

_output_shapes
:0:0	,
*
_output_shapes
:00: 


_output_shapes
:0:0,
*
_output_shapes
:00: 

_output_shapes
:0:0,
*
_output_shapes
:00: 

_output_shapes
:0:0,
*
_output_shapes
:00: 

_output_shapes
:0:0,
*
_output_shapes
:00: 

_output_shapes
:0:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: : .

_output_shapes
:: /

_output_shapes
:: 0

_output_shapes
:: 1

_output_shapes
::!2

_output_shapes	
:?:!3

_output_shapes	
:?:!4

_output_shapes	
:?:!5

_output_shapes	
:?:6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: : :

_output_shapes
:: ;

_output_shapes
:: <

_output_shapes
:: =

_output_shapes
::!>

_output_shapes	
:?:!?

_output_shapes	
:?:!@

_output_shapes	
:?:!A

_output_shapes	
:?:B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: : F

_output_shapes
:: G

_output_shapes
:: H

_output_shapes
:: I

_output_shapes
::!J

_output_shapes	
:?:!K

_output_shapes	
:?:!L

_output_shapes	
:?:!M

_output_shapes	
:?:N

_output_shapes
: :O

_output_shapes
: :0P,
*
_output_shapes
:0: Q

_output_shapes
:0:0R,
*
_output_shapes
:0: S

_output_shapes
:0:0T,
*
_output_shapes
:0: U

_output_shapes
:0:0V,
*
_output_shapes
:00: W

_output_shapes
:0:0X,
*
_output_shapes
:00: Y

_output_shapes
:0:0Z,
*
_output_shapes
:00: [

_output_shapes
:0:0\,
*
_output_shapes
:00: ]

_output_shapes
:0:0^,
*
_output_shapes
:00: _

_output_shapes
:0:0`,
*
_output_shapes
:00: a

_output_shapes
:0:&b"
 
_output_shapes
:
??:!c

_output_shapes	
:?:&d"
 
_output_shapes
:
??:!e

_output_shapes	
:?:&f"
 
_output_shapes
:
??:!g

_output_shapes	
:?:%h!

_output_shapes
:	?: i

_output_shapes
::%j!

_output_shapes
:	?: k

_output_shapes
::%l!

_output_shapes
:	?: m

_output_shapes
::0n,
*
_output_shapes
:0: o

_output_shapes
:0:0p,
*
_output_shapes
:0: q

_output_shapes
:0:0r,
*
_output_shapes
:0: s

_output_shapes
:0:0t,
*
_output_shapes
:00: u

_output_shapes
:0:0v,
*
_output_shapes
:00: w

_output_shapes
:0:0x,
*
_output_shapes
:00: y

_output_shapes
:0:0z,
*
_output_shapes
:00: {

_output_shapes
:0:0|,
*
_output_shapes
:00: }

_output_shapes
:0:0~,
*
_output_shapes
:00: 

_output_shapes
:0:'?"
 
_output_shapes
:
??:"?

_output_shapes	
:?:'?"
 
_output_shapes
:
??:"?

_output_shapes	
:?:'?"
 
_output_shapes
:
??:"?

_output_shapes	
:?:&?!

_output_shapes
:	?:!?

_output_shapes
::&?!

_output_shapes
:	?:!?

_output_shapes
::&?!

_output_shapes
:	?:!?

_output_shapes
::?

_output_shapes
: 
?
f
G__inference_dropout_21_layer_call_and_return_conditional_losses_2351077

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
K
/__inference_activation_13_layer_call_fn_2350991

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_23490002
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????((0:[ W
3
_output_shapes!
:?????????((0
 
_user_specified_nameinputs
?

?
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2350972

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????**0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?

?
F__inference_conv3d_10_layer_call_and_return_conditional_losses_2350934

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:00*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????**0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_12_layer_call_fn_2348593

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_23485872
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_14_layer_call_and_return_conditional_losses_2349298

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_19_layer_call_and_return_conditional_losses_2351424

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv3d_12_layer_call_fn_2350794

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_12_layer_call_and_return_conditional_losses_23487172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_15_layer_call_fn_2348605

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_23485992
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_2351266

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
??
?
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2350618

inputs,
(conv3d_15_conv3d_readvariableop_resource-
)conv3d_15_biasadd_readvariableop_resource,
(conv3d_12_conv3d_readvariableop_resource-
)conv3d_12_biasadd_readvariableop_resource+
'conv3d_9_conv3d_readvariableop_resource,
(conv3d_9_biasadd_readvariableop_resource,
(conv3d_16_conv3d_readvariableop_resource-
)conv3d_16_biasadd_readvariableop_resource,
(conv3d_13_conv3d_readvariableop_resource-
)conv3d_13_biasadd_readvariableop_resource,
(conv3d_10_conv3d_readvariableop_resource-
)conv3d_10_biasadd_readvariableop_resource,
(conv3d_17_conv3d_readvariableop_resource-
)conv3d_17_biasadd_readvariableop_resource,
(conv3d_14_conv3d_readvariableop_resource-
)conv3d_14_biasadd_readvariableop_resource,
(conv3d_11_conv3d_readvariableop_resource-
)conv3d_11_biasadd_readvariableop_resource+
'dense_10_matmul_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identity

identity_1

identity_2?? conv3d_10/BiasAdd/ReadVariableOp?conv3d_10/Conv3D/ReadVariableOp? conv3d_11/BiasAdd/ReadVariableOp?conv3d_11/Conv3D/ReadVariableOp? conv3d_12/BiasAdd/ReadVariableOp?conv3d_12/Conv3D/ReadVariableOp? conv3d_13/BiasAdd/ReadVariableOp?conv3d_13/Conv3D/ReadVariableOp? conv3d_14/BiasAdd/ReadVariableOp?conv3d_14/Conv3D/ReadVariableOp? conv3d_15/BiasAdd/ReadVariableOp?conv3d_15/Conv3D/ReadVariableOp? conv3d_16/BiasAdd/ReadVariableOp?conv3d_16/Conv3D/ReadVariableOp? conv3d_17/BiasAdd/ReadVariableOp?conv3d_17/Conv3D/ReadVariableOp?conv3d_9/BiasAdd/ReadVariableOp?conv3d_9/Conv3D/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?
conv3d_15/Conv3D/ReadVariableOpReadVariableOp(conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:0*
dtype02!
conv3d_15/Conv3D/ReadVariableOp?
conv3d_15/Conv3DConv3Dinputs'conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
conv3d_15/Conv3D?
 conv3d_15/BiasAdd/ReadVariableOpReadVariableOp)conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_15/BiasAdd/ReadVariableOp?
conv3d_15/BiasAddBiasAddconv3d_15/Conv3D:output:0(conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02
conv3d_15/BiasAdd?
conv3d_12/Conv3D/ReadVariableOpReadVariableOp(conv3d_12_conv3d_readvariableop_resource**
_output_shapes
:0*
dtype02!
conv3d_12/Conv3D/ReadVariableOp?
conv3d_12/Conv3DConv3Dinputs'conv3d_12/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
conv3d_12/Conv3D?
 conv3d_12/BiasAdd/ReadVariableOpReadVariableOp)conv3d_12_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_12/BiasAdd/ReadVariableOp?
conv3d_12/BiasAddBiasAddconv3d_12/Conv3D:output:0(conv3d_12/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02
conv3d_12/BiasAdd?
conv3d_9/Conv3D/ReadVariableOpReadVariableOp'conv3d_9_conv3d_readvariableop_resource**
_output_shapes
:0*
dtype02 
conv3d_9/Conv3D/ReadVariableOp?
conv3d_9/Conv3DConv3Dinputs&conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
conv3d_9/Conv3D?
conv3d_9/BiasAdd/ReadVariableOpReadVariableOp(conv3d_9_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02!
conv3d_9/BiasAdd/ReadVariableOp?
conv3d_9/BiasAddBiasAddconv3d_9/Conv3D:output:0'conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02
conv3d_9/BiasAdd?
activation_20/ReluReluconv3d_15/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????~~02
activation_20/Relu?
activation_16/ReluReluconv3d_12/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????~~02
activation_16/Relu?
activation_12/ReluReluconv3d_9/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????~~02
activation_12/Relu?
max_pooling3d_15/MaxPool3D	MaxPool3D activation_20/Relu:activations:0*
T0*3
_output_shapes!
:?????????**0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_15/MaxPool3D?
max_pooling3d_12/MaxPool3D	MaxPool3D activation_16/Relu:activations:0*
T0*3
_output_shapes!
:?????????**0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_12/MaxPool3D?
max_pooling3d_9/MaxPool3D	MaxPool3D activation_12/Relu:activations:0*
T0*3
_output_shapes!
:?????????**0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_9/MaxPool3D?
dropout_20/IdentityIdentity#max_pooling3d_15/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????**02
dropout_20/Identity?
dropout_16/IdentityIdentity#max_pooling3d_12/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????**02
dropout_16/Identity?
dropout_12/IdentityIdentity"max_pooling3d_9/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????**02
dropout_12/Identity?
conv3d_16/Conv3D/ReadVariableOpReadVariableOp(conv3d_16_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_16/Conv3D/ReadVariableOp?
conv3d_16/Conv3DConv3Ddropout_20/Identity:output:0'conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
conv3d_16/Conv3D?
 conv3d_16/BiasAdd/ReadVariableOpReadVariableOp)conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_16/BiasAdd/ReadVariableOp?
conv3d_16/BiasAddBiasAddconv3d_16/Conv3D:output:0(conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02
conv3d_16/BiasAdd?
conv3d_13/Conv3D/ReadVariableOpReadVariableOp(conv3d_13_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_13/Conv3D/ReadVariableOp?
conv3d_13/Conv3DConv3Ddropout_16/Identity:output:0'conv3d_13/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
conv3d_13/Conv3D?
 conv3d_13/BiasAdd/ReadVariableOpReadVariableOp)conv3d_13_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_13/BiasAdd/ReadVariableOp?
conv3d_13/BiasAddBiasAddconv3d_13/Conv3D:output:0(conv3d_13/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02
conv3d_13/BiasAdd?
conv3d_10/Conv3D/ReadVariableOpReadVariableOp(conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_10/Conv3D/ReadVariableOp?
conv3d_10/Conv3DConv3Ddropout_12/Identity:output:0'conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((0*
paddingVALID*
strides	
2
conv3d_10/Conv3D?
 conv3d_10/BiasAdd/ReadVariableOpReadVariableOp)conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_10/BiasAdd/ReadVariableOp?
conv3d_10/BiasAddBiasAddconv3d_10/Conv3D:output:0(conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????((02
conv3d_10/BiasAdd?
activation_21/ReluReluconv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????((02
activation_21/Relu?
activation_17/ReluReluconv3d_13/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????((02
activation_17/Relu?
activation_13/ReluReluconv3d_10/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????((02
activation_13/Relu?
max_pooling3d_16/MaxPool3D	MaxPool3D activation_21/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_16/MaxPool3D?
max_pooling3d_13/MaxPool3D	MaxPool3D activation_17/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_13/MaxPool3D?
max_pooling3d_10/MaxPool3D	MaxPool3D activation_13/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_10/MaxPool3D?
dropout_21/IdentityIdentity#max_pooling3d_16/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02
dropout_21/Identity?
dropout_17/IdentityIdentity#max_pooling3d_13/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02
dropout_17/Identity?
dropout_13/IdentityIdentity#max_pooling3d_10/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02
dropout_13/Identity?
conv3d_17/Conv3D/ReadVariableOpReadVariableOp(conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_17/Conv3D/ReadVariableOp?
conv3d_17/Conv3DConv3Ddropout_21/Identity:output:0'conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
conv3d_17/Conv3D?
 conv3d_17/BiasAdd/ReadVariableOpReadVariableOp)conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_17/BiasAdd/ReadVariableOp?
conv3d_17/BiasAddBiasAddconv3d_17/Conv3D:output:0(conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02
conv3d_17/BiasAdd?
conv3d_14/Conv3D/ReadVariableOpReadVariableOp(conv3d_14_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_14/Conv3D/ReadVariableOp?
conv3d_14/Conv3DConv3Ddropout_17/Identity:output:0'conv3d_14/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
conv3d_14/Conv3D?
 conv3d_14/BiasAdd/ReadVariableOpReadVariableOp)conv3d_14_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_14/BiasAdd/ReadVariableOp?
conv3d_14/BiasAddBiasAddconv3d_14/Conv3D:output:0(conv3d_14/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02
conv3d_14/BiasAdd?
conv3d_11/Conv3D/ReadVariableOpReadVariableOp(conv3d_11_conv3d_readvariableop_resource**
_output_shapes
:00*
dtype02!
conv3d_11/Conv3D/ReadVariableOp?
conv3d_11/Conv3DConv3Ddropout_13/Identity:output:0'conv3d_11/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????0*
paddingVALID*
strides	
2
conv3d_11/Conv3D?
 conv3d_11/BiasAdd/ReadVariableOpReadVariableOp)conv3d_11_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv3d_11/BiasAdd/ReadVariableOp?
conv3d_11/BiasAddBiasAddconv3d_11/Conv3D:output:0(conv3d_11/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????02
conv3d_11/BiasAdd?
activation_22/ReluReluconv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????02
activation_22/Relu?
activation_18/ReluReluconv3d_14/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????02
activation_18/Relu?
activation_14/ReluReluconv3d_11/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????02
activation_14/Relu?
max_pooling3d_17/MaxPool3D	MaxPool3D activation_22/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_17/MaxPool3D?
max_pooling3d_14/MaxPool3D	MaxPool3D activation_18/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_14/MaxPool3D?
max_pooling3d_11/MaxPool3D	MaxPool3D activation_14/Relu:activations:0*
T0*3
_output_shapes!
:?????????0*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_11/MaxPool3D?
dropout_22/IdentityIdentity#max_pooling3d_17/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02
dropout_22/Identity?
dropout_18/IdentityIdentity#max_pooling3d_14/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02
dropout_18/Identity?
dropout_14/IdentityIdentity#max_pooling3d_11/MaxPool3D:output:0*
T0*3
_output_shapes!
:?????????02
dropout_14/Identitys
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_5/Const?
flatten_5/ReshapeReshapedropout_22/Identity:output:0flatten_5/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_5/Reshapes
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_4/Const?
flatten_4/ReshapeReshapedropout_18/Identity:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_4/Reshapes
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_3/Const?
flatten_3/ReshapeReshapedropout_14/Identity:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_3/Reshape?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMulflatten_5/Reshape:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_10/BiasAdd?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/BiasAdd?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/BiasAdd~
activation_23/ReluReludense_10/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_23/Relu}
activation_19/ReluReludense_8/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_19/Relu}
activation_15/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_15/Relu?
dropout_23/IdentityIdentity activation_23/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_23/Identity?
dropout_19/IdentityIdentity activation_19/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_19/Identity?
dropout_15/IdentityIdentity activation_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_15/Identity?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMuldropout_23/Identity:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/BiasAdd?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMuldropout_19/Identity:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAdd?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMuldropout_15/Identity:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAdd?
consolidation_output/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
consolidation_output/Sigmoid?
pleural_regular_output/SigmoidSigmoiddense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
pleural_regular_output/Sigmoid?
covid_severity_output/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
covid_severity_output/Softmax?
IdentityIdentity'covid_severity_output/Softmax:softmax:0!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp!^conv3d_11/BiasAdd/ReadVariableOp ^conv3d_11/Conv3D/ReadVariableOp!^conv3d_12/BiasAdd/ReadVariableOp ^conv3d_12/Conv3D/ReadVariableOp!^conv3d_13/BiasAdd/ReadVariableOp ^conv3d_13/Conv3D/ReadVariableOp!^conv3d_14/BiasAdd/ReadVariableOp ^conv3d_14/Conv3D/ReadVariableOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity"pleural_regular_output/Sigmoid:y:0!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp!^conv3d_11/BiasAdd/ReadVariableOp ^conv3d_11/Conv3D/ReadVariableOp!^conv3d_12/BiasAdd/ReadVariableOp ^conv3d_12/Conv3D/ReadVariableOp!^conv3d_13/BiasAdd/ReadVariableOp ^conv3d_13/Conv3D/ReadVariableOp!^conv3d_14/BiasAdd/ReadVariableOp ^conv3d_14/Conv3D/ReadVariableOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity consolidation_output/Sigmoid:y:0!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp!^conv3d_11/BiasAdd/ReadVariableOp ^conv3d_11/Conv3D/ReadVariableOp!^conv3d_12/BiasAdd/ReadVariableOp ^conv3d_12/Conv3D/ReadVariableOp!^conv3d_13/BiasAdd/ReadVariableOp ^conv3d_13/Conv3D/ReadVariableOp!^conv3d_14/BiasAdd/ReadVariableOp ^conv3d_14/Conv3D/ReadVariableOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2D
 conv3d_10/BiasAdd/ReadVariableOp conv3d_10/BiasAdd/ReadVariableOp2B
conv3d_10/Conv3D/ReadVariableOpconv3d_10/Conv3D/ReadVariableOp2D
 conv3d_11/BiasAdd/ReadVariableOp conv3d_11/BiasAdd/ReadVariableOp2B
conv3d_11/Conv3D/ReadVariableOpconv3d_11/Conv3D/ReadVariableOp2D
 conv3d_12/BiasAdd/ReadVariableOp conv3d_12/BiasAdd/ReadVariableOp2B
conv3d_12/Conv3D/ReadVariableOpconv3d_12/Conv3D/ReadVariableOp2D
 conv3d_13/BiasAdd/ReadVariableOp conv3d_13/BiasAdd/ReadVariableOp2B
conv3d_13/Conv3D/ReadVariableOpconv3d_13/Conv3D/ReadVariableOp2D
 conv3d_14/BiasAdd/ReadVariableOp conv3d_14/BiasAdd/ReadVariableOp2B
conv3d_14/Conv3D/ReadVariableOpconv3d_14/Conv3D/ReadVariableOp2D
 conv3d_15/BiasAdd/ReadVariableOp conv3d_15/BiasAdd/ReadVariableOp2B
conv3d_15/Conv3D/ReadVariableOpconv3d_15/Conv3D/ReadVariableOp2D
 conv3d_16/BiasAdd/ReadVariableOp conv3d_16/BiasAdd/ReadVariableOp2B
conv3d_16/Conv3D/ReadVariableOpconv3d_16/Conv3D/ReadVariableOp2D
 conv3d_17/BiasAdd/ReadVariableOp conv3d_17/BiasAdd/ReadVariableOp2B
conv3d_17/Conv3D/ReadVariableOpconv3d_17/Conv3D/ReadVariableOp2B
conv3d_9/BiasAdd/ReadVariableOpconv3d_9/BiasAdd/ReadVariableOp2@
conv3d_9/Conv3D/ReadVariableOpconv3d_9/Conv3D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
??
?
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2349680
input_2
conv3d_15_2348702
conv3d_15_2348704
conv3d_12_2348728
conv3d_12_2348730
conv3d_9_2348754
conv3d_9_2348756
conv3d_16_2348912
conv3d_16_2348914
conv3d_13_2348938
conv3d_13_2348940
conv3d_10_2348964
conv3d_10_2348966
conv3d_17_2349122
conv3d_17_2349124
conv3d_14_2349148
conv3d_14_2349150
conv3d_11_2349174
conv3d_11_2349176
dense_10_2349374
dense_10_2349376
dense_8_2349400
dense_8_2349402
dense_6_2349426
dense_6_2349428
dense_11_2349581
dense_11_2349583
dense_9_2349607
dense_9_2349609
dense_7_2349633
dense_7_2349635
identity

identity_1

identity_2??!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall?!conv3d_12/StatefulPartitionedCall?!conv3d_13/StatefulPartitionedCall?!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall?!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?"dropout_12/StatefulPartitionedCall?"dropout_13/StatefulPartitionedCall?"dropout_14/StatefulPartitionedCall?"dropout_15/StatefulPartitionedCall?"dropout_16/StatefulPartitionedCall?"dropout_17/StatefulPartitionedCall?"dropout_18/StatefulPartitionedCall?"dropout_19/StatefulPartitionedCall?"dropout_20/StatefulPartitionedCall?"dropout_21/StatefulPartitionedCall?"dropout_22/StatefulPartitionedCall?"dropout_23/StatefulPartitionedCall?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCallinput_2conv3d_15_2348702conv3d_15_2348704*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_15_layer_call_and_return_conditional_losses_23486912#
!conv3d_15/StatefulPartitionedCall?
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCallinput_2conv3d_12_2348728conv3d_12_2348730*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_12_layer_call_and_return_conditional_losses_23487172#
!conv3d_12/StatefulPartitionedCall?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCallinput_2conv3d_9_2348754conv3d_9_2348756*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_23487432"
 conv3d_9/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_23487642
activation_20/PartitionedCall?
activation_16/PartitionedCallPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_23487772
activation_16/PartitionedCall?
activation_12/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_23487902
activation_12/PartitionedCall?
 max_pooling3d_15/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_23485992"
 max_pooling3d_15/PartitionedCall?
 max_pooling3d_12/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_23485872"
 max_pooling3d_12/PartitionedCall?
max_pooling3d_9/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_9_layer_call_and_return_conditional_losses_23485752!
max_pooling3d_9/PartitionedCall?
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_20_layer_call_and_return_conditional_losses_23488132$
"dropout_20/StatefulPartitionedCall?
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_12/PartitionedCall:output:0#^dropout_20/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_23488432$
"dropout_16/StatefulPartitionedCall?
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_9/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????**0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_23488732$
"dropout_12/StatefulPartitionedCall?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0conv3d_16_2348912conv3d_16_2348914*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_16_layer_call_and_return_conditional_losses_23489012#
!conv3d_16/StatefulPartitionedCall?
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv3d_13_2348938conv3d_13_2348940*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_13_layer_call_and_return_conditional_losses_23489272#
!conv3d_13/StatefulPartitionedCall?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0conv3d_10_2348964conv3d_10_2348966*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_23489532#
!conv3d_10/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_23489742
activation_21/PartitionedCall?
activation_17/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_23489872
activation_17/PartitionedCall?
activation_13/PartitionedCallPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????((0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_23490002
activation_13/PartitionedCall?
 max_pooling3d_16/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_23486352"
 max_pooling3d_16/PartitionedCall?
 max_pooling3d_13/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_23486232"
 max_pooling3d_13/PartitionedCall?
 max_pooling3d_10/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_10_layer_call_and_return_conditional_losses_23486112"
 max_pooling3d_10/PartitionedCall?
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_16/PartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_21_layer_call_and_return_conditional_losses_23490232$
"dropout_21/StatefulPartitionedCall?
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_13/PartitionedCall:output:0#^dropout_21/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_23490532$
"dropout_17/StatefulPartitionedCall?
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_10/PartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_23490832$
"dropout_13/StatefulPartitionedCall?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0conv3d_17_2349122conv3d_17_2349124*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_17_layer_call_and_return_conditional_losses_23491112#
!conv3d_17/StatefulPartitionedCall?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0conv3d_14_2349148conv3d_14_2349150*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_14_layer_call_and_return_conditional_losses_23491372#
!conv3d_14/StatefulPartitionedCall?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0conv3d_11_2349174conv3d_11_2349176*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_11_layer_call_and_return_conditional_losses_23491632#
!conv3d_11/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_23491842
activation_22/PartitionedCall?
activation_18/PartitionedCallPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_18_layer_call_and_return_conditional_losses_23491972
activation_18/PartitionedCall?
activation_14/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_23492102
activation_14/PartitionedCall?
 max_pooling3d_17/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_23486712"
 max_pooling3d_17/PartitionedCall?
 max_pooling3d_14/PartitionedCallPartitionedCall&activation_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_23486592"
 max_pooling3d_14/PartitionedCall?
 max_pooling3d_11/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_11_layer_call_and_return_conditional_losses_23486472"
 max_pooling3d_11/PartitionedCall?
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_17/PartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_22_layer_call_and_return_conditional_losses_23492332$
"dropout_22/StatefulPartitionedCall?
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_14/PartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_23492632$
"dropout_18/StatefulPartitionedCall?
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_11/PartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_23492932$
"dropout_14/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCall+dropout_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_23493172
flatten_5/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall+dropout_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_23493312
flatten_4/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall+dropout_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_23493452
flatten_3/PartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_10_2349374dense_10_2349376*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_23493632"
 dense_10/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_2349400dense_8_2349402*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_23493892!
dense_8/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_2349426dense_6_2349428*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_23494152!
dense_6/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_23494362
activation_23/PartitionedCall?
activation_19/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_19_layer_call_and_return_conditional_losses_23494492
activation_19/PartitionedCall?
activation_15/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_15_layer_call_and_return_conditional_losses_23494622
activation_15/PartitionedCall?
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_23_layer_call_and_return_conditional_losses_23494822$
"dropout_23/StatefulPartitionedCall?
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0#^dropout_23/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_23495122$
"dropout_19/StatefulPartitionedCall?
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall&activation_15/PartitionedCall:output:0#^dropout_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_23495422$
"dropout_15/StatefulPartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0dense_11_2349581dense_11_2349583*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_23495702"
 dense_11/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_9_2349607dense_9_2349609*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_23495962!
dense_9/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0dense_7_2349633dense_7_2349635*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_23496222!
dense_7/StatefulPartitionedCall?
$consolidation_output/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_consolidation_output_layer_call_and_return_conditional_losses_23496432&
$consolidation_output/PartitionedCall?
&pleural_regular_output/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_pleural_regular_output_layer_call_and_return_conditional_losses_23496562(
&pleural_regular_output/PartitionedCall?
%covid_severity_output/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_covid_severity_output_layer_call_and_return_conditional_losses_23496692'
%covid_severity_output/PartitionedCall?
IdentityIdentity.covid_severity_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity/pleural_regular_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity-consolidation_output/PartitionedCall:output:0"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:???????????
!
_user_specified_name	input_2
?
R
6__inference_consolidation_output_layer_call_fn_2351548

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_consolidation_output_layer_call_and_return_conditional_losses_23496432
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_Covid_LUS_net_layer_call_fn_2350756

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_23501122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2348671

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
K
/__inference_activation_12_layer_call_fn_2350823

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????~~0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_23487902
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????~~0:[ W
3
_output_shapes!
:?????????~~0
 
_user_specified_nameinputs
?	
?
E__inference_dense_10_layer_call_and_return_conditional_losses_2349363

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_activation_20_layer_call_and_return_conditional_losses_2348764

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????~~02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????~~0:[ W
3
_output_shapes!
:?????????~~0
 
_user_specified_nameinputs
?
H
,__inference_dropout_13_layer_call_fn_2351038

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_23490882
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
G__inference_dropout_12_layer_call_and_return_conditional_losses_2348873

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????**0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????**02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????**02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?
f
G__inference_dropout_14_layer_call_and_return_conditional_losses_2349293

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
J__inference_activation_13_layer_call_and_return_conditional_losses_2349000

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????((02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????((02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????((0:[ W
3
_output_shapes!
:?????????((0
 
_user_specified_nameinputs
?
f
J__inference_activation_12_layer_call_and_return_conditional_losses_2348790

inputs
identityZ
ReluReluinputs*
T0*3
_output_shapes!
:?????????~~02
Relur
IdentityIdentityRelu:activations:0*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????~~0:[ W
3
_output_shapes!
:?????????~~0
 
_user_specified_nameinputs
?
f
G__inference_dropout_16_layer_call_and_return_conditional_losses_2348843

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????**0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????**02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????**02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????**02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????**02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????**0:[ W
3
_output_shapes!
:?????????**0
 
_user_specified_nameinputs
?

?
F__inference_conv3d_12_layer_call_and_return_conditional_losses_2350785

inputs"
conv3d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~0*
paddingVALID*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????~~02	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:?????????~~02

Identity"
identityIdentity:output:0*<
_input_shapes+
):???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:???????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_14_layer_call_fn_2351206

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_23492982
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
?
+__inference_conv3d_14_layer_call_fn_2351130

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_14_layer_call_and_return_conditional_losses_23491372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????0::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
G__inference_dropout_13_layer_call_and_return_conditional_losses_2351023

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
f
G__inference_dropout_22_layer_call_and_return_conditional_losses_2349233

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*3
_output_shapes!
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*3
_output_shapes!
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*3
_output_shapes!
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*3
_output_shapes!
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*3
_output_shapes!
:?????????02
dropout/Mul_1q
IdentityIdentitydropout/Mul_1:z:0*
T0*3
_output_shapes!
:?????????02

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_2351277

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_2351055

inputs

identity_1f
IdentityIdentityinputs*
T0*3
_output_shapes!
:?????????02

Identityu

Identity_1IdentityIdentity:output:0*
T0*3
_output_shapes!
:?????????02

Identity_1"!

identity_1Identity_1:output:0*2
_input_shapes!
:?????????0:[ W
3
_output_shapes!
:?????????0
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
input_2>
serving_default_input_2:0???????????H
consolidation_output0
StatefulPartitionedCall:0?????????I
covid_severity_output0
StatefulPartitionedCall:1?????????J
pleural_regular_output0
StatefulPartitionedCall:2?????????tensorflow/serving/predict:??
??
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer_with_weights-3
layer-13
layer_with_weights-4
layer-14
layer_with_weights-5
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer_with_weights-6
layer-25
layer_with_weights-7
layer-26
layer_with_weights-8
layer-27
layer-28
layer-29
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer-36
&layer-37
'layer-38
(layer-39
)layer_with_weights-9
)layer-40
*layer_with_weights-10
*layer-41
+layer_with_weights-11
+layer-42
,layer-43
-layer-44
.layer-45
/layer-46
0layer-47
1layer-48
2layer_with_weights-12
2layer-49
3layer_with_weights-13
3layer-50
4layer_with_weights-14
4layer-51
5layer-52
6layer-53
7layer-54
8	optimizer
9loss
:	variables
;regularization_losses
<trainable_variables
=	keras_api
>
signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"??
_tf_keras_network??{"class_name": "Functional", "name": "Covid_LUS_net", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "Covid_LUS_net", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 128, 128, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Conv3D", "config": {"name": "conv3d_9", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_9", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_12", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_12", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_15", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_15", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_12", "inbound_nodes": [[["conv3d_9", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_16", "inbound_nodes": [[["conv3d_12", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_20", "inbound_nodes": [[["conv3d_15", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_9", "inbound_nodes": [[["activation_12", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_12", "inbound_nodes": [[["activation_16", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_15", "inbound_nodes": [[["activation_20", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_12", "inbound_nodes": [[["max_pooling3d_9", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_16", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_16", "inbound_nodes": [[["max_pooling3d_12", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_20", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_20", "inbound_nodes": [[["max_pooling3d_15", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_10", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_10", "inbound_nodes": [[["dropout_12", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_13", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_13", "inbound_nodes": [[["dropout_16", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_16", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_16", "inbound_nodes": [[["dropout_20", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_13", "inbound_nodes": [[["conv3d_10", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_17", "inbound_nodes": [[["conv3d_13", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_21", "inbound_nodes": [[["conv3d_16", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_10", "inbound_nodes": [[["activation_13", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_13", "inbound_nodes": [[["activation_17", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_16", "inbound_nodes": [[["activation_21", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_13", "inbound_nodes": [[["max_pooling3d_10", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_17", "inbound_nodes": [[["max_pooling3d_13", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_21", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_21", "inbound_nodes": [[["max_pooling3d_16", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_11", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_11", "inbound_nodes": [[["dropout_13", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_14", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_14", "inbound_nodes": [[["dropout_17", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_17", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_17", "inbound_nodes": [[["dropout_21", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_14", "inbound_nodes": [[["conv3d_11", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_18", "inbound_nodes": [[["conv3d_14", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_22", "inbound_nodes": [[["conv3d_17", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_11", "inbound_nodes": [[["activation_14", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_14", "inbound_nodes": [[["activation_18", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_17", "inbound_nodes": [[["activation_22", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_14", "inbound_nodes": [[["max_pooling3d_11", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_18", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_18", "inbound_nodes": [[["max_pooling3d_14", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_22", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_22", "inbound_nodes": [[["max_pooling3d_17", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["dropout_14", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_4", "inbound_nodes": [[["dropout_18", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_5", "inbound_nodes": [[["dropout_22", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["flatten_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_8", "inbound_nodes": [[["flatten_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_10", "inbound_nodes": [[["flatten_5", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_15", "inbound_nodes": [[["dense_6", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_19", "inbound_nodes": [[["dense_8", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_23", "inbound_nodes": [[["dense_10", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_15", "inbound_nodes": [[["activation_15", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_19", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_19", "inbound_nodes": [[["activation_19", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_23", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_23", "inbound_nodes": [[["activation_23", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_7", "inbound_nodes": [[["dropout_15", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_9", "inbound_nodes": [[["dropout_19", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_11", "inbound_nodes": [[["dropout_23", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "covid_severity_output", "trainable": true, "dtype": "float32", "activation": "softmax"}, "name": "covid_severity_output", "inbound_nodes": [[["dense_7", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "pleural_regular_output", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "name": "pleural_regular_output", "inbound_nodes": [[["dense_9", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "consolidation_output", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "name": "consolidation_output", "inbound_nodes": [[["dense_11", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["covid_severity_output", 0, 0], ["pleural_regular_output", 0, 0], ["consolidation_output", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 20, 128, 128, 2]}, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 128, 128, 2]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Covid_LUS_net", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 128, 128, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Conv3D", "config": {"name": "conv3d_9", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_9", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_12", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_12", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_15", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_15", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_12", "inbound_nodes": [[["conv3d_9", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_16", "inbound_nodes": [[["conv3d_12", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_20", "inbound_nodes": [[["conv3d_15", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_9", "inbound_nodes": [[["activation_12", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_12", "inbound_nodes": [[["activation_16", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_15", "inbound_nodes": [[["activation_20", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_12", "inbound_nodes": [[["max_pooling3d_9", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_16", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_16", "inbound_nodes": [[["max_pooling3d_12", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_20", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_20", "inbound_nodes": [[["max_pooling3d_15", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_10", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_10", "inbound_nodes": [[["dropout_12", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_13", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_13", "inbound_nodes": [[["dropout_16", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_16", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_16", "inbound_nodes": [[["dropout_20", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_13", "inbound_nodes": [[["conv3d_10", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_17", "inbound_nodes": [[["conv3d_13", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_21", "inbound_nodes": [[["conv3d_16", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_10", "inbound_nodes": [[["activation_13", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_13", "inbound_nodes": [[["activation_17", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_16", "inbound_nodes": [[["activation_21", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_13", "inbound_nodes": [[["max_pooling3d_10", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_17", "inbound_nodes": [[["max_pooling3d_13", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_21", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_21", "inbound_nodes": [[["max_pooling3d_16", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_11", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_11", "inbound_nodes": [[["dropout_13", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_14", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_14", "inbound_nodes": [[["dropout_17", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_17", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_17", "inbound_nodes": [[["dropout_21", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_14", "inbound_nodes": [[["conv3d_11", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_18", "inbound_nodes": [[["conv3d_14", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_22", "inbound_nodes": [[["conv3d_17", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_11", "inbound_nodes": [[["activation_14", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_14", "inbound_nodes": [[["activation_18", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "name": "max_pooling3d_17", "inbound_nodes": [[["activation_22", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_14", "inbound_nodes": [[["max_pooling3d_11", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_18", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_18", "inbound_nodes": [[["max_pooling3d_14", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_22", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}, "name": "dropout_22", "inbound_nodes": [[["max_pooling3d_17", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["dropout_14", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_4", "inbound_nodes": [[["dropout_18", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_5", "inbound_nodes": [[["dropout_22", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["flatten_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_8", "inbound_nodes": [[["flatten_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_10", "inbound_nodes": [[["flatten_5", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_15", "inbound_nodes": [[["dense_6", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_19", "inbound_nodes": [[["dense_8", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_23", "inbound_nodes": [[["dense_10", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_15", "inbound_nodes": [[["activation_15", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_19", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_19", "inbound_nodes": [[["activation_19", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_23", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_23", "inbound_nodes": [[["activation_23", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_7", "inbound_nodes": [[["dropout_15", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_9", "inbound_nodes": [[["dropout_19", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_11", "inbound_nodes": [[["dropout_23", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "covid_severity_output", "trainable": true, "dtype": "float32", "activation": "softmax"}, "name": "covid_severity_output", "inbound_nodes": [[["dense_7", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "pleural_regular_output", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "name": "pleural_regular_output", "inbound_nodes": [[["dense_9", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "consolidation_output", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "name": "consolidation_output", "inbound_nodes": [[["dense_11", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["covid_severity_output", 0, 0], ["pleural_regular_output", 0, 0], ["consolidation_output", 0, 0]]}}, "training_config": {"loss": {"covid_severity_output": "categorical_crossentropy", "pleural_regular_output": "binary_crossentropy", "consolidation_output": "binary_crossentropy"}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "covid_severity_output_categorical_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}, {"class_name": "Precision", "config": {"name": "covid_severity_output_precision", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}, {"class_name": "Recall", "config": {"name": "covid_severity_output_recall", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}, {"class_name": "AUC", "config": {"name": "covid_severity_output_auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}, {"class_name": "MeanMetricWrapper", "config": {"name": "covid_severity_output_mae", "dtype": "float32", "fn": "mean_absolute_error"}}], [{"class_name": "MeanMetricWrapper", "config": {"name": "pleural_regular_output_binary_accuracy", "dtype": "float32", "fn": "binary_accuracy"}}, {"class_name": "Precision", "config": {"name": "pleural_regular_output_precision_1", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}, {"class_name": "Recall", "config": {"name": "pleural_regular_output_recall_1", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}, {"class_name": "AUC", "config": {"name": "pleural_regular_output_auc_1", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}, {"class_name": "MeanMetricWrapper", "config": {"name": "pleural_regular_output_mae", "dtype": "float32", "fn": "mean_absolute_error"}}], [{"class_name": "MeanMetricWrapper", "config": {"name": "consolidation_output_binary_accuracy", "dtype": "float32", "fn": "binary_accuracy"}}, {"class_name": "Precision", "config": {"name": "consolidation_output_precision_2", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}, {"class_name": "Recall", "config": {"name": "consolidation_output_recall_2", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}, {"class_name": "AUC", "config": {"name": "consolidation_output_auc_2", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}, {"class_name": "MeanMetricWrapper", "config": {"name": "consolidation_output_mae", "dtype": "float32", "fn": "mean_absolute_error"}}]], "weighted_metrics": null, "loss_weights": {"covid_severity_output": 2, "pleural_regular_output": 1, "consolidation_output": 1}, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 1.9999999494757503e-05, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 128, 128, 2]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 128, 128, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
?


?kernel
@bias
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv3D", "name": "conv3d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv3d_9", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 128, 128, 2]}}
?


Ekernel
Fbias
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv3D", "name": "conv3d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv3d_12", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 128, 128, 2]}}
?


Kkernel
Lbias
M	variables
Nregularization_losses
Otrainable_variables
P	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv3D", "name": "conv3d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv3d_15", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 128, 128, 2]}}
?
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
]	variables
^regularization_losses
_trainable_variables
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling3D", "name": "max_pooling3d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling3d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling3D", "name": "max_pooling3d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling3d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling3D", "name": "max_pooling3d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling3d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
i	variables
jregularization_losses
ktrainable_variables
l	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}}
?
m	variables
nregularization_losses
otrainable_variables
p	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_16", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}}
?
q	variables
rregularization_losses
strainable_variables
t	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_20", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_20", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}}
?


ukernel
vbias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv3D", "name": "conv3d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv3d_10", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 42, 42, 48]}}
?


{kernel
|bias
}	variables
~regularization_losses
trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv3D", "name": "conv3d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv3d_13", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 42, 42, 48]}}
?

?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv3D", "name": "conv3d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv3d_16", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 42, 42, 48]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling3D", "name": "max_pooling3d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling3d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling3D", "name": "max_pooling3d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling3d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling3D", "name": "max_pooling3d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling3d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_21", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_21", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}}
?

?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv3D", "name": "conv3d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv3d_11", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 13, 13, 48]}}
?

?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv3D", "name": "conv3d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv3d_14", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 13, 13, 48]}}
?

?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv3D", "name": "conv3d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv3d_17", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [1, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 13, 13, 48]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling3D", "name": "max_pooling3d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling3d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling3D", "name": "max_pooling3d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling3d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling3D", "name": "max_pooling3d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling3d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_18", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_18", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_22", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_22", "trainable": true, "dtype": "float32", "rate": 0.15, "noise_shape": null, "seed": null}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 432}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 432]}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 432}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 432]}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 432}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 432]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_19", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_19", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_23", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_23", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "covid_severity_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "covid_severity_output", "trainable": true, "dtype": "float32", "activation": "softmax"}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "pleural_regular_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pleural_regular_output", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "consolidation_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "consolidation_output", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate?m?@m?Em?Fm?Km?Lm?um?vm?{m?|m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m??v?@v?Ev?Fv?Kv?Lv?uv?vv?{v?|v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
 "
trackable_dict_wrapper
?
?0
@1
E2
F3
K4
L5
u6
v7
{8
|9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?0
@1
E2
F3
K4
L5
u6
v7
{8
|9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29"
trackable_list_wrapper
?
:	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
;regularization_losses
<trainable_variables
?layers
?non_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
-:+02conv3d_9/kernel
:02conv3d_9/bias
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
?
A	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Bregularization_losses
Ctrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,02conv3d_12/kernel
:02conv3d_12/bias
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
?
G	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Hregularization_losses
Itrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,02conv3d_15/kernel
:02conv3d_15/bias
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
?
M	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Nregularization_losses
Otrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Q	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Rregularization_losses
Strainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
U	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Vregularization_losses
Wtrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Y	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
Zregularization_losses
[trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
]	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
^regularization_losses
_trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
a	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
bregularization_losses
ctrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
e	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
fregularization_losses
gtrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
i	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
jregularization_losses
ktrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
m	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
nregularization_losses
otrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
q	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
rregularization_losses
strainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,002conv3d_10/kernel
:02conv3d_10/bias
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
?
w	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
xregularization_losses
ytrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,002conv3d_13/kernel
:02conv3d_13/bias
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
?
}	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
~regularization_losses
trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,002conv3d_16/kernel
:02conv3d_16/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,002conv3d_11/kernel
:02conv3d_11/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,002conv3d_14/kernel
:02conv3d_14/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,002conv3d_17/kernel
:02conv3d_17/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_6/kernel
:?2dense_6/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_8/kernel
:?2dense_8/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_10/kernel
:?2dense_10/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_7/kernel
:2dense_7/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_9/kernel
:2dense_9/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_11/kernel
:2dense_11/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?metrics
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
?18"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249
350
451
552
653
754"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "covid_severity_output_loss", "dtype": "float32", "config": {"name": "covid_severity_output_loss", "dtype": "float32"}}
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "pleural_regular_output_loss", "dtype": "float32", "config": {"name": "pleural_regular_output_loss", "dtype": "float32"}}
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "consolidation_output_loss", "dtype": "float32", "config": {"name": "consolidation_output_loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "covid_severity_output_categorical_accuracy", "dtype": "float32", "config": {"name": "covid_severity_output_categorical_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
?
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Precision", "name": "covid_severity_output_precision", "dtype": "float32", "config": {"name": "covid_severity_output_precision", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}
?
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Recall", "name": "covid_severity_output_recall", "dtype": "float32", "config": {"name": "covid_severity_output_recall", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}
?"
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api"?!
_tf_keras_metric?!{"class_name": "AUC", "name": "covid_severity_output_auc", "dtype": "float32", "config": {"name": "covid_severity_output_auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "covid_severity_output_mae", "dtype": "float32", "config": {"name": "covid_severity_output_mae", "dtype": "float32", "fn": "mean_absolute_error"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "pleural_regular_output_binary_accuracy", "dtype": "float32", "config": {"name": "pleural_regular_output_binary_accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
?
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Precision", "name": "pleural_regular_output_precision_1", "dtype": "float32", "config": {"name": "pleural_regular_output_precision_1", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}
?
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Recall", "name": "pleural_regular_output_recall_1", "dtype": "float32", "config": {"name": "pleural_regular_output_recall_1", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}
?"
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api"?!
_tf_keras_metric?!{"class_name": "AUC", "name": "pleural_regular_output_auc_1", "dtype": "float32", "config": {"name": "pleural_regular_output_auc_1", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "pleural_regular_output_mae", "dtype": "float32", "config": {"name": "pleural_regular_output_mae", "dtype": "float32", "fn": "mean_absolute_error"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "consolidation_output_binary_accuracy", "dtype": "float32", "config": {"name": "consolidation_output_binary_accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
?
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Precision", "name": "consolidation_output_precision_2", "dtype": "float32", "config": {"name": "consolidation_output_precision_2", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}
?
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Recall", "name": "consolidation_output_recall_2", "dtype": "float32", "config": {"name": "consolidation_output_recall_2", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}
?"
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api"?!
_tf_keras_metric?!{"class_name": "AUC", "name": "consolidation_output_auc_2", "dtype": "float32", "config": {"name": "consolidation_output_auc_2", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "consolidation_output_mae", "dtype": "float32", "config": {"name": "consolidation_output_mae", "dtype": "float32", "fn": "mean_absolute_error"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:? (2true_positives
:? (2true_negatives
 :? (2false_positives
 :? (2false_negatives
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:? (2true_positives
:? (2true_negatives
 :? (2false_positives
 :? (2false_negatives
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:? (2true_positives
:? (2true_negatives
 :? (2false_positives
 :? (2false_negatives
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
2:002Adam/conv3d_9/kernel/m
 :02Adam/conv3d_9/bias/m
3:102Adam/conv3d_12/kernel/m
!:02Adam/conv3d_12/bias/m
3:102Adam/conv3d_15/kernel/m
!:02Adam/conv3d_15/bias/m
3:1002Adam/conv3d_10/kernel/m
!:02Adam/conv3d_10/bias/m
3:1002Adam/conv3d_13/kernel/m
!:02Adam/conv3d_13/bias/m
3:1002Adam/conv3d_16/kernel/m
!:02Adam/conv3d_16/bias/m
3:1002Adam/conv3d_11/kernel/m
!:02Adam/conv3d_11/bias/m
3:1002Adam/conv3d_14/kernel/m
!:02Adam/conv3d_14/bias/m
3:1002Adam/conv3d_17/kernel/m
!:02Adam/conv3d_17/bias/m
':%
??2Adam/dense_6/kernel/m
 :?2Adam/dense_6/bias/m
':%
??2Adam/dense_8/kernel/m
 :?2Adam/dense_8/bias/m
(:&
??2Adam/dense_10/kernel/m
!:?2Adam/dense_10/bias/m
&:$	?2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
&:$	?2Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
':%	?2Adam/dense_11/kernel/m
 :2Adam/dense_11/bias/m
2:002Adam/conv3d_9/kernel/v
 :02Adam/conv3d_9/bias/v
3:102Adam/conv3d_12/kernel/v
!:02Adam/conv3d_12/bias/v
3:102Adam/conv3d_15/kernel/v
!:02Adam/conv3d_15/bias/v
3:1002Adam/conv3d_10/kernel/v
!:02Adam/conv3d_10/bias/v
3:1002Adam/conv3d_13/kernel/v
!:02Adam/conv3d_13/bias/v
3:1002Adam/conv3d_16/kernel/v
!:02Adam/conv3d_16/bias/v
3:1002Adam/conv3d_11/kernel/v
!:02Adam/conv3d_11/bias/v
3:1002Adam/conv3d_14/kernel/v
!:02Adam/conv3d_14/bias/v
3:1002Adam/conv3d_17/kernel/v
!:02Adam/conv3d_17/bias/v
':%
??2Adam/dense_6/kernel/v
 :?2Adam/dense_6/bias/v
':%
??2Adam/dense_8/kernel/v
 :?2Adam/dense_8/bias/v
(:&
??2Adam/dense_10/kernel/v
!:?2Adam/dense_10/bias/v
&:$	?2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
&:$	?2Adam/dense_9/kernel/v
:2Adam/dense_9/bias/v
':%	?2Adam/dense_11/kernel/v
 :2Adam/dense_11/bias/v
?2?
/__inference_Covid_LUS_net_layer_call_fn_2350687
/__inference_Covid_LUS_net_layer_call_fn_2350756
/__inference_Covid_LUS_net_layer_call_fn_2350179
/__inference_Covid_LUS_net_layer_call_fn_2349990?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_2348569?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *4?1
/?,
input_2???????????
?2?
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2349680
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2350480
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2350618
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2349800?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_conv3d_9_layer_call_fn_2350775?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv3d_9_layer_call_and_return_conditional_losses_2350766?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv3d_12_layer_call_fn_2350794?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv3d_12_layer_call_and_return_conditional_losses_2350785?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv3d_15_layer_call_fn_2350813?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2350804?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_12_layer_call_fn_2350823?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_12_layer_call_and_return_conditional_losses_2350818?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_16_layer_call_fn_2350833?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_16_layer_call_and_return_conditional_losses_2350828?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_20_layer_call_fn_2350843?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_20_layer_call_and_return_conditional_losses_2350838?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling3d_9_layer_call_fn_2348581?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
L__inference_max_pooling3d_9_layer_call_and_return_conditional_losses_2348575?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
2__inference_max_pooling3d_12_layer_call_fn_2348593?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2348587?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
2__inference_max_pooling3d_15_layer_call_fn_2348605?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2348599?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
,__inference_dropout_12_layer_call_fn_2350870
,__inference_dropout_12_layer_call_fn_2350865?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_12_layer_call_and_return_conditional_losses_2350855
G__inference_dropout_12_layer_call_and_return_conditional_losses_2350860?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_16_layer_call_fn_2350892
,__inference_dropout_16_layer_call_fn_2350897?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_16_layer_call_and_return_conditional_losses_2350887
G__inference_dropout_16_layer_call_and_return_conditional_losses_2350882?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_20_layer_call_fn_2350924
,__inference_dropout_20_layer_call_fn_2350919?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_20_layer_call_and_return_conditional_losses_2350914
G__inference_dropout_20_layer_call_and_return_conditional_losses_2350909?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_conv3d_10_layer_call_fn_2350943?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv3d_10_layer_call_and_return_conditional_losses_2350934?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv3d_13_layer_call_fn_2350962?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv3d_13_layer_call_and_return_conditional_losses_2350953?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv3d_16_layer_call_fn_2350981?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2350972?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_13_layer_call_fn_2350991?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_13_layer_call_and_return_conditional_losses_2350986?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_17_layer_call_fn_2351001?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_17_layer_call_and_return_conditional_losses_2350996?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_21_layer_call_fn_2351011?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_21_layer_call_and_return_conditional_losses_2351006?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_max_pooling3d_10_layer_call_fn_2348617?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
M__inference_max_pooling3d_10_layer_call_and_return_conditional_losses_2348611?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
2__inference_max_pooling3d_13_layer_call_fn_2348629?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2348623?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
2__inference_max_pooling3d_16_layer_call_fn_2348641?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2348635?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
,__inference_dropout_13_layer_call_fn_2351038
,__inference_dropout_13_layer_call_fn_2351033?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_13_layer_call_and_return_conditional_losses_2351028
G__inference_dropout_13_layer_call_and_return_conditional_losses_2351023?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_17_layer_call_fn_2351065
,__inference_dropout_17_layer_call_fn_2351060?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_17_layer_call_and_return_conditional_losses_2351050
G__inference_dropout_17_layer_call_and_return_conditional_losses_2351055?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_21_layer_call_fn_2351092
,__inference_dropout_21_layer_call_fn_2351087?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_21_layer_call_and_return_conditional_losses_2351082
G__inference_dropout_21_layer_call_and_return_conditional_losses_2351077?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_conv3d_11_layer_call_fn_2351111?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv3d_11_layer_call_and_return_conditional_losses_2351102?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv3d_14_layer_call_fn_2351130?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2351121?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv3d_17_layer_call_fn_2351149?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2351140?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_14_layer_call_fn_2351159?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_14_layer_call_and_return_conditional_losses_2351154?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_18_layer_call_fn_2351169?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_18_layer_call_and_return_conditional_losses_2351164?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_22_layer_call_fn_2351179?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_22_layer_call_and_return_conditional_losses_2351174?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_max_pooling3d_11_layer_call_fn_2348653?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
M__inference_max_pooling3d_11_layer_call_and_return_conditional_losses_2348647?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
2__inference_max_pooling3d_14_layer_call_fn_2348665?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2348659?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
2__inference_max_pooling3d_17_layer_call_fn_2348677?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2348671?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
,__inference_dropout_14_layer_call_fn_2351206
,__inference_dropout_14_layer_call_fn_2351201?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_14_layer_call_and_return_conditional_losses_2351191
G__inference_dropout_14_layer_call_and_return_conditional_losses_2351196?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_18_layer_call_fn_2351233
,__inference_dropout_18_layer_call_fn_2351228?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_18_layer_call_and_return_conditional_losses_2351218
G__inference_dropout_18_layer_call_and_return_conditional_losses_2351223?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_22_layer_call_fn_2351255
,__inference_dropout_22_layer_call_fn_2351260?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_22_layer_call_and_return_conditional_losses_2351245
G__inference_dropout_22_layer_call_and_return_conditional_losses_2351250?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_flatten_3_layer_call_fn_2351271?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_3_layer_call_and_return_conditional_losses_2351266?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_4_layer_call_fn_2351282?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_4_layer_call_and_return_conditional_losses_2351277?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_5_layer_call_fn_2351293?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_5_layer_call_and_return_conditional_losses_2351288?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_6_layer_call_fn_2351312?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_6_layer_call_and_return_conditional_losses_2351303?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_8_layer_call_fn_2351331?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_8_layer_call_and_return_conditional_losses_2351322?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_10_layer_call_fn_2351350?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_10_layer_call_and_return_conditional_losses_2351341?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_15_layer_call_fn_2351360?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_15_layer_call_and_return_conditional_losses_2351355?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_19_layer_call_fn_2351370?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_19_layer_call_and_return_conditional_losses_2351365?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_23_layer_call_fn_2351380?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_23_layer_call_and_return_conditional_losses_2351375?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dropout_15_layer_call_fn_2351402
,__inference_dropout_15_layer_call_fn_2351407?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_15_layer_call_and_return_conditional_losses_2351397
G__inference_dropout_15_layer_call_and_return_conditional_losses_2351392?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_19_layer_call_fn_2351429
,__inference_dropout_19_layer_call_fn_2351434?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_19_layer_call_and_return_conditional_losses_2351419
G__inference_dropout_19_layer_call_and_return_conditional_losses_2351424?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_23_layer_call_fn_2351456
,__inference_dropout_23_layer_call_fn_2351461?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_23_layer_call_and_return_conditional_losses_2351446
G__inference_dropout_23_layer_call_and_return_conditional_losses_2351451?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_7_layer_call_fn_2351480?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_7_layer_call_and_return_conditional_losses_2351471?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_9_layer_call_fn_2351499?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_9_layer_call_and_return_conditional_losses_2351490?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_11_layer_call_fn_2351518?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_11_layer_call_and_return_conditional_losses_2351509?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
7__inference_covid_severity_output_layer_call_fn_2351528?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
R__inference_covid_severity_output_layer_call_and_return_conditional_losses_2351523?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_pleural_regular_output_layer_call_fn_2351538?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_pleural_regular_output_layer_call_and_return_conditional_losses_2351533?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
6__inference_consolidation_output_layer_call_fn_2351548?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Q__inference_consolidation_output_layer_call_and_return_conditional_losses_2351543?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_2350258input_2"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2349680?2KLEF?@??{|uv??????????????????F?C
<?9
/?,
input_2???????????
p

 
? "j?g
`?]
?
0/0?????????
?
0/1?????????
?
0/2?????????
? ?
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2349800?2KLEF?@??{|uv??????????????????F?C
<?9
/?,
input_2???????????
p 

 
? "j?g
`?]
?
0/0?????????
?
0/1?????????
?
0/2?????????
? ?
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2350480?2KLEF?@??{|uv??????????????????E?B
;?8
.?+
inputs???????????
p

 
? "j?g
`?]
?
0/0?????????
?
0/1?????????
?
0/2?????????
? ?
J__inference_Covid_LUS_net_layer_call_and_return_conditional_losses_2350618?2KLEF?@??{|uv??????????????????E?B
;?8
.?+
inputs???????????
p 

 
? "j?g
`?]
?
0/0?????????
?
0/1?????????
?
0/2?????????
? ?
/__inference_Covid_LUS_net_layer_call_fn_2349990?2KLEF?@??{|uv??????????????????F?C
<?9
/?,
input_2???????????
p

 
? "Z?W
?
0?????????
?
1?????????
?
2??????????
/__inference_Covid_LUS_net_layer_call_fn_2350179?2KLEF?@??{|uv??????????????????F?C
<?9
/?,
input_2???????????
p 

 
? "Z?W
?
0?????????
?
1?????????
?
2??????????
/__inference_Covid_LUS_net_layer_call_fn_2350687?2KLEF?@??{|uv??????????????????E?B
;?8
.?+
inputs???????????
p

 
? "Z?W
?
0?????????
?
1?????????
?
2??????????
/__inference_Covid_LUS_net_layer_call_fn_2350756?2KLEF?@??{|uv??????????????????E?B
;?8
.?+
inputs???????????
p 

 
? "Z?W
?
0?????????
?
1?????????
?
2??????????
"__inference__wrapped_model_2348569?2KLEF?@??{|uv??????????????????>?;
4?1
/?,
input_2???????????
? "???
F
consolidation_output.?+
consolidation_output?????????
H
covid_severity_output/?,
covid_severity_output?????????
J
pleural_regular_output0?-
pleural_regular_output??????????
J__inference_activation_12_layer_call_and_return_conditional_losses_2350818p;?8
1?.
,?)
inputs?????????~~0
? "1?.
'?$
0?????????~~0
? ?
/__inference_activation_12_layer_call_fn_2350823c;?8
1?.
,?)
inputs?????????~~0
? "$?!?????????~~0?
J__inference_activation_13_layer_call_and_return_conditional_losses_2350986p;?8
1?.
,?)
inputs?????????((0
? "1?.
'?$
0?????????((0
? ?
/__inference_activation_13_layer_call_fn_2350991c;?8
1?.
,?)
inputs?????????((0
? "$?!?????????((0?
J__inference_activation_14_layer_call_and_return_conditional_losses_2351154p;?8
1?.
,?)
inputs?????????0
? "1?.
'?$
0?????????0
? ?
/__inference_activation_14_layer_call_fn_2351159c;?8
1?.
,?)
inputs?????????0
? "$?!?????????0?
J__inference_activation_15_layer_call_and_return_conditional_losses_2351355Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_activation_15_layer_call_fn_2351360M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_activation_16_layer_call_and_return_conditional_losses_2350828p;?8
1?.
,?)
inputs?????????~~0
? "1?.
'?$
0?????????~~0
? ?
/__inference_activation_16_layer_call_fn_2350833c;?8
1?.
,?)
inputs?????????~~0
? "$?!?????????~~0?
J__inference_activation_17_layer_call_and_return_conditional_losses_2350996p;?8
1?.
,?)
inputs?????????((0
? "1?.
'?$
0?????????((0
? ?
/__inference_activation_17_layer_call_fn_2351001c;?8
1?.
,?)
inputs?????????((0
? "$?!?????????((0?
J__inference_activation_18_layer_call_and_return_conditional_losses_2351164p;?8
1?.
,?)
inputs?????????0
? "1?.
'?$
0?????????0
? ?
/__inference_activation_18_layer_call_fn_2351169c;?8
1?.
,?)
inputs?????????0
? "$?!?????????0?
J__inference_activation_19_layer_call_and_return_conditional_losses_2351365Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_activation_19_layer_call_fn_2351370M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_activation_20_layer_call_and_return_conditional_losses_2350838p;?8
1?.
,?)
inputs?????????~~0
? "1?.
'?$
0?????????~~0
? ?
/__inference_activation_20_layer_call_fn_2350843c;?8
1?.
,?)
inputs?????????~~0
? "$?!?????????~~0?
J__inference_activation_21_layer_call_and_return_conditional_losses_2351006p;?8
1?.
,?)
inputs?????????((0
? "1?.
'?$
0?????????((0
? ?
/__inference_activation_21_layer_call_fn_2351011c;?8
1?.
,?)
inputs?????????((0
? "$?!?????????((0?
J__inference_activation_22_layer_call_and_return_conditional_losses_2351174p;?8
1?.
,?)
inputs?????????0
? "1?.
'?$
0?????????0
? ?
/__inference_activation_22_layer_call_fn_2351179c;?8
1?.
,?)
inputs?????????0
? "$?!?????????0?
J__inference_activation_23_layer_call_and_return_conditional_losses_2351375Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_activation_23_layer_call_fn_2351380M0?-
&?#
!?
inputs??????????
? "????????????
Q__inference_consolidation_output_layer_call_and_return_conditional_losses_2351543X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
6__inference_consolidation_output_layer_call_fn_2351548K/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_conv3d_10_layer_call_and_return_conditional_losses_2350934tuv;?8
1?.
,?)
inputs?????????**0
? "1?.
'?$
0?????????((0
? ?
+__inference_conv3d_10_layer_call_fn_2350943guv;?8
1?.
,?)
inputs?????????**0
? "$?!?????????((0?
F__inference_conv3d_11_layer_call_and_return_conditional_losses_2351102v??;?8
1?.
,?)
inputs?????????0
? "1?.
'?$
0?????????0
? ?
+__inference_conv3d_11_layer_call_fn_2351111i??;?8
1?.
,?)
inputs?????????0
? "$?!?????????0?
F__inference_conv3d_12_layer_call_and_return_conditional_losses_2350785vEF=?:
3?0
.?+
inputs???????????
? "1?.
'?$
0?????????~~0
? ?
+__inference_conv3d_12_layer_call_fn_2350794iEF=?:
3?0
.?+
inputs???????????
? "$?!?????????~~0?
F__inference_conv3d_13_layer_call_and_return_conditional_losses_2350953t{|;?8
1?.
,?)
inputs?????????**0
? "1?.
'?$
0?????????((0
? ?
+__inference_conv3d_13_layer_call_fn_2350962g{|;?8
1?.
,?)
inputs?????????**0
? "$?!?????????((0?
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2351121v??;?8
1?.
,?)
inputs?????????0
? "1?.
'?$
0?????????0
? ?
+__inference_conv3d_14_layer_call_fn_2351130i??;?8
1?.
,?)
inputs?????????0
? "$?!?????????0?
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2350804vKL=?:
3?0
.?+
inputs???????????
? "1?.
'?$
0?????????~~0
? ?
+__inference_conv3d_15_layer_call_fn_2350813iKL=?:
3?0
.?+
inputs???????????
? "$?!?????????~~0?
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2350972v??;?8
1?.
,?)
inputs?????????**0
? "1?.
'?$
0?????????((0
? ?
+__inference_conv3d_16_layer_call_fn_2350981i??;?8
1?.
,?)
inputs?????????**0
? "$?!?????????((0?
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2351140v??;?8
1?.
,?)
inputs?????????0
? "1?.
'?$
0?????????0
? ?
+__inference_conv3d_17_layer_call_fn_2351149i??;?8
1?.
,?)
inputs?????????0
? "$?!?????????0?
E__inference_conv3d_9_layer_call_and_return_conditional_losses_2350766v?@=?:
3?0
.?+
inputs???????????
? "1?.
'?$
0?????????~~0
? ?
*__inference_conv3d_9_layer_call_fn_2350775i?@=?:
3?0
.?+
inputs???????????
? "$?!?????????~~0?
R__inference_covid_severity_output_layer_call_and_return_conditional_losses_2351523X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
7__inference_covid_severity_output_layer_call_fn_2351528K/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dense_10_layer_call_and_return_conditional_losses_2351341`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
*__inference_dense_10_layer_call_fn_2351350S??0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_11_layer_call_and_return_conditional_losses_2351509_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ?
*__inference_dense_11_layer_call_fn_2351518R??0?-
&?#
!?
inputs??????????
? "???????????
D__inference_dense_6_layer_call_and_return_conditional_losses_2351303`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
)__inference_dense_6_layer_call_fn_2351312S??0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_7_layer_call_and_return_conditional_losses_2351471_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? 
)__inference_dense_7_layer_call_fn_2351480R??0?-
&?#
!?
inputs??????????
? "???????????
D__inference_dense_8_layer_call_and_return_conditional_losses_2351322`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
)__inference_dense_8_layer_call_fn_2351331S??0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_9_layer_call_and_return_conditional_losses_2351490_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? 
)__inference_dense_9_layer_call_fn_2351499R??0?-
&?#
!?
inputs??????????
? "???????????
G__inference_dropout_12_layer_call_and_return_conditional_losses_2350855t??<
5?2
,?)
inputs?????????**0
p
? "1?.
'?$
0?????????**0
? ?
G__inference_dropout_12_layer_call_and_return_conditional_losses_2350860t??<
5?2
,?)
inputs?????????**0
p 
? "1?.
'?$
0?????????**0
? ?
,__inference_dropout_12_layer_call_fn_2350865g??<
5?2
,?)
inputs?????????**0
p
? "$?!?????????**0?
,__inference_dropout_12_layer_call_fn_2350870g??<
5?2
,?)
inputs?????????**0
p 
? "$?!?????????**0?
G__inference_dropout_13_layer_call_and_return_conditional_losses_2351023t??<
5?2
,?)
inputs?????????0
p
? "1?.
'?$
0?????????0
? ?
G__inference_dropout_13_layer_call_and_return_conditional_losses_2351028t??<
5?2
,?)
inputs?????????0
p 
? "1?.
'?$
0?????????0
? ?
,__inference_dropout_13_layer_call_fn_2351033g??<
5?2
,?)
inputs?????????0
p
? "$?!?????????0?
,__inference_dropout_13_layer_call_fn_2351038g??<
5?2
,?)
inputs?????????0
p 
? "$?!?????????0?
G__inference_dropout_14_layer_call_and_return_conditional_losses_2351191t??<
5?2
,?)
inputs?????????0
p
? "1?.
'?$
0?????????0
? ?
G__inference_dropout_14_layer_call_and_return_conditional_losses_2351196t??<
5?2
,?)
inputs?????????0
p 
? "1?.
'?$
0?????????0
? ?
,__inference_dropout_14_layer_call_fn_2351201g??<
5?2
,?)
inputs?????????0
p
? "$?!?????????0?
,__inference_dropout_14_layer_call_fn_2351206g??<
5?2
,?)
inputs?????????0
p 
? "$?!?????????0?
G__inference_dropout_15_layer_call_and_return_conditional_losses_2351392^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
G__inference_dropout_15_layer_call_and_return_conditional_losses_2351397^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
,__inference_dropout_15_layer_call_fn_2351402Q4?1
*?'
!?
inputs??????????
p
? "????????????
,__inference_dropout_15_layer_call_fn_2351407Q4?1
*?'
!?
inputs??????????
p 
? "????????????
G__inference_dropout_16_layer_call_and_return_conditional_losses_2350882t??<
5?2
,?)
inputs?????????**0
p
? "1?.
'?$
0?????????**0
? ?
G__inference_dropout_16_layer_call_and_return_conditional_losses_2350887t??<
5?2
,?)
inputs?????????**0
p 
? "1?.
'?$
0?????????**0
? ?
,__inference_dropout_16_layer_call_fn_2350892g??<
5?2
,?)
inputs?????????**0
p
? "$?!?????????**0?
,__inference_dropout_16_layer_call_fn_2350897g??<
5?2
,?)
inputs?????????**0
p 
? "$?!?????????**0?
G__inference_dropout_17_layer_call_and_return_conditional_losses_2351050t??<
5?2
,?)
inputs?????????0
p
? "1?.
'?$
0?????????0
? ?
G__inference_dropout_17_layer_call_and_return_conditional_losses_2351055t??<
5?2
,?)
inputs?????????0
p 
? "1?.
'?$
0?????????0
? ?
,__inference_dropout_17_layer_call_fn_2351060g??<
5?2
,?)
inputs?????????0
p
? "$?!?????????0?
,__inference_dropout_17_layer_call_fn_2351065g??<
5?2
,?)
inputs?????????0
p 
? "$?!?????????0?
G__inference_dropout_18_layer_call_and_return_conditional_losses_2351218t??<
5?2
,?)
inputs?????????0
p
? "1?.
'?$
0?????????0
? ?
G__inference_dropout_18_layer_call_and_return_conditional_losses_2351223t??<
5?2
,?)
inputs?????????0
p 
? "1?.
'?$
0?????????0
? ?
,__inference_dropout_18_layer_call_fn_2351228g??<
5?2
,?)
inputs?????????0
p
? "$?!?????????0?
,__inference_dropout_18_layer_call_fn_2351233g??<
5?2
,?)
inputs?????????0
p 
? "$?!?????????0?
G__inference_dropout_19_layer_call_and_return_conditional_losses_2351419^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
G__inference_dropout_19_layer_call_and_return_conditional_losses_2351424^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
,__inference_dropout_19_layer_call_fn_2351429Q4?1
*?'
!?
inputs??????????
p
? "????????????
,__inference_dropout_19_layer_call_fn_2351434Q4?1
*?'
!?
inputs??????????
p 
? "????????????
G__inference_dropout_20_layer_call_and_return_conditional_losses_2350909t??<
5?2
,?)
inputs?????????**0
p
? "1?.
'?$
0?????????**0
? ?
G__inference_dropout_20_layer_call_and_return_conditional_losses_2350914t??<
5?2
,?)
inputs?????????**0
p 
? "1?.
'?$
0?????????**0
? ?
,__inference_dropout_20_layer_call_fn_2350919g??<
5?2
,?)
inputs?????????**0
p
? "$?!?????????**0?
,__inference_dropout_20_layer_call_fn_2350924g??<
5?2
,?)
inputs?????????**0
p 
? "$?!?????????**0?
G__inference_dropout_21_layer_call_and_return_conditional_losses_2351077t??<
5?2
,?)
inputs?????????0
p
? "1?.
'?$
0?????????0
? ?
G__inference_dropout_21_layer_call_and_return_conditional_losses_2351082t??<
5?2
,?)
inputs?????????0
p 
? "1?.
'?$
0?????????0
? ?
,__inference_dropout_21_layer_call_fn_2351087g??<
5?2
,?)
inputs?????????0
p
? "$?!?????????0?
,__inference_dropout_21_layer_call_fn_2351092g??<
5?2
,?)
inputs?????????0
p 
? "$?!?????????0?
G__inference_dropout_22_layer_call_and_return_conditional_losses_2351245t??<
5?2
,?)
inputs?????????0
p
? "1?.
'?$
0?????????0
? ?
G__inference_dropout_22_layer_call_and_return_conditional_losses_2351250t??<
5?2
,?)
inputs?????????0
p 
? "1?.
'?$
0?????????0
? ?
,__inference_dropout_22_layer_call_fn_2351255g??<
5?2
,?)
inputs?????????0
p
? "$?!?????????0?
,__inference_dropout_22_layer_call_fn_2351260g??<
5?2
,?)
inputs?????????0
p 
? "$?!?????????0?
G__inference_dropout_23_layer_call_and_return_conditional_losses_2351446^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
G__inference_dropout_23_layer_call_and_return_conditional_losses_2351451^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
,__inference_dropout_23_layer_call_fn_2351456Q4?1
*?'
!?
inputs??????????
p
? "????????????
,__inference_dropout_23_layer_call_fn_2351461Q4?1
*?'
!?
inputs??????????
p 
? "????????????
F__inference_flatten_3_layer_call_and_return_conditional_losses_2351266e;?8
1?.
,?)
inputs?????????0
? "&?#
?
0??????????
? ?
+__inference_flatten_3_layer_call_fn_2351271X;?8
1?.
,?)
inputs?????????0
? "????????????
F__inference_flatten_4_layer_call_and_return_conditional_losses_2351277e;?8
1?.
,?)
inputs?????????0
? "&?#
?
0??????????
? ?
+__inference_flatten_4_layer_call_fn_2351282X;?8
1?.
,?)
inputs?????????0
? "????????????
F__inference_flatten_5_layer_call_and_return_conditional_losses_2351288e;?8
1?.
,?)
inputs?????????0
? "&?#
?
0??????????
? ?
+__inference_flatten_5_layer_call_fn_2351293X;?8
1?.
,?)
inputs?????????0
? "????????????
M__inference_max_pooling3d_10_layer_call_and_return_conditional_losses_2348611?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_10_layer_call_fn_2348617?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
M__inference_max_pooling3d_11_layer_call_and_return_conditional_losses_2348647?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_11_layer_call_fn_2348653?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
M__inference_max_pooling3d_12_layer_call_and_return_conditional_losses_2348587?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_12_layer_call_fn_2348593?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
M__inference_max_pooling3d_13_layer_call_and_return_conditional_losses_2348623?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_13_layer_call_fn_2348629?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2348659?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_14_layer_call_fn_2348665?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2348599?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_15_layer_call_fn_2348605?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2348635?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_16_layer_call_fn_2348641?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2348671?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_17_layer_call_fn_2348677?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
L__inference_max_pooling3d_9_layer_call_and_return_conditional_losses_2348575?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
1__inference_max_pooling3d_9_layer_call_fn_2348581?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
S__inference_pleural_regular_output_layer_call_and_return_conditional_losses_2351533X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
8__inference_pleural_regular_output_layer_call_fn_2351538K/?,
%?"
 ?
inputs?????????
? "???????????
%__inference_signature_wrapper_2350258?2KLEF?@??{|uv??????????????????I?F
? 
??<
:
input_2/?,
input_2???????????"???
F
consolidation_output.?+
consolidation_output?????????
H
covid_severity_output/?,
covid_severity_output?????????
J
pleural_regular_output0?-
pleural_regular_output?????????