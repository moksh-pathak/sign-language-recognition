��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
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
�
Adam/v/dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_29/bias
y
(Adam/v/dense_29/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_29/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_29/bias
y
(Adam/m/dense_29/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_29/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameAdam/v/dense_29/kernel
�
*Adam/v/dense_29/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_29/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameAdam/m/dense_29/kernel
�
*Adam/m/dense_29/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_29/kernel*
_output_shapes
:	�*
dtype0
�
Adam/v/dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/dense_28/bias
z
(Adam/v/dense_28/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_28/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/dense_28/bias
z
(Adam/m/dense_28/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_28/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/v/dense_28/kernel
�
*Adam/v/dense_28/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_28/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/m/dense_28/kernel
�
*Adam/m/dense_28/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_28/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/conv2d_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*&
shared_nameAdam/v/conv2d_39/bias
{
)Adam/v/conv2d_39/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_39/bias*
_output_shapes
:`*
dtype0
�
Adam/m/conv2d_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*&
shared_nameAdam/m/conv2d_39/bias
{
)Adam/m/conv2d_39/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_39/bias*
_output_shapes
:`*
dtype0
�
Adam/v/conv2d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0`*(
shared_nameAdam/v/conv2d_39/kernel
�
+Adam/v/conv2d_39/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_39/kernel*&
_output_shapes
:0`*
dtype0
�
Adam/m/conv2d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0`*(
shared_nameAdam/m/conv2d_39/kernel
�
+Adam/m/conv2d_39/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_39/kernel*&
_output_shapes
:0`*
dtype0
�
Adam/v/conv2d_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/v/conv2d_38/bias
{
)Adam/v/conv2d_38/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_38/bias*
_output_shapes
:0*
dtype0
�
Adam/m/conv2d_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/m/conv2d_38/bias
{
)Adam/m/conv2d_38/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_38/bias*
_output_shapes
:0*
dtype0
�
Adam/v/conv2d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameAdam/v/conv2d_38/kernel
�
+Adam/v/conv2d_38/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_38/kernel*&
_output_shapes
:0*
dtype0
�
Adam/m/conv2d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameAdam/m/conv2d_38/kernel
�
+Adam/m/conv2d_38/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_38/kernel*&
_output_shapes
:0*
dtype0
�
Adam/v/conv2d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_37/bias
{
)Adam/v/conv2d_37/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_37/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_37/bias
{
)Adam/m/conv2d_37/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_37/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_37/kernel
�
+Adam/v/conv2d_37/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_37/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_37/kernel
�
+Adam/m/conv2d_37/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_37/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_29/bias
k
!dense_29/bias/Read/ReadVariableOpReadVariableOpdense_29/bias*
_output_shapes
:*
dtype0
{
dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�* 
shared_namedense_29/kernel
t
#dense_29/kernel/Read/ReadVariableOpReadVariableOpdense_29/kernel*
_output_shapes
:	�*
dtype0
s
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_28/bias
l
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes	
:�*
dtype0
|
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_28/kernel
u
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel* 
_output_shapes
:
��*
dtype0
t
conv2d_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv2d_39/bias
m
"conv2d_39/bias/Read/ReadVariableOpReadVariableOpconv2d_39/bias*
_output_shapes
:`*
dtype0
�
conv2d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0`*!
shared_nameconv2d_39/kernel
}
$conv2d_39/kernel/Read/ReadVariableOpReadVariableOpconv2d_39/kernel*&
_output_shapes
:0`*
dtype0
t
conv2d_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv2d_38/bias
m
"conv2d_38/bias/Read/ReadVariableOpReadVariableOpconv2d_38/bias*
_output_shapes
:0*
dtype0
�
conv2d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*!
shared_nameconv2d_38/kernel
}
$conv2d_38/kernel/Read/ReadVariableOpReadVariableOpconv2d_38/kernel*&
_output_shapes
:0*
dtype0
t
conv2d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_37/bias
m
"conv2d_37/bias/Read/ReadVariableOpReadVariableOpconv2d_37/bias*
_output_shapes
:*
dtype0
�
conv2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_37/kernel
}
$conv2d_37/kernel/Read/ReadVariableOpReadVariableOpconv2d_37/kernel*&
_output_shapes
:*
dtype0
�
serving_default_conv2d_37_inputPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_37_inputconv2d_37/kernelconv2d_37/biasconv2d_38/kernelconv2d_38/biasconv2d_39/kernelconv2d_39/biasdense_28/kerneldense_28/biasdense_29/kerneldense_29/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *.
f)R'
%__inference_signature_wrapper_1653160

NoOpNoOp
�c
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�c
value�cB�c B�b
�
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses* 
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator* 
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias
 5_jit_compiled_convolution_op*
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator* 
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op*
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses* 
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator* 
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses* 
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias*
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses
m_random_generator* 
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses

tkernel
ubias*
J
0
1
32
43
I4
J5
e6
f7
t8
u9*
J
0
1
32
43
I4
J5
e6
f7
t8
u9*
* 
�
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
{trace_0
|trace_1
}trace_2
~trace_3* 
9
trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_37/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_37/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

30
41*

30
41*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_38/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_38/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

I0
J1*

I0
J1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_39/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_39/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

e0
f1*

e0
f1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_28/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_28/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

t0
u1*

t0
u1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_29/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_29/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
b
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
12*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9*
T
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_37/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_37/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_37/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_37/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_38/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_38/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_38/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_38/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_39/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_39/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_39/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_39/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_28/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_28/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_28/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_28/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_29/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_29/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_29/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_29/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_37/kernelconv2d_37/biasconv2d_38/kernelconv2d_38/biasconv2d_39/kernelconv2d_39/biasdense_28/kerneldense_28/biasdense_29/kerneldense_29/bias	iterationlearning_rateAdam/m/conv2d_37/kernelAdam/v/conv2d_37/kernelAdam/m/conv2d_37/biasAdam/v/conv2d_37/biasAdam/m/conv2d_38/kernelAdam/v/conv2d_38/kernelAdam/m/conv2d_38/biasAdam/v/conv2d_38/biasAdam/m/conv2d_39/kernelAdam/v/conv2d_39/kernelAdam/m/conv2d_39/biasAdam/v/conv2d_39/biasAdam/m/dense_28/kernelAdam/v/dense_28/kernelAdam/m/dense_28/biasAdam/v/dense_28/biasAdam/m/dense_29/kernelAdam/v/dense_29/kernelAdam/m/dense_29/biasAdam/v/dense_29/biastotal_1count_1totalcountConst*1
Tin*
(2&*
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
GPU2*0J 8� *)
f$R"
 __inference__traced_save_1653824
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_37/kernelconv2d_37/biasconv2d_38/kernelconv2d_38/biasconv2d_39/kernelconv2d_39/biasdense_28/kerneldense_28/biasdense_29/kerneldense_29/bias	iterationlearning_rateAdam/m/conv2d_37/kernelAdam/v/conv2d_37/kernelAdam/m/conv2d_37/biasAdam/v/conv2d_37/biasAdam/m/conv2d_38/kernelAdam/v/conv2d_38/kernelAdam/m/conv2d_38/biasAdam/v/conv2d_38/biasAdam/m/conv2d_39/kernelAdam/v/conv2d_39/kernelAdam/m/conv2d_39/biasAdam/v/conv2d_39/biasAdam/m/dense_28/kernelAdam/v/dense_28/kernelAdam/m/dense_28/biasAdam/v/dense_28/biasAdam/m/dense_29/kernelAdam/v/dense_29/kernelAdam/m/dense_29/biasAdam/v/dense_29/biastotal_1count_1totalcount*0
Tin)
'2%*
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
GPU2*0J 8� *,
f'R%
#__inference__traced_restore_1653942��

�

�
E__inference_dense_29_layer_call_and_return_conditional_losses_1653585

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_18_layer_call_fn_1653490

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1652834h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������`:W S
/
_output_shapes
:���������`
 
_user_specified_nameinputs
�
�
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1652718

inputs8
conv2d_readvariableop_resource:0`-
biasadd_readvariableop_resource:`
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0`*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������`*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������`X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������`i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������`w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�

�
E__inference_dense_28_layer_call_and_return_conditional_losses_1652758

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�:
�
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652796
conv2d_37_input+
conv2d_37_1652655:
conv2d_37_1652657:+
conv2d_38_1652687:0
conv2d_38_1652689:0+
conv2d_39_1652719:0`
conv2d_39_1652721:`$
dense_28_1652759:
��
dense_28_1652761:	�#
dense_29_1652790:	�
dense_29_1652792:
identity��!conv2d_37/StatefulPartitionedCall�!conv2d_38/StatefulPartitionedCall�!conv2d_39/StatefulPartitionedCall� dense_28/StatefulPartitionedCall� dense_29/StatefulPartitionedCall�"dropout_16/StatefulPartitionedCall�"dropout_17/StatefulPartitionedCall�"dropout_18/StatefulPartitionedCall�"dropout_19/StatefulPartitionedCallp
conv2d_37/CastCastconv2d_37_input*

DstT0*

SrcT0*/
_output_shapes
:����������
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCallconv2d_37/Cast:y:0conv2d_37_1652655conv2d_37_1652657*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_37_layer_call_and_return_conditional_losses_1652654�
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_1652608�
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_1652673�
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv2d_38_1652687conv2d_38_1652689*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_38_layer_call_and_return_conditional_losses_1652686�
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_1652620�
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1652705�
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0conv2d_39_1652719conv2d_39_1652721*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1652718�
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_1652632�
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_39/PartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1652737�
flatten_14/PartitionedCallPartitionedCall+dropout_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_14_layer_call_and_return_conditional_losses_1652745�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_28_1652759dense_28_1652761*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_1652758�
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1652776�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_29_1652790dense_29_1652792*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_1652789x
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_37_input
�
N
2__inference_max_pooling2d_39_layer_call_fn_1653475

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_1652632�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_38_layer_call_and_return_conditional_losses_1652686

inputs8
conv2d_readvariableop_resource:0-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������0i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
G__inference_dropout_19_layer_call_and_return_conditional_losses_1652846

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_39_layer_call_fn_1653459

inputs!
unknown:0`
	unknown_0:`
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1652718w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
*__inference_dense_28_layer_call_fn_1653527

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_1652758p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
,__inference_dropout_16_layer_call_fn_1653371

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_1652673w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
/__inference_sequential_17_layer_call_fn_1653185

inputs!
unknown:
	unknown_0:#
	unknown_1:0
	unknown_2:0#
	unknown_3:0`
	unknown_4:`
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652895o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_38_layer_call_fn_1653402

inputs!
unknown:0
	unknown_0:0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_38_layer_call_and_return_conditional_losses_1652686w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_38_layer_call_and_return_conditional_losses_1653413

inputs8
conv2d_readvariableop_resource:0-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������0i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_37_layer_call_and_return_conditional_losses_1652654

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
/__inference_sequential_17_layer_call_fn_1653210

inputs!
unknown:
	unknown_0:#
	unknown_1:0
	unknown_2:0#
	unknown_3:0`
	unknown_4:`
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652958o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
ǆ
�!
 __inference__traced_save_1653824
file_prefixA
'read_disablecopyonread_conv2d_37_kernel:5
'read_1_disablecopyonread_conv2d_37_bias:C
)read_2_disablecopyonread_conv2d_38_kernel:05
'read_3_disablecopyonread_conv2d_38_bias:0C
)read_4_disablecopyonread_conv2d_39_kernel:0`5
'read_5_disablecopyonread_conv2d_39_bias:`<
(read_6_disablecopyonread_dense_28_kernel:
��5
&read_7_disablecopyonread_dense_28_bias:	�;
(read_8_disablecopyonread_dense_29_kernel:	�4
&read_9_disablecopyonread_dense_29_bias:-
#read_10_disablecopyonread_iteration:	 1
'read_11_disablecopyonread_learning_rate: K
1read_12_disablecopyonread_adam_m_conv2d_37_kernel:K
1read_13_disablecopyonread_adam_v_conv2d_37_kernel:=
/read_14_disablecopyonread_adam_m_conv2d_37_bias:=
/read_15_disablecopyonread_adam_v_conv2d_37_bias:K
1read_16_disablecopyonread_adam_m_conv2d_38_kernel:0K
1read_17_disablecopyonread_adam_v_conv2d_38_kernel:0=
/read_18_disablecopyonread_adam_m_conv2d_38_bias:0=
/read_19_disablecopyonread_adam_v_conv2d_38_bias:0K
1read_20_disablecopyonread_adam_m_conv2d_39_kernel:0`K
1read_21_disablecopyonread_adam_v_conv2d_39_kernel:0`=
/read_22_disablecopyonread_adam_m_conv2d_39_bias:`=
/read_23_disablecopyonread_adam_v_conv2d_39_bias:`D
0read_24_disablecopyonread_adam_m_dense_28_kernel:
��D
0read_25_disablecopyonread_adam_v_dense_28_kernel:
��=
.read_26_disablecopyonread_adam_m_dense_28_bias:	�=
.read_27_disablecopyonread_adam_v_dense_28_bias:	�C
0read_28_disablecopyonread_adam_m_dense_29_kernel:	�C
0read_29_disablecopyonread_adam_v_dense_29_kernel:	�<
.read_30_disablecopyonread_adam_m_dense_29_bias:<
.read_31_disablecopyonread_adam_v_dense_29_bias:+
!read_32_disablecopyonread_total_1: +
!read_33_disablecopyonread_count_1: )
read_34_disablecopyonread_total: )
read_35_disablecopyonread_count: 
savev2_const
identity_73��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_37_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_37_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_37_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_37_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_38_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_38_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:0*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:0k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:0{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_38_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_38_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:0}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_39_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_39_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:0`*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:0`k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:0`{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_39_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_39_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:`|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_dense_28_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_dense_28_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_dense_28_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_dense_28_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_dense_29_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_dense_29_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	�z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_dense_29_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_dense_29_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp#read_10_disablecopyonread_iteration^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_learning_rate^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_12/DisableCopyOnReadDisableCopyOnRead1read_12_disablecopyonread_adam_m_conv2d_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp1read_12_disablecopyonread_adam_m_conv2d_37_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_13/DisableCopyOnReadDisableCopyOnRead1read_13_disablecopyonread_adam_v_conv2d_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp1read_13_disablecopyonread_adam_v_conv2d_37_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_14/DisableCopyOnReadDisableCopyOnRead/read_14_disablecopyonread_adam_m_conv2d_37_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp/read_14_disablecopyonread_adam_m_conv2d_37_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_15/DisableCopyOnReadDisableCopyOnRead/read_15_disablecopyonread_adam_v_conv2d_37_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp/read_15_disablecopyonread_adam_v_conv2d_37_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnRead1read_16_disablecopyonread_adam_m_conv2d_38_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp1read_16_disablecopyonread_adam_m_conv2d_38_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:0*
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:0m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
:0�
Read_17/DisableCopyOnReadDisableCopyOnRead1read_17_disablecopyonread_adam_v_conv2d_38_kernel"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp1read_17_disablecopyonread_adam_v_conv2d_38_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:0*
dtype0w
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:0m
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*&
_output_shapes
:0�
Read_18/DisableCopyOnReadDisableCopyOnRead/read_18_disablecopyonread_adam_m_conv2d_38_bias"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp/read_18_disablecopyonread_adam_m_conv2d_38_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:0�
Read_19/DisableCopyOnReadDisableCopyOnRead/read_19_disablecopyonread_adam_v_conv2d_38_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp/read_19_disablecopyonread_adam_v_conv2d_38_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:0*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:0a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:0�
Read_20/DisableCopyOnReadDisableCopyOnRead1read_20_disablecopyonread_adam_m_conv2d_39_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp1read_20_disablecopyonread_adam_m_conv2d_39_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:0`*
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:0`m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
:0`�
Read_21/DisableCopyOnReadDisableCopyOnRead1read_21_disablecopyonread_adam_v_conv2d_39_kernel"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp1read_21_disablecopyonread_adam_v_conv2d_39_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:0`*
dtype0w
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:0`m
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*&
_output_shapes
:0`�
Read_22/DisableCopyOnReadDisableCopyOnRead/read_22_disablecopyonread_adam_m_conv2d_39_bias"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp/read_22_disablecopyonread_adam_m_conv2d_39_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:`�
Read_23/DisableCopyOnReadDisableCopyOnRead/read_23_disablecopyonread_adam_v_conv2d_39_bias"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp/read_23_disablecopyonread_adam_v_conv2d_39_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:`�
Read_24/DisableCopyOnReadDisableCopyOnRead0read_24_disablecopyonread_adam_m_dense_28_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp0read_24_disablecopyonread_adam_m_dense_28_kernel^Read_24/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_25/DisableCopyOnReadDisableCopyOnRead0read_25_disablecopyonread_adam_v_dense_28_kernel"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp0read_25_disablecopyonread_adam_v_dense_28_kernel^Read_25/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_26/DisableCopyOnReadDisableCopyOnRead.read_26_disablecopyonread_adam_m_dense_28_bias"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp.read_26_disablecopyonread_adam_m_dense_28_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_27/DisableCopyOnReadDisableCopyOnRead.read_27_disablecopyonread_adam_v_dense_28_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp.read_27_disablecopyonread_adam_v_dense_28_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_28/DisableCopyOnReadDisableCopyOnRead0read_28_disablecopyonread_adam_m_dense_29_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp0read_28_disablecopyonread_adam_m_dense_29_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_29/DisableCopyOnReadDisableCopyOnRead0read_29_disablecopyonread_adam_v_dense_29_kernel"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp0read_29_disablecopyonread_adam_v_dense_29_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_30/DisableCopyOnReadDisableCopyOnRead.read_30_disablecopyonread_adam_m_dense_29_bias"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp.read_30_disablecopyonread_adam_m_dense_29_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_31/DisableCopyOnReadDisableCopyOnRead.read_31_disablecopyonread_adam_v_dense_29_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp.read_31_disablecopyonread_adam_v_dense_29_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_32/DisableCopyOnReadDisableCopyOnRead!read_32_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp!read_32_disablecopyonread_total_1^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_33/DisableCopyOnReadDisableCopyOnRead!read_33_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp!read_33_disablecopyonread_count_1^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_34/DisableCopyOnReadDisableCopyOnReadread_34_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOpread_34_disablecopyonread_total^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_35/DisableCopyOnReadDisableCopyOnReadread_35_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOpread_35_disablecopyonread_count^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*�
value�B�%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *3
dtypes)
'2%	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_72Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_73IdentityIdentity_72:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_73Identity_73:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%

_output_shapes
: 
�
e
G__inference_dropout_16_layer_call_and_return_conditional_losses_1653393

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1653470

inputs8
conv2d_readvariableop_resource:0`-
biasadd_readvariableop_resource:`
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0`*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������`*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������`X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������`i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������`w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�

f
G__inference_dropout_17_layer_call_and_return_conditional_losses_1653445

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������0Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������0*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������0T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������0i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������0:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_1652822

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������0:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_1653423

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

f
G__inference_dropout_19_layer_call_and_return_conditional_losses_1653560

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_1653366

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�:
�
J__inference_sequential_17_layer_call_and_return_conditional_losses_1653336

inputsB
(conv2d_37_conv2d_readvariableop_resource:7
)conv2d_37_biasadd_readvariableop_resource:B
(conv2d_38_conv2d_readvariableop_resource:07
)conv2d_38_biasadd_readvariableop_resource:0B
(conv2d_39_conv2d_readvariableop_resource:0`7
)conv2d_39_biasadd_readvariableop_resource:`;
'dense_28_matmul_readvariableop_resource:
��7
(dense_28_biasadd_readvariableop_resource:	�:
'dense_29_matmul_readvariableop_resource:	�6
(dense_29_biasadd_readvariableop_resource:
identity�� conv2d_37/BiasAdd/ReadVariableOp�conv2d_37/Conv2D/ReadVariableOp� conv2d_38/BiasAdd/ReadVariableOp�conv2d_38/Conv2D/ReadVariableOp� conv2d_39/BiasAdd/ReadVariableOp�conv2d_39/Conv2D/ReadVariableOp�dense_28/BiasAdd/ReadVariableOp�dense_28/MatMul/ReadVariableOp�dense_29/BiasAdd/ReadVariableOp�dense_29/MatMul/ReadVariableOpg
conv2d_37/CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:����������
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_37/Conv2DConv2Dconv2d_37/Cast:y:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_37/MaxPoolMaxPoolconv2d_37/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
|
dropout_16/IdentityIdentity!max_pooling2d_37/MaxPool:output:0*
T0*/
_output_shapes
:����������
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0�
conv2d_38/Conv2DConv2Ddropout_16/Identity:output:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
�
 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0l
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*/
_output_shapes
:���������0�
max_pooling2d_38/MaxPoolMaxPoolconv2d_38/Relu:activations:0*/
_output_shapes
:���������0*
ksize
*
paddingVALID*
strides
|
dropout_17/IdentityIdentity!max_pooling2d_38/MaxPool:output:0*
T0*/
_output_shapes
:���������0�
conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
:0`*
dtype0�
conv2d_39/Conv2DConv2Ddropout_17/Identity:output:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������`*
paddingSAME*
strides
�
 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0�
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������`l
conv2d_39/ReluReluconv2d_39/BiasAdd:output:0*
T0*/
_output_shapes
:���������`�
max_pooling2d_39/MaxPoolMaxPoolconv2d_39/Relu:activations:0*/
_output_shapes
:���������`*
ksize
*
paddingVALID*
strides
|
dropout_18/IdentityIdentity!max_pooling2d_39/MaxPool:output:0*
T0*/
_output_shapes
:���������`a
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"����`  �
flatten_14/ReshapeReshapedropout_18/Identity:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:�����������
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_28/MatMulMatMulflatten_14/Reshape:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*(
_output_shapes
:����������o
dropout_19/IdentityIdentitydense_28/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_29/MatMulMatMuldropout_19/Identity:output:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_29/SoftmaxSoftmaxdense_29/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_29/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
N
2__inference_max_pooling2d_38_layer_call_fn_1653418

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_1652620�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
H
,__inference_dropout_17_layer_call_fn_1653433

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1652822h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������0:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
e
G__inference_dropout_19_layer_call_and_return_conditional_losses_1653565

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
N
2__inference_max_pooling2d_37_layer_call_fn_1653361

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_1652608�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�4
�
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652854
conv2d_37_input+
conv2d_37_1652800:
conv2d_37_1652802:+
conv2d_38_1652812:0
conv2d_38_1652814:0+
conv2d_39_1652824:0`
conv2d_39_1652826:`$
dense_28_1652837:
��
dense_28_1652839:	�#
dense_29_1652848:	�
dense_29_1652850:
identity��!conv2d_37/StatefulPartitionedCall�!conv2d_38/StatefulPartitionedCall�!conv2d_39/StatefulPartitionedCall� dense_28/StatefulPartitionedCall� dense_29/StatefulPartitionedCallp
conv2d_37/CastCastconv2d_37_input*

DstT0*

SrcT0*/
_output_shapes
:����������
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCallconv2d_37/Cast:y:0conv2d_37_1652800conv2d_37_1652802*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_37_layer_call_and_return_conditional_losses_1652654�
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_1652608�
dropout_16/PartitionedCallPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_1652810�
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv2d_38_1652812conv2d_38_1652814*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_38_layer_call_and_return_conditional_losses_1652686�
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_1652620�
dropout_17/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1652822�
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0conv2d_39_1652824conv2d_39_1652826*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1652718�
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_1652632�
dropout_18/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1652834�
flatten_14/PartitionedCallPartitionedCall#dropout_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_14_layer_call_and_return_conditional_losses_1652745�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_28_1652837dense_28_1652839*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_1652758�
dropout_19/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1652846�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_29_1652848dense_29_1652850*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_1652789x
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_37_input
�

f
G__inference_dropout_18_layer_call_and_return_conditional_losses_1653502

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������`Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������`*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������`T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������`i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������`:W S
/
_output_shapes
:���������`
 
_user_specified_nameinputs
�
H
,__inference_dropout_16_layer_call_fn_1653376

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_1652810h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_flatten_14_layer_call_and_return_conditional_losses_1653518

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����`  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������`:W S
/
_output_shapes
:���������`
 
_user_specified_nameinputs
�
e
G__inference_dropout_18_layer_call_and_return_conditional_losses_1652834

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������`c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������`"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������`:W S
/
_output_shapes
:���������`
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_1653480

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
/__inference_sequential_17_layer_call_fn_1652918
conv2d_37_input!
unknown:
	unknown_0:#
	unknown_1:0
	unknown_2:0#
	unknown_3:0`
	unknown_4:`
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_37_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652895o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_37_input
�
i
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_1652632

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
e
,__inference_dropout_18_layer_call_fn_1653485

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1652737w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������``
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������`22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������`
 
_user_specified_nameinputs
�

�
E__inference_dense_29_layer_call_and_return_conditional_losses_1652789

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_18_layer_call_and_return_conditional_losses_1652737

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������`Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������`*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������`T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������`i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������`:W S
/
_output_shapes
:���������`
 
_user_specified_nameinputs
�

�
/__inference_sequential_17_layer_call_fn_1652981
conv2d_37_input!
unknown:
	unknown_0:#
	unknown_1:0
	unknown_2:0#
	unknown_3:0`
	unknown_4:`
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_37_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652958o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_37_input
�

f
G__inference_dropout_19_layer_call_and_return_conditional_losses_1652776

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_1652608

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

f
G__inference_dropout_16_layer_call_and_return_conditional_losses_1652673

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
%__inference_signature_wrapper_1653160
conv2d_37_input!
unknown:
	unknown_0:#
	unknown_1:0
	unknown_2:0#
	unknown_3:0`
	unknown_4:`
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_37_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__wrapped_model_1652602o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_37_input
�
�
*__inference_dense_29_layer_call_fn_1653574

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_1652789o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_19_layer_call_fn_1653548

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1652846a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�:
�
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652895

inputs+
conv2d_37_1652861:
conv2d_37_1652863:+
conv2d_38_1652868:0
conv2d_38_1652870:0+
conv2d_39_1652875:0`
conv2d_39_1652877:`$
dense_28_1652883:
��
dense_28_1652885:	�#
dense_29_1652889:	�
dense_29_1652891:
identity��!conv2d_37/StatefulPartitionedCall�!conv2d_38/StatefulPartitionedCall�!conv2d_39/StatefulPartitionedCall� dense_28/StatefulPartitionedCall� dense_29/StatefulPartitionedCall�"dropout_16/StatefulPartitionedCall�"dropout_17/StatefulPartitionedCall�"dropout_18/StatefulPartitionedCall�"dropout_19/StatefulPartitionedCallg
conv2d_37/CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:����������
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCallconv2d_37/Cast:y:0conv2d_37_1652861conv2d_37_1652863*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_37_layer_call_and_return_conditional_losses_1652654�
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_1652608�
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_1652673�
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv2d_38_1652868conv2d_38_1652870*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_38_layer_call_and_return_conditional_losses_1652686�
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_1652620�
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1652705�
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0conv2d_39_1652875conv2d_39_1652877*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1652718�
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_1652632�
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_39/PartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1652737�
flatten_14/PartitionedCallPartitionedCall+dropout_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_14_layer_call_and_return_conditional_losses_1652745�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_28_1652883dense_28_1652885*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_1652758�
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1652776�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_29_1652889dense_29_1652891*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_1652789x
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_1652620

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
˘
�
#__inference__traced_restore_1653942
file_prefix;
!assignvariableop_conv2d_37_kernel:/
!assignvariableop_1_conv2d_37_bias:=
#assignvariableop_2_conv2d_38_kernel:0/
!assignvariableop_3_conv2d_38_bias:0=
#assignvariableop_4_conv2d_39_kernel:0`/
!assignvariableop_5_conv2d_39_bias:`6
"assignvariableop_6_dense_28_kernel:
��/
 assignvariableop_7_dense_28_bias:	�5
"assignvariableop_8_dense_29_kernel:	�.
 assignvariableop_9_dense_29_bias:'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: E
+assignvariableop_12_adam_m_conv2d_37_kernel:E
+assignvariableop_13_adam_v_conv2d_37_kernel:7
)assignvariableop_14_adam_m_conv2d_37_bias:7
)assignvariableop_15_adam_v_conv2d_37_bias:E
+assignvariableop_16_adam_m_conv2d_38_kernel:0E
+assignvariableop_17_adam_v_conv2d_38_kernel:07
)assignvariableop_18_adam_m_conv2d_38_bias:07
)assignvariableop_19_adam_v_conv2d_38_bias:0E
+assignvariableop_20_adam_m_conv2d_39_kernel:0`E
+assignvariableop_21_adam_v_conv2d_39_kernel:0`7
)assignvariableop_22_adam_m_conv2d_39_bias:`7
)assignvariableop_23_adam_v_conv2d_39_bias:`>
*assignvariableop_24_adam_m_dense_28_kernel:
��>
*assignvariableop_25_adam_v_dense_28_kernel:
��7
(assignvariableop_26_adam_m_dense_28_bias:	�7
(assignvariableop_27_adam_v_dense_28_bias:	�=
*assignvariableop_28_adam_m_dense_29_kernel:	�=
*assignvariableop_29_adam_v_dense_29_kernel:	�6
(assignvariableop_30_adam_m_dense_29_bias:6
(assignvariableop_31_adam_v_dense_29_bias:%
assignvariableop_32_total_1: %
assignvariableop_33_count_1: #
assignvariableop_34_total: #
assignvariableop_35_count: 
identity_37��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*�
value�B�%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_37_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_37_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_38_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_38_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_39_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_39_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_28_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_28_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_29_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_29_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp+assignvariableop_12_adam_m_conv2d_37_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_v_conv2d_37_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_m_conv2d_37_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_v_conv2d_37_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_m_conv2d_38_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_v_conv2d_38_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_m_conv2d_38_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_v_conv2d_38_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_m_conv2d_39_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_v_conv2d_39_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_m_conv2d_39_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_v_conv2d_39_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_m_dense_28_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_v_dense_28_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_m_dense_28_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_v_dense_28_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_m_dense_29_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_v_dense_29_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_m_dense_29_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_v_dense_29_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_totalIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_countIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
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
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
e
,__inference_dropout_19_layer_call_fn_1653543

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1652776p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_18_layer_call_and_return_conditional_losses_1653507

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������`c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������`"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������`:W S
/
_output_shapes
:���������`
 
_user_specified_nameinputs
�

f
G__inference_dropout_17_layer_call_and_return_conditional_losses_1652705

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������0Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������0*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������0T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������0i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������0:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
F__inference_conv2d_37_layer_call_and_return_conditional_losses_1653356

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
E__inference_dense_28_layer_call_and_return_conditional_losses_1653538

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_37_layer_call_fn_1653345

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_37_layer_call_and_return_conditional_losses_1652654w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_flatten_14_layer_call_and_return_conditional_losses_1652745

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����`  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������`:W S
/
_output_shapes
:���������`
 
