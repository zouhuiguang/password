{
Ę­
:
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T" 
Ttype:
2	"
use_lockingbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

4
Fill
dims

value"T
output"T"	
Ttype
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
5

Reciprocal
x"T
y"T"
Ttype:

2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "mytag*1.5.02
b'unknown'd
l
input_xPlaceholder*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
n
PlaceholderPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
dtype0*
shape:˙˙˙˙˙˙˙˙˙

\
zerosConst*
valueB	
*    *
_output_shapes
:	
*
dtype0
w
w
VariableV2*
_output_shapes
:	
*
dtype0*
shared_name *
	container *
shape:	


w/AssignAssignwzeros*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*
_class

loc:@w
U
w/readIdentityw*
T0*
_output_shapes
:	
*
_class

loc:@w
T
zeros_1Const*
valueB
*    *
_output_shapes
:
*
dtype0
m
b
VariableV2*
_output_shapes
:
*
dtype0*
shared_name *
	container *
shape:


b/AssignAssignbzeros_1*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class

loc:@b
P
b/readIdentityb*
T0*
_output_shapes
:
*
_class

loc:@b
"
initNoOp	^w/Assign	^b/Assign
y
MatMulMatMulinput_xw/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙

L
addAddMatMulb/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

I
predictSoftmaxadd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

E
LogLogpredict*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

N
mulMulPlaceholderLog*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

V
ConstConst*
valueB"       *
_output_shapes
:*
dtype0
T
SumSummulConst*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
0
NegNegSum*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
X
gradients/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0
]
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: 
N
gradients/Neg_grad/NegNeggradients/Fill*
T0*
_output_shapes
: 
q
 gradients/Sum_grad/Reshape/shapeConst*
valueB"      *
_output_shapes
:*
dtype0

gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg gradients/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
[
gradients/Sum_grad/ShapeShapemul*
out_type0*
T0*
_output_shapes
:

gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/Shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*

Tmultiples0
c
gradients/mul_grad/ShapeShapePlaceholder*
out_type0*
T0*
_output_shapes
:
]
gradients/mul_grad/Shape_1ShapeLog*
out_type0*
T0*
_output_shapes
:
´
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
m
gradients/mul_grad/mulMulgradients/Sum_grad/TileLog*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

w
gradients/mul_grad/mul_1MulPlaceholdergradients/Sum_grad/Tile*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ľ
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
Ú
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*-
_class#
!loc:@gradients/mul_grad/Reshape
ŕ
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*/
_class%
#!loc:@gradients/mul_grad/Reshape_1

gradients/Log_grad/Reciprocal
Reciprocalpredict.^gradients/mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients/Log_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

t
gradients/predict_grad/mulMulgradients/Log_grad/mulpredict*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

v
,gradients/predict_grad/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
ś
gradients/predict_grad/SumSumgradients/predict_grad/mul,gradients/predict_grad/Sum/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
u
$gradients/predict_grad/Reshape/shapeConst*
valueB"˙˙˙˙   *
_output_shapes
:*
dtype0
Ť
gradients/predict_grad/ReshapeReshapegradients/predict_grad/Sum$gradients/predict_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/predict_grad/subSubgradients/Log_grad/mulgradients/predict_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

z
gradients/predict_grad/mul_1Mulgradients/predict_grad/subpredict*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

^
gradients/add_grad/ShapeShapeMatMul*
out_type0*
T0*
_output_shapes
:
d
gradients/add_grad/Shape_1Const*
valueB:
*
_output_shapes
:*
dtype0
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ľ
gradients/add_grad/SumSumgradients/predict_grad/mul_1(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Š
gradients/add_grad/Sum_1Sumgradients/predict_grad/mul_1*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ú
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*-
_class#
!loc:@gradients/add_grad/Reshape
Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes
:
*/
_class%
#!loc:@gradients/add_grad/Reshape_1
´
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyw/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
gradients/MatMul_grad/MatMul_1MatMulinput_x+gradients/add_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(*
_output_shapes
:	

n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ĺ
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
â
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	
*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
b
GradientDescent/learning_rateConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0
ě
-GradientDescent/update_w/ApplyGradientDescentApplyGradientDescentwGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
*
use_locking( *
_class

loc:@w
ä
-GradientDescent/update_b/ApplyGradientDescentApplyGradientDescentbGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
*
use_locking( *
_class

loc:@b
w
GradientDescentNoOp.^GradientDescent/update_w/ApplyGradientDescent.^GradientDescent/update_b/ApplyGradientDescent
R
ArgMax/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
x
ArgMaxArgMaxpredictArgMax/dimension*
output_type0	*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
T
ArgMax_1/dimensionConst*
value	B :*
_output_shapes
: *
dtype0

ArgMax_1ArgMaxPlaceholderArgMax_1/dimension*
output_type0	*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
P
CastCastEqual*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

Q
Const_1Const*
valueB: *
_output_shapes
:*
dtype0
Y
MeanMeanCastConst_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0

ArgMax_2/inputConst*A
value8B6
"(|á9"á8#'':(Ľľ<Çi9QYu?K|*8[Şç8aÁ<žĎ.7*
_output_shapes

:
*
dtype0
T
ArgMax_2/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
z
ArgMax_2ArgMaxArgMax_2/inputArgMax_2/dimension*
output_type0	*
T0*
_output_shapes
:*

Tidx0
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_ee06850e6ed241f7a7699dfbd17ad032/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
t
save/SaveV2/tensor_namesConst"/device:CPU:0*
valueBBbBw*
_output_shapes
:*
dtype0
v
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
_output_shapes
:*
dtype0

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbw"/device:CPU:0*
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
e
save/RestoreV2/tensor_namesConst*
valueBBb*
_output_shapes
:*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/AssignAssignbsave/RestoreV2*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class

loc:@b
g
save/RestoreV2_1/tensor_namesConst*
valueBBw*
_output_shapes
:*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_1Assignwsave/RestoreV2_1*
T0*
_output_shapes
:	
*
use_locking(*
validate_shape(*
_class

loc:@w
8
save/restore_shardNoOp^save/Assign^save/Assign_1
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"c
trainable_variablesLJ
"
w:0w/Assignw/read:02zeros:0
$
b:0b/Assignb/read:02	zeros_1:0"
train_op

GradientDescent"Y
	variablesLJ
"
w:0w/Assignw/read:02zeros:0
$
b:0b/Assignb/read:02	zeros_1:0