_user_specified_nameinputs
�
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_1653450

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������0:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
e
,__inference_dropout_17_layer_call_fn_1653428

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1652705w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������022
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�Z
�
J__inference_sequential_17_layer_call_and_return_conditional_losses_1653287

inputsB
(conv2d_37_conv2d_readvariableop_resource:7
)conv2d_37_biasadd_readvariableop_resource:B
(conv2d_38_conv2d_readvariableop_resource:07
)conv2d_38_biasadd_readvariableop_resource:0B
(conv2d_39_conv2d_readvariableop_resource:0`7
)conv2d_39_biasadd_readvariableop_resource:`;
'dense_28_matmul_readvariableop_resource:
��7
(dense_28_biasadd_readvariableop_resource:	�:
'dense_29_matmul_readvariableop_resource:	�6
(dense_29_biasadd_readvariableop_resource:
identity�� conv2d_37/BiasAdd/ReadVariableOp�conv2d_37/Conv2D/ReadVariableOp� conv2d_38/BiasAdd/ReadVariableOp�conv2d_38/Conv2D/ReadVariableOp� conv2d_39/BiasAdd/ReadVariableOp�conv2d_39/Conv2D/ReadVariableOp�dense_28/BiasAdd/ReadVariableOp�dense_28/MatMul/ReadVariableOp�dense_29/BiasAdd/ReadVariableOp�dense_29/MatMul/ReadVariableOpg
conv2d_37/CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:����������
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_37/Conv2DConv2Dconv2d_37/Cast:y:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_37/MaxPoolMaxPoolconv2d_37/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
]
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_16/dropout/MulMul!max_pooling2d_37/MaxPool:output:0!dropout_16/dropout/Const:output:0*
T0*/
_output_shapes
:���������w
dropout_16/dropout/ShapeShape!max_pooling2d_37/MaxPool:output:0*
T0*
_output_shapes
::���
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*/
_output_shapes
:���������*
dtype0f
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������_
dropout_16/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_16/dropout/SelectV2SelectV2#dropout_16/dropout/GreaterEqual:z:0dropout_16/dropout/Mul:z:0#dropout_16/dropout/Const_1:output:0*
T0*/
_output_shapes
:����������
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0�
conv2d_38/Conv2DConv2D$dropout_16/dropout/SelectV2:output:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
�
 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0l
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*/
_output_shapes
:���������0�
max_pooling2d_38/MaxPoolMaxPoolconv2d_38/Relu:activations:0*/
_output_shapes
:���������0*
ksize
*
paddingVALID*
strides
]
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_17/dropout/MulMul!max_pooling2d_38/MaxPool:output:0!dropout_17/dropout/Const:output:0*
T0*/
_output_shapes
:���������0w
dropout_17/dropout/ShapeShape!max_pooling2d_38/MaxPool:output:0*
T0*
_output_shapes
::���
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*/
_output_shapes
:���������0*
dtype0f
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������0_
dropout_17/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_17/dropout/SelectV2SelectV2#dropout_17/dropout/GreaterEqual:z:0dropout_17/dropout/Mul:z:0#dropout_17/dropout/Const_1:output:0*
T0*/
_output_shapes
:���������0�
conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
:0`*
dtype0�
conv2d_39/Conv2DConv2D$dropout_17/dropout/SelectV2:output:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������`*
paddingSAME*
strides
�
 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0�
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������`l
conv2d_39/ReluReluconv2d_39/BiasAdd:output:0*
T0*/
_output_shapes
:���������`�
max_pooling2d_39/MaxPoolMaxPoolconv2d_39/Relu:activations:0*/
_output_shapes
:���������`*
ksize
*
paddingVALID*
strides
]
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_18/dropout/MulMul!max_pooling2d_39/MaxPool:output:0!dropout_18/dropout/Const:output:0*
T0*/
_output_shapes
:���������`w
dropout_18/dropout/ShapeShape!max_pooling2d_39/MaxPool:output:0*
T0*
_output_shapes
::���
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*/
_output_shapes
:���������`*
dtype0f
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������`_
dropout_18/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_18/dropout/SelectV2SelectV2#dropout_18/dropout/GreaterEqual:z:0dropout_18/dropout/Mul:z:0#dropout_18/dropout/Const_1:output:0*
T0*/
_output_shapes
:���������`a
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"����`  �
flatten_14/ReshapeReshape$dropout_18/dropout/SelectV2:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:�����������
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_28/MatMulMatMulflatten_14/Reshape:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_19/dropout/MulMuldense_28/Relu:activations:0!dropout_19/dropout/Const:output:0*
T0*(
_output_shapes
:����������q
dropout_19/dropout/ShapeShapedense_28/Relu:activations:0*
T0*
_output_shapes
::���
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������_
dropout_19/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_19/dropout/SelectV2SelectV2#dropout_19/dropout/GreaterEqual:z:0dropout_19/dropout/Mul:z:0#dropout_19/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_29/MatMulMatMul$dropout_19/dropout/SelectV2:output:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_29/SoftmaxSoftmaxdense_29/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_29/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
H
,__inference_flatten_14_layer_call_fn_1653512

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_14_layer_call_and_return_conditional_losses_1652745a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������`:W S
/
_output_shapes
:���������`
 
_user_specified_nameinputs
�4
�
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652958

inputs+
conv2d_37_1652924:
conv2d_37_1652926:+
conv2d_38_1652931:0
conv2d_38_1652933:0+
conv2d_39_1652938:0`
conv2d_39_1652940:`$
dense_28_1652946:
��
dense_28_1652948:	�#
dense_29_1652952:	�
dense_29_1652954:
identity��!conv2d_37/StatefulPartitionedCall�!conv2d_38/StatefulPartitionedCall�!conv2d_39/StatefulPartitionedCall� dense_28/StatefulPartitionedCall� dense_29/StatefulPartitionedCallg
conv2d_37/CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:����������
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCallconv2d_37/Cast:y:0conv2d_37_1652924conv2d_37_1652926*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_37_layer_call_and_return_conditional_losses_1652654�
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_1652608�
dropout_16/PartitionedCallPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_16_layer_call_and_return_conditional_losses_1652810�
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv2d_38_1652931conv2d_38_1652933*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_38_layer_call_and_return_conditional_losses_1652686�
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_1652620�
dropout_17/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1652822�
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0conv2d_39_1652938conv2d_39_1652940*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1652718�
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_1652632�
dropout_18/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1652834�
flatten_14/PartitionedCallPartitionedCall#dropout_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_flatten_14_layer_call_and_return_conditional_losses_1652745�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_28_1652946dense_28_1652948*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_1652758�
dropout_19/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1652846�
 dense_29/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_29_1652952dense_29_1652954*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_1652789x
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
G__inference_dropout_16_layer_call_and_return_conditional_losses_1652810

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

f
G__inference_dropout_16_layer_call_and_return_conditional_losses_1653388

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�H
�

"__inference__wrapped_model_1652602
conv2d_37_inputP
6sequential_17_conv2d_37_conv2d_readvariableop_resource:E
7sequential_17_conv2d_37_biasadd_readvariableop_resource:P
6sequential_17_conv2d_38_conv2d_readvariableop_resource:0E
7sequential_17_conv2d_38_biasadd_readvariableop_resource:0P
6sequential_17_conv2d_39_conv2d_readvariableop_resource:0`E
7sequential_17_conv2d_39_biasadd_readvariableop_resource:`I
5sequential_17_dense_28_matmul_readvariableop_resource:
��E
6sequential_17_dense_28_biasadd_readvariableop_resource:	�H
5sequential_17_dense_29_matmul_readvariableop_resource:	�D
6sequential_17_dense_29_biasadd_readvariableop_resource:
identity��.sequential_17/conv2d_37/BiasAdd/ReadVariableOp�-sequential_17/conv2d_37/Conv2D/ReadVariableOp�.sequential_17/conv2d_38/BiasAdd/ReadVariableOp�-sequential_17/conv2d_38/Conv2D/ReadVariableOp�.sequential_17/conv2d_39/BiasAdd/ReadVariableOp�-sequential_17/conv2d_39/Conv2D/ReadVariableOp�-sequential_17/dense_28/BiasAdd/ReadVariableOp�,sequential_17/dense_28/MatMul/ReadVariableOp�-sequential_17/dense_29/BiasAdd/ReadVariableOp�,sequential_17/dense_29/MatMul/ReadVariableOp~
sequential_17/conv2d_37/CastCastconv2d_37_input*

DstT0*

SrcT0*/
_output_shapes
:����������
-sequential_17/conv2d_37/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_17/conv2d_37/Conv2DConv2D sequential_17/conv2d_37/Cast:y:05sequential_17/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
.sequential_17/conv2d_37/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_17/conv2d_37/BiasAddBiasAdd'sequential_17/conv2d_37/Conv2D:output:06sequential_17/conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_17/conv2d_37/ReluRelu(sequential_17/conv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:����������
&sequential_17/max_pooling2d_37/MaxPoolMaxPool*sequential_17/conv2d_37/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
!sequential_17/dropout_16/IdentityIdentity/sequential_17/max_pooling2d_37/MaxPool:output:0*
T0*/
_output_shapes
:����������
-sequential_17/conv2d_38/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0�
sequential_17/conv2d_38/Conv2DConv2D*sequential_17/dropout_16/Identity:output:05sequential_17/conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
�
.sequential_17/conv2d_38/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_38_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
sequential_17/conv2d_38/BiasAddBiasAdd'sequential_17/conv2d_38/Conv2D:output:06sequential_17/conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0�
sequential_17/conv2d_38/ReluRelu(sequential_17/conv2d_38/BiasAdd:output:0*
T0*/
_output_shapes
:���������0�
&sequential_17/max_pooling2d_38/MaxPoolMaxPool*sequential_17/conv2d_38/Relu:activations:0*/
_output_shapes
:���������0*
ksize
*
paddingVALID*
strides
�
!sequential_17/dropout_17/IdentityIdentity/sequential_17/max_pooling2d_38/MaxPool:output:0*
T0*/
_output_shapes
:���������0�
-sequential_17/conv2d_39/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
:0`*
dtype0�
sequential_17/conv2d_39/Conv2DConv2D*sequential_17/dropout_17/Identity:output:05sequential_17/conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������`*
paddingSAME*
strides
�
.sequential_17/conv2d_39/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_39_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0�
sequential_17/conv2d_39/BiasAddBiasAdd'sequential_17/conv2d_39/Conv2D:output:06sequential_17/conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������`�
sequential_17/conv2d_39/ReluRelu(sequential_17/conv2d_39/BiasAdd:output:0*
T0*/
_output_shapes
:���������`�
&sequential_17/max_pooling2d_39/MaxPoolMaxPool*sequential_17/conv2d_39/Relu:activations:0*/
_output_shapes
:���������`*
ksize
*
paddingVALID*
strides
�
!sequential_17/dropout_18/IdentityIdentity/sequential_17/max_pooling2d_39/MaxPool:output:0*
T0*/
_output_shapes
:���������`o
sequential_17/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"����`  �
 sequential_17/flatten_14/ReshapeReshape*sequential_17/dropout_18/Identity:output:0'sequential_17/flatten_14/Const:output:0*
T0*(
_output_shapes
:�����������
,sequential_17/dense_28/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_28_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_17/dense_28/MatMulMatMul)sequential_17/flatten_14/Reshape:output:04sequential_17/dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_17/dense_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_28_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_17/dense_28/BiasAddBiasAdd'sequential_17/dense_28/MatMul:product:05sequential_17/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
sequential_17/dense_28/ReluRelu'sequential_17/dense_28/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
!sequential_17/dropout_19/IdentityIdentity)sequential_17/dense_28/Relu:activations:0*
T0*(
_output_shapes
:�����������
,sequential_17/dense_29/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_29_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_17/dense_29/MatMulMatMul*sequential_17/dropout_19/Identity:output:04sequential_17/dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_17/dense_29/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_17/dense_29/BiasAddBiasAdd'sequential_17/dense_29/MatMul:product:05sequential_17/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_17/dense_29/SoftmaxSoftmax'sequential_17/dense_29/BiasAdd:output:0*
T0*'
_output_shapes
:���������w
IdentityIdentity(sequential_17/dense_29/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^sequential_17/conv2d_37/BiasAdd/ReadVariableOp.^sequential_17/conv2d_37/Conv2D/ReadVariableOp/^sequential_17/conv2d_38/BiasAdd/ReadVariableOp.^sequential_17/conv2d_38/Conv2D/ReadVariableOp/^sequential_17/conv2d_39/BiasAdd/ReadVariableOp.^sequential_17/conv2d_39/Conv2D/ReadVariableOp.^sequential_17/dense_28/BiasAdd/ReadVariableOp-^sequential_17/dense_28/MatMul/ReadVariableOp.^sequential_17/dense_29/BiasAdd/ReadVariableOp-^sequential_17/dense_29/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : 2`
.sequential_17/conv2d_37/BiasAdd/ReadVariableOp.sequential_17/conv2d_37/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_37/Conv2D/ReadVariableOp-sequential_17/conv2d_37/Conv2D/ReadVariableOp2`
.sequential_17/conv2d_38/BiasAdd/ReadVariableOp.sequential_17/conv2d_38/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_38/Conv2D/ReadVariableOp-sequential_17/conv2d_38/Conv2D/ReadVariableOp2`
.sequential_17/conv2d_39/BiasAdd/ReadVariableOp.sequential_17/conv2d_39/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_39/Conv2D/ReadVariableOp-sequential_17/conv2d_39/Conv2D/ReadVariableOp2^
-sequential_17/dense_28/BiasAdd/ReadVariableOp-sequential_17/dense_28/BiasAdd/ReadVariableOp2\
,sequential_17/dense_28/MatMul/ReadVariableOp,sequential_17/dense_28/MatMul/ReadVariableOp2^
-sequential_17/dense_29/BiasAdd/ReadVariableOp-sequential_17/dense_29/BiasAdd/ReadVariableOp2\
,sequential_17/dense_29/MatMul/ReadVariableOp,sequential_17/dense_29/MatMul/ReadVariableOp:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_37_input"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
S
conv2d_37_input@
!serving_default_conv2d_37_input:0���������<
dense_290
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator"
_tf_keras_layer
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias
 5_jit_compiled_convolution_op"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator"
_tf_keras_layer
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op"
_tf_keras_layer
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator"
_tf_keras_layer
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias"
_tf_keras_layer
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses
m_random_generator"
_tf_keras_layer
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses

tkernel
ubias"
_tf_keras_layer
f
0
1
32
43
I4
J5
e6
f7
t8
u9"
trackable_list_wrapper
f
0
1
32
43
I4
J5
e6
f7
t8
u9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
{trace_0
|trace_1
}trace_2
~trace_32�
/__inference_sequential_17_layer_call_fn_1652918
/__inference_sequential_17_layer_call_fn_1652981
/__inference_sequential_17_layer_call_fn_1653185
/__inference_sequential_17_layer_call_fn_1653210�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z{trace_0z|trace_1z}trace_2z~trace_3
�
trace_0
�trace_1
�trace_2
�trace_32�
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652796
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652854
J__inference_sequential_17_layer_call_and_return_conditional_losses_1653287
J__inference_sequential_17_layer_call_and_return_conditional_losses_1653336�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0z�trace_1z�trace_2z�trace_3
�B�
"__inference__wrapped_model_1652602conv2d_37_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_37_layer_call_fn_1653345�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_37_layer_call_and_return_conditional_losses_1653356�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_37/kernel
:2conv2d_37/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_max_pooling2d_37_layer_call_fn_1653361�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_1653366�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_16_layer_call_fn_1653371
,__inference_dropout_16_layer_call_fn_1653376�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_16_layer_call_and_return_conditional_losses_1653388
G__inference_dropout_16_layer_call_and_return_conditional_losses_1653393�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_38_layer_call_fn_1653402�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_38_layer_call_and_return_conditional_losses_1653413�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(02conv2d_38/kernel
:02conv2d_38/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_max_pooling2d_38_layer_call_fn_1653418�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_1653423�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_17_layer_call_fn_1653428
,__inference_dropout_17_layer_call_fn_1653433�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_17_layer_call_and_return_conditional_losses_1653445
G__inference_dropout_17_layer_call_and_return_conditional_losses_1653450�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_39_layer_call_fn_1653459�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1653470�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(0`2conv2d_39/kernel
:`2conv2d_39/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_max_pooling2d_39_layer_call_fn_1653475�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_1653480�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_18_layer_call_fn_1653485
,__inference_dropout_18_layer_call_fn_1653490�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_18_layer_call_and_return_conditional_losses_1653502
G__inference_dropout_18_layer_call_and_return_conditional_losses_1653507�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_flatten_14_layer_call_fn_1653512�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_flatten_14_layer_call_and_return_conditional_losses_1653518�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_28_layer_call_fn_1653527�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_28_layer_call_and_return_conditional_losses_1653538�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
#:!
��2dense_28/kernel
:�2dense_28/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_19_layer_call_fn_1653543
,__inference_dropout_19_layer_call_fn_1653548�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_19_layer_call_and_return_conditional_losses_1653560
G__inference_dropout_19_layer_call_and_return_conditional_losses_1653565�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
t0
u1"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_29_layer_call_fn_1653574�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_29_layer_call_and_return_conditional_losses_1653585�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�2dense_29/kernel
:2dense_29/bias
 "
trackable_list_wrapper
~
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
12"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_sequential_17_layer_call_fn_1652918conv2d_37_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_17_layer_call_fn_1652981conv2d_37_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_17_layer_call_fn_1653185inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_17_layer_call_fn_1653210inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652796conv2d_37_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652854conv2d_37_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_17_layer_call_and_return_conditional_losses_1653287inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_17_layer_call_and_return_conditional_losses_1653336inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9"
trackable_list_wrapper
p
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
%__inference_signature_wrapper_1653160conv2d_37_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_37_layer_call_fn_1653345inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_37_layer_call_and_return_conditional_losses_1653356inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
2__inference_max_pooling2d_37_layer_call_fn_1653361inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_1653366inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_dropout_16_layer_call_fn_1653371inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_16_layer_call_fn_1653376inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_16_layer_call_and_return_conditional_losses_1653388inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_16_layer_call_and_return_conditional_losses_1653393inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_38_layer_call_fn_1653402inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_38_layer_call_and_return_conditional_losses_1653413inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
2__inference_max_pooling2d_38_layer_call_fn_1653418inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_1653423inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_dropout_17_layer_call_fn_1653428inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_17_layer_call_fn_1653433inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_17_layer_call_and_return_conditional_losses_1653445inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_17_layer_call_and_return_conditional_losses_1653450inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_39_layer_call_fn_1653459inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1653470inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
2__inference_max_pooling2d_39_layer_call_fn_1653475inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_1653480inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_dropout_18_layer_call_fn_1653485inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_18_layer_call_fn_1653490inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_18_layer_call_and_return_conditional_losses_1653502inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_18_layer_call_and_return_conditional_losses_1653507inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_flatten_14_layer_call_fn_1653512inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_flatten_14_layer_call_and_return_conditional_losses_1653518inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_dense_28_layer_call_fn_1653527inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_28_layer_call_and_return_conditional_losses_1653538inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_dropout_19_layer_call_fn_1653543inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_19_layer_call_fn_1653548inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_19_layer_call_and_return_conditional_losses_1653560inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_19_layer_call_and_return_conditional_losses_1653565inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_dense_29_layer_call_fn_1653574inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_29_layer_call_and_return_conditional_losses_1653585inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
/:-2Adam/m/conv2d_37/kernel
/:-2Adam/v/conv2d_37/kernel
!:2Adam/m/conv2d_37/bias
!:2Adam/v/conv2d_37/bias
/:-02Adam/m/conv2d_38/kernel
/:-02Adam/v/conv2d_38/kernel
!:02Adam/m/conv2d_38/bias
!:02Adam/v/conv2d_38/bias
/:-0`2Adam/m/conv2d_39/kernel
/:-0`2Adam/v/conv2d_39/kernel
!:`2Adam/m/conv2d_39/bias
!:`2Adam/v/conv2d_39/bias
(:&
��2Adam/m/dense_28/kernel
(:&
��2Adam/v/dense_28/kernel
!:�2Adam/m/dense_28/bias
!:�2Adam/v/dense_28/bias
':%	�2Adam/m/dense_29/kernel
':%	�2Adam/v/dense_29/kernel
 :2Adam/m/dense_29/bias
 :2Adam/v/dense_29/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
"__inference__wrapped_model_1652602�
34IJeftu@�=
6�3
1�.
conv2d_37_input���������
� "3�0
.
dense_29"�
dense_29����������
F__inference_conv2d_37_layer_call_and_return_conditional_losses_1653356s7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
+__inference_conv2d_37_layer_call_fn_1653345h7�4
-�*
(�%
inputs���������
� ")�&
unknown����������
F__inference_conv2d_38_layer_call_and_return_conditional_losses_1653413s347�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������0
� �
+__inference_conv2d_38_layer_call_fn_1653402h347�4
-�*
(�%
inputs���������
� ")�&
unknown���������0�
F__inference_conv2d_39_layer_call_and_return_conditional_losses_1653470sIJ7�4
-�*
(�%
inputs���������0
� "4�1
*�'
tensor_0���������`
� �
+__inference_conv2d_39_layer_call_fn_1653459hIJ7�4
-�*
(�%
inputs���������0
� ")�&
unknown���������`�
E__inference_dense_28_layer_call_and_return_conditional_losses_1653538eef0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
*__inference_dense_28_layer_call_fn_1653527Zef0�-
&�#
!�
inputs����������
� ""�
unknown�����������
E__inference_dense_29_layer_call_and_return_conditional_losses_1653585dtu0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
*__inference_dense_29_layer_call_fn_1653574Ytu0�-
&�#
!�
inputs����������
� "!�
unknown����������
G__inference_dropout_16_layer_call_and_return_conditional_losses_1653388s;�8
1�.
(�%
inputs���������
p
� "4�1
*�'
tensor_0���������
� �
G__inference_dropout_16_layer_call_and_return_conditional_losses_1653393s;�8
1�.
(�%
inputs���������
p 
� "4�1
*�'
tensor_0���������
� �
,__inference_dropout_16_layer_call_fn_1653371h;�8
1�.
(�%
inputs���������
p
� ")�&
unknown����������
,__inference_dropout_16_layer_call_fn_1653376h;�8
1�.
(�%
inputs���������
p 
� ")�&
unknown����������
G__inference_dropout_17_layer_call_and_return_conditional_losses_1653445s;�8
1�.
(�%
inputs���������0
p
� "4�1
*�'
tensor_0���������0
� �
G__inference_dropout_17_layer_call_and_return_conditional_losses_1653450s;�8
1�.
(�%
inputs���������0
p 
� "4�1
*�'
tensor_0���������0
� �
,__inference_dropout_17_layer_call_fn_1653428h;�8
1�.
(�%
inputs���������0
p
� ")�&
unknown���������0�
,__inference_dropout_17_layer_call_fn_1653433h;�8
1�.
(�%
inputs���������0
p 
� ")�&
unknown���������0�
G__inference_dropout_18_layer_call_and_return_conditional_losses_1653502s;�8
1�.
(�%
inputs���������`
p
� "4�1
*�'
tensor_0���������`
� �
G__inference_dropout_18_layer_call_and_return_conditional_losses_1653507s;�8
1�.
(�%
inputs���������`
p 
� "4�1
*�'
tensor_0���������`
� �
,__inference_dropout_18_layer_call_fn_1653485h;�8
1�.
(�%
inputs���������`
p
� ")�&
unknown���������`�
,__inference_dropout_18_layer_call_fn_1653490h;�8
1�.
(�%
inputs���������`
p 
� ")�&
unknown���������`�
G__inference_dropout_19_layer_call_and_return_conditional_losses_1653560e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
G__inference_dropout_19_layer_call_and_return_conditional_losses_1653565e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
,__inference_dropout_19_layer_call_fn_1653543Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
,__inference_dropout_19_layer_call_fn_1653548Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
G__inference_flatten_14_layer_call_and_return_conditional_losses_1653518h7�4
-�*
(�%
inputs���������`
� "-�*
#� 
tensor_0����������
� �
,__inference_flatten_14_layer_call_fn_1653512]7�4
-�*
(�%
inputs���������`
� ""�
unknown�����������
M__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_1653366�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
2__inference_max_pooling2d_37_layer_call_fn_1653361�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
M__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_1653423�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
2__inference_max_pooling2d_38_layer_call_fn_1653418�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
M__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_1653480�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
2__inference_max_pooling2d_39_layer_call_fn_1653475�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652796�
34IJeftuH�E
>�;
1�.
conv2d_37_input���������
p

 
� ",�)
"�
tensor_0���������
� �
J__inference_sequential_17_layer_call_and_return_conditional_losses_1652854�
34IJeftuH�E
>�;
1�.
conv2d_37_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
J__inference_sequential_17_layer_call_and_return_conditional_losses_1653287{
34IJeftu?�<
5�2
(�%
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
J__inference_sequential_17_layer_call_and_return_conditional_losses_1653336{
34IJeftu?�<
5�2
(�%
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
/__inference_sequential_17_layer_call_fn_1652918y
34IJeftuH�E
>�;
1�.
conv2d_37_input���������
p

 
� "!�
unknown����������
/__inference_sequential_17_layer_call_fn_1652981y
34IJeftuH�E
>�;
1�.
conv2d_37_input���������
p 

 
� "!�
unknown����������
/__inference_sequential_17_layer_call_fn_1653185p
34IJeftu?�<
5�2
(�%
inputs���������
p

 
� "!�
unknown����������
/__inference_sequential_17_layer_call_fn_1653210p
34IJeftu?�<
5�2
(�%
inputs���������
p 

 
� "!�
unknown����������
%__inference_signature_wrapper_1653160�
34IJeftuS�P
� 
I�F
D
conv2d_37_input1�.
conv2d_37_input���������"3�0
.
dense_29"�
dense_29���������