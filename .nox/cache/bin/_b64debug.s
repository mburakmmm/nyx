.data
.balign 8
_fmt_int:
	.ascii "%lld\n"
	.byte 0
/* end data */

.data
.balign 8
_fmt_float:
	.ascii "%g\n"
	.byte 0
/* end data */

.data
.balign 8
_fmt_str:
	.ascii "%s\n"
	.byte 0
/* end data */

.data
.balign 8
_fmt_bool_true:
	.ascii "True\n"
	.byte 0
/* end data */

.data
.balign 8
_fmt_bool_false:
	.ascii "False\n"
	.byte 0
/* end data */

.data
.balign 8
_fmt_newline:
	.ascii "\n"
	.byte 0
/* end data */

.data
.balign 8
_fmt_int_frag:
	.ascii "%lld"
	.byte 0
/* end data */

.data
.balign 8
_fmt_float_frag:
	.ascii "%g"
	.byte 0
/* end data */

.data
.balign 8
_fmt_str_frag:
	.ascii "'%s'"
	.byte 0
/* end data */

.data
.balign 8
_fmt_bool_true_frag:
	.ascii "True"
	.byte 0
/* end data */

.data
.balign 8
_fmt_bool_false_frag:
	.ascii "False"
	.byte 0
/* end data */

.data
.balign 8
_fmt_lbracket:
	.ascii "["
	.byte 0
/* end data */

.data
.balign 8
_fmt_rbracket:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_fmt_rparen:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_fmt_comma_sp:
	.ascii ", "
	.byte 0
/* end data */

.text
.balign 4
.globl _ValueError___init__
_ValueError___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x2, #0
	beq	L2
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L2:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L5
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L5
	bl	_nox_str_free_now
L5:
	ldp	x29, x30, [sp], 16
	ret
/* end function ValueError___init__ */

.text
.balign 4
.globl _ValueError_release
_ValueError_release:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L13
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L11
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L10
	mov	x1, x20
	b	L12
L10:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L12
L11:
	mov	x1, x20
L12:
	mov	x2, #16
	bl	_nox_rc_free_payload
L13:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function ValueError_release */

.text
.balign 4
.globl _ValueError_eq
_ValueError_eq:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	mov	x1, #8
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	cmp	w0, #0
	bne	L16
	mov	w0, #1
	b	L17
L16:
	mov	w0, #0
L17:
	ldp	x29, x30, [sp], 16
	ret
/* end function ValueError_eq */

.text
.balign 4
.globl _ValueError_trace
_ValueError_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function ValueError_trace */

.text
.balign 4
.globl _ValueError_gc_free
_ValueError_gc_free:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L24
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L23
	mov	x1, x20
	b	L25
L23:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L25
L24:
	mov	x1, x20
L25:
	mov	x2, #16
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function ValueError_gc_free */

.text
.balign 4
.globl _IndexError___init__
_IndexError___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x2, #0
	beq	L29
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L29:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L32
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L32
	bl	_nox_str_free_now
L32:
	ldp	x29, x30, [sp], 16
	ret
/* end function IndexError___init__ */

.text
.balign 4
.globl _IndexError_release
_IndexError_release:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L40
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L38
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L37
	mov	x1, x20
	b	L39
L37:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L39
L38:
	mov	x1, x20
L39:
	mov	x2, #16
	bl	_nox_rc_free_payload
L40:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function IndexError_release */

.text
.balign 4
.globl _IndexError_eq
_IndexError_eq:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	mov	x1, #8
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	cmp	w0, #0
	bne	L43
	mov	w0, #1
	b	L44
L43:
	mov	w0, #0
L44:
	ldp	x29, x30, [sp], 16
	ret
/* end function IndexError_eq */

.text
.balign 4
.globl _IndexError_trace
_IndexError_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function IndexError_trace */

.text
.balign 4
.globl _IndexError_gc_free
_IndexError_gc_free:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L51
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L50
	mov	x1, x20
	b	L52
L50:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L52
L51:
	mov	x1, x20
L52:
	mov	x2, #16
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function IndexError_gc_free */

.text
.balign 4
.globl _KeyError___init__
_KeyError___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x2, #0
	beq	L56
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L56:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L59
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L59
	bl	_nox_str_free_now
L59:
	ldp	x29, x30, [sp], 16
	ret
/* end function KeyError___init__ */

.text
.balign 4
.globl _KeyError_release
_KeyError_release:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L67
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L65
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L64
	mov	x1, x20
	b	L66
L64:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L66
L65:
	mov	x1, x20
L66:
	mov	x2, #16
	bl	_nox_rc_free_payload
L67:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function KeyError_release */

.text
.balign 4
.globl _KeyError_eq
_KeyError_eq:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	mov	x1, #8
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	cmp	w0, #0
	bne	L70
	mov	w0, #1
	b	L71
L70:
	mov	w0, #0
L71:
	ldp	x29, x30, [sp], 16
	ret
/* end function KeyError_eq */

.text
.balign 4
.globl _KeyError_trace
_KeyError_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function KeyError_trace */

.text
.balign 4
.globl _KeyError_gc_free
_KeyError_gc_free:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L78
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L77
	mov	x1, x20
	b	L79
L77:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L79
L78:
	mov	x1, x20
L79:
	mov	x2, #16
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function KeyError_gc_free */

.text
.balign 4
.globl _JsonValue___init__
_JsonValue___init__:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x21, x7
	mov	x22, x6
	mov	x6, #8
	add	x6, x1, x6
	str	x2, [x6]
	mov	x2, #16
	add	x2, x1, x2
	str	w3, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	d0, [x2]
	cmp	x4, #0
	beq	L83
	mov	x2, #8
	sub	x3, x4, x2
	ldr	x2, [x3]
	mov	x23, x5
	mov	x5, #1
	add	x2, x2, x5
	str	x2, [x3]
	b	L84
L83:
	mov	x23, x5
L84:
	mov	x2, #32
	add	x2, x1, x2
	mov	x20, x1
	ldr	x1, [x2]
	str	x4, [x2]
	cmp	x1, #0
	beq	L88
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L87
	mov	x5, x23
	mov	x1, x20
	b	L89
L87:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x5, x23
	mov	x1, x20
	mov	x0, x19
	b	L89
L88:
	mov	x5, x23
	mov	x1, x20
L89:
	cmp	x5, #0
	beq	L91
	mov	x2, #8
	sub	x3, x5, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L91:
	mov	x2, #40
	add	x2, x1, x2
	mov	x20, x1
	ldr	x1, [x2]
	str	x5, [x2]
	cmp	x1, #0
	beq	L93
	mov	x19, x0
	bl	_List_JsonValue_release
	mov	x6, x22
	mov	x1, x20
	mov	x0, x19
	b	L94
L93:
	mov	x6, x22
	mov	x1, x20
L94:
	cmp	x6, #0
	beq	L96
	mov	x2, #8
	sub	x3, x6, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L96:
	mov	x2, #48
	add	x2, x1, x2
	mov	x20, x1
	ldr	x1, [x2]
	str	x6, [x2]
	cmp	x1, #0
	beq	L98
	mov	x19, x0
	bl	_List_str_release
	mov	x7, x21
	mov	x1, x20
	mov	x0, x19
	b	L99
L98:
	mov	x7, x21
	mov	x1, x20
L99:
	cmp	x7, #0
	beq	L101
	mov	x2, #8
	sub	x3, x7, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L101:
	mov	x2, #56
	add	x2, x1, x2
	ldr	x1, [x2]
	str	x7, [x2]
	cmp	x1, #0
	beq	L103
	bl	_List_JsonValue_release
L103:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function JsonValue___init__ */

.text
.balign 4
.globl _JsonValue_release
_JsonValue_release:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L120
	mov	x20, x1
	mov	x1, #32
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L109
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L108
	mov	x1, x20
	b	L110
L108:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L110
L109:
	mov	x1, x20
L110:
	mov	x20, x1
	mov	x1, #40
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L112
	mov	x19, x0
	bl	_List_JsonValue_release
	mov	x1, x20
	mov	x0, x19
	b	L113
L112:
	mov	x1, x20
L113:
	mov	x20, x1
	mov	x1, #48
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L115
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x20
	mov	x0, x19
	b	L116
L115:
	mov	x1, x20
L116:
	mov	x20, x1
	mov	x1, #56
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L118
	mov	x19, x0
	bl	_List_JsonValue_release
	mov	x1, x20
	mov	x0, x19
	b	L119
L118:
	mov	x1, x20
L119:
	mov	x2, #64
	bl	_nox_rc_free_payload
L120:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function JsonValue_release */

.text
.balign 4
.globl _JsonValue_eq
_JsonValue_eq:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x3, #8
	add	x3, x1, x3
	mov	x4, #8
	add	x4, x2, x4
	ldr	x3, [x3]
	ldr	x4, [x4]
	cmp	x3, x4
	bne	L138
	mov	x3, #16
	add	x3, x1, x3
	mov	x4, #16
	add	x4, x2, x4
	ldr	w3, [x3]
	ldr	w4, [x4]
	cmp	w3, w4
	bne	L138
	mov	x3, #24
	add	x3, x1, x3
	mov	x21, x2
	mov	x2, #24
	add	x2, x21, x2
	ldr	d0, [x3]
	ldr	d1, [x2]
	fcmpe	d0, d1
	bne	L138
	mov	x19, x0
	mov	x0, #32
	add	x0, x1, x0
	mov	x20, x1
	mov	x1, #32
	add	x1, x21, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	mov	x2, x21
	mov	x1, x20
	mov	w3, w0
	mov	x0, x19
	cmp	w3, #0
	bne	L138
	mov	x20, x1
	mov	x1, #40
	add	x1, x20, x1
	mov	x21, x2
	mov	x2, #40
	add	x2, x21, x2
	ldr	x1, [x1]
	ldr	x2, [x2]
	cmp	x1, #0
	cset	w3, eq
	cmp	x2, #0
	cset	w4, eq
	orr	w5, w3, w4
	cmp	w5, #0
	bne	L127
	mov	x19, x0
	bl	_List_JsonValue_eq
	mov	x2, x21
	mov	x1, x20
	mov	w3, w0
	mov	x0, x19
	cmp	w3, #0
	beq	L138
	b	L129
L127:
	mov	x2, x21
	mov	x1, x20
	and	w3, w3, w4
	cmp	w3, #0
	beq	L138
L129:
	mov	x20, x1
	mov	x1, #48
	add	x1, x20, x1
	mov	x21, x2
	mov	x2, #48
	add	x2, x21, x2
	ldr	x1, [x1]
	ldr	x2, [x2]
	cmp	x1, #0
	cset	w3, eq
	cmp	x2, #0
	cset	w4, eq
	orr	w5, w3, w4
	cmp	w5, #0
	bne	L131
	mov	x19, x0
	bl	_List_str_eq
	mov	x2, x21
	mov	x1, x20
	mov	w3, w0
	mov	x0, x19
	cmp	w3, #0
	beq	L138
	b	L133
L131:
	mov	x2, x21
	mov	x1, x20
	and	w3, w3, w4
	cmp	w3, #0
	beq	L138
L133:
	mov	x3, #56
	add	x1, x1, x3
	mov	x3, #56
	add	x2, x2, x3
	ldr	x1, [x1]
	ldr	x2, [x2]
	cmp	x1, #0
	cset	w3, eq
	cmp	x2, #0
	cset	w4, eq
	orr	w5, w3, w4
	cmp	w5, #0
	bne	L135
	bl	_List_JsonValue_eq
	cmp	w0, #0
	beq	L138
	b	L137
L135:
	mov	w1, w4
	mov	w0, w3
	and	w0, w0, w1
	cmp	w0, #0
	beq	L138
L137:
	mov	w0, #1
	b	L139
L138:
	mov	w0, #0
L139:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function JsonValue_eq */

.text
.balign 4
.globl _JsonValue_trace
_JsonValue_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function JsonValue_trace */

.text
.balign 4
.globl _JsonValue_gc_free
_JsonValue_gc_free:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, #32
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L146
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L145
	mov	x1, x20
	b	L147
L145:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L147
L146:
	mov	x1, x20
L147:
	mov	x20, x1
	mov	x1, #40
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L149
	mov	x19, x0
	bl	_List_JsonValue_release
	mov	x1, x20
	mov	x0, x19
	b	L150
L149:
	mov	x1, x20
L150:
	mov	x20, x1
	mov	x1, #48
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L152
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x20
	mov	x0, x19
	b	L153
L152:
	mov	x1, x20
L153:
	mov	x20, x1
	mov	x1, #56
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L155
	mov	x19, x0
	bl	_List_JsonValue_release
	mov	x1, x20
	mov	x0, x19
	b	L156
L155:
	mov	x1, x20
L156:
	mov	x2, #64
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function JsonValue_gc_free */

.text
.balign 4
.globl _web_base64_Base64Error___init__
_web_base64_Base64Error___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x2, #0
	beq	L160
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L160:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L163
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L163
	bl	_nox_str_free_now
L163:
	ldp	x29, x30, [sp], 16
	ret
/* end function web_base64_Base64Error___init__ */

.text
.balign 4
.globl _web_base64_Base64Error_release
_web_base64_Base64Error_release:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L171
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L169
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L168
	mov	x1, x20
	b	L170
L168:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L170
L169:
	mov	x1, x20
L170:
	mov	x2, #16
	bl	_nox_rc_free_payload
L171:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_base64_Base64Error_release */

.text
.balign 4
.globl _web_base64_Base64Error_eq
_web_base64_Base64Error_eq:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	mov	x1, #8
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	cmp	w0, #0
	bne	L174
	mov	w0, #1
	b	L175
L174:
	mov	w0, #0
L175:
	ldp	x29, x30, [sp], 16
	ret
/* end function web_base64_Base64Error_eq */

.text
.balign 4
.globl _web_base64_Base64Error_trace
_web_base64_Base64Error_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function web_base64_Base64Error_trace */

.text
.balign 4
.globl _web_base64_Base64Error_gc_free
_web_base64_Base64Error_gc_free:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L182
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L181
	mov	x1, x20
	b	L183
L181:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L183
L182:
	mov	x1, x20
L183:
	mov	x2, #16
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_base64_Base64Error_gc_free */

.text
.balign 4
.globl _nox_trace_dispatch
_nox_trace_dispatch:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x17, x2
	mov	x2, x1
	mov	x1, x17
	cmp	x2, #1
	beq	L195
	cmp	x2, #2
	beq	L194
	cmp	x2, #3
	beq	L193
	cmp	x2, #4
	beq	L192
	cmp	x2, #5
	beq	L191
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	b	L196
L191:
	bl	_web_base64_Base64Error_trace
	b	L196
L192:
	bl	_JsonValue_trace
	b	L196
L193:
	bl	_KeyError_trace
	b	L196
L194:
	bl	_IndexError_trace
	b	L196
L195:
	bl	_ValueError_trace
L196:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_trace_dispatch */

.text
.balign 4
.globl _nox_gc_free_dispatch
_nox_gc_free_dispatch:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x17, x2
	mov	x2, x1
	mov	x1, x17
	cmp	x2, #1
	beq	L206
	cmp	x2, #2
	beq	L205
	cmp	x2, #3
	beq	L204
	cmp	x2, #4
	beq	L203
	cmp	x2, #5
	bne	L207
	bl	_web_base64_Base64Error_gc_free
	b	L207
L203:
	bl	_JsonValue_gc_free
	b	L207
L204:
	bl	_KeyError_gc_free
	b	L207
L205:
	bl	_IndexError_gc_free
	b	L207
L206:
	bl	_ValueError_gc_free
L207:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_gc_free_dispatch */

.text
.balign 4
.globl _nox_json_make_json_value
_nox_json_make_json_value:
	hint	#34
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [x29, 72]
	str	x20, [x29, 64]
	str	x21, [x29, 56]
	str	x22, [x29, 48]
	str	x23, [x29, 40]
	str	x24, [x29, 32]
	str	x25, [x29, 24]
	str	d8, [x29, 16]
	mov	x25, x6
	mov	x24, x5
	mov	x23, x4
	mov	x22, x3
	fmov	d8, d0
	mov	w21, w2
	mov	x20, x1
	mov	x1, #64
	mov	x19, x0
	bl	_nox_rc_alloc
	fmov	d0, d8
	mov	x7, x25
	mov	x6, x24
	mov	x5, x23
	mov	x4, x22
	mov	w3, w21
	mov	x2, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #4
	str	x1, [x19]
	mov	x1, #8
	add	x8, x19, x1
	mov	x1, #0
	str	x1, [x8]
	mov	x1, #16
	add	x8, x19, x1
	mov	x1, #0
	str	x1, [x8]
	mov	x1, #24
	add	x8, x19, x1
	mov	x1, #0
	str	x1, [x8]
	mov	x1, #32
	add	x8, x19, x1
	mov	x1, #0
	str	x1, [x8]
	mov	x1, #40
	add	x8, x19, x1
	mov	x1, #0
	str	x1, [x8]
	mov	x1, #48
	add	x8, x19, x1
	mov	x1, #0
	str	x1, [x8]
	mov	x1, #56
	add	x8, x19, x1
	mov	x1, #0
	str	x1, [x8]
	mov	x1, x19
	bl	_JsonValue___init__
	mov	x0, x19
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldr	d8, [x29, 16]
	ldp	x29, x30, [sp], 80
	ret
/* end function nox_json_make_json_value */

.text
.balign 4
.globl _input
_input:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_stdin_read_line_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function input */

.text
.balign 4
.globl _round
_round:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, "Lfp0"@page
	add	x0, x0, "Lfp0"@pageoff
	ldr	d1, [x0]
	fcmpe	d0, d1
	bge	L214
	adrp	x0, "Lfp1"@page
	add	x0, x0, "Lfp1"@pageoff
	ldr	d1, [x0]
	fsub	d0, d0, d1
	fcvtzs	x0, d0
	b	L215
L214:
	adrp	x0, "Lfp1"@page
	add	x0, x0, "Lfp1"@pageoff
	ldr	d1, [x0]
	fadd	d0, d0, d1
	fcvtzs	x0, d0
L215:
	ldp	x29, x30, [sp], 16
	ret
/* end function round */

.text
.balign 4
.globl _sum
_sum:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x3, [x1]
	mov	x0, #0
	mov	x2, #0
L218:
	cmp	x2, x3
	bge	L220
	mov	x4, #8
	mul	x4, x2, x4
	mov	x5, #16
	add	x4, x4, x5
	add	x4, x1, x4
	ldr	x4, [x4]
	add	x0, x4, x0
	mov	x4, #1
	add	x2, x2, x4
	b	L218
L220:
	ldp	x29, x30, [sp], 16
	ret
/* end function sum */

.text
.balign 4
.globl _sum_float
_sum_float:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x1]
	adrp	x0, "Lfp0"@page
	add	x0, x0, "Lfp0"@pageoff
	ldr	d0, [x0]
	mov	x0, #0
L223:
	cmp	x0, x2
	bge	L225
	mov	x3, #8
	mul	x3, x0, x3
	mov	x4, #16
	add	x3, x3, x4
	add	x3, x1, x3
	ldr	d1, [x3]
	fadd	d0, d1, d0
	mov	x3, #1
	add	x0, x0, x3
	b	L223
L225:
	ldp	x29, x30, [sp], 16
	ret
/* end function sum_float */

.text
.balign 4
.globl _nox_strings_split
_nox_strings_split:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_strings_split_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_split */

.text
.balign 4
.globl _nox_strings_trim
_nox_strings_trim:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_strings_trim_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_trim */

.text
.balign 4
.globl _nox_strings_trim_start
_nox_strings_trim_start:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_strings_trim_start_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_trim_start */

.text
.balign 4
.globl _nox_strings_trim_end
_nox_strings_trim_end:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_strings_trim_end_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_trim_end */

.text
.balign 4
.globl _nox_strings_upper
_nox_strings_upper:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_strings_upper_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_upper */

.text
.balign 4
.globl _nox_strings_lower
_nox_strings_lower:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_strings_lower_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_lower */

.text
.balign 4
.globl _nox_strings_replace
_nox_strings_replace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_strings_replace_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_replace */

.text
.balign 4
.globl _nox_strings_byte_at
_nox_strings_byte_at:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	mov	x1, x2
	bl	_nox_str_byte_at
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_byte_at */

.text
.balign 4
.globl _nox_strings_join
_nox_strings_join:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_strings_join_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_join */

.text
.balign 4
.globl _nox_strings_starts_with
_nox_strings_starts_with:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	mov	x1, x2
	bl	_nox_strings_starts_with_raw
	cmp	x0, #0
	cset	w0, ne
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_starts_with */

.text
.balign 4
.globl _nox_strings_ends_with
_nox_strings_ends_with:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	mov	x1, x2
	bl	_nox_strings_ends_with_raw
	cmp	x0, #0
	cset	w0, ne
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_ends_with */

.text
.balign 4
.globl _nox_strings_index_of
_nox_strings_index_of:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	mov	x1, x2
	bl	_nox_strings_index_of_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_index_of */

.text
.balign 4
.globl _nox_strings_contains
_nox_strings_contains:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	mov	x1, x2
	bl	_nox_strings_index_of_raw
	cmp	x0, #0
	cset	w0, ge
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_contains */

.text
.balign 4
.globl _nox_strings_splitn
_nox_strings_splitn:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_strings_splitn_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_splitn */

.text
.balign 4
.globl _nox_strings_rsplit
_nox_strings_rsplit:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_strings_rsplit_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_rsplit */

.text
.balign 4
.globl _nox_strings_repeat
_nox_strings_repeat:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_strings_repeat_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_repeat */

.text
.balign 4
.globl _nox_strings_eq_ignore_case
_nox_strings_eq_ignore_case:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	mov	x1, x2
	bl	_nox_strings_eq_ignore_case_raw
	cmp	x0, #0
	cset	w0, ne
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_strings_eq_ignore_case */

.text
.balign 4
.globl _web_base64__alphabet
_web_base64__alphabet:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, _str0@page+8
	add	x0, x0, _str0@pageoff+8
	ldp	x29, x30, [sp], 16
	ret
/* end function web_base64__alphabet */

.text
.balign 4
.globl _web_base64__alphabet_url
_web_base64__alphabet_url:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, _str1@page+8
	add	x0, x0, _str1@pageoff+8
	ldp	x29, x30, [sp], 16
	ret
/* end function web_base64__alphabet_url */

.text
.balign 4
.globl _web_base64__printable
_web_base64__printable:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, _str2@page+8
	add	x0, x0, _str2@pageoff+8
	ldp	x29, x30, [sp], 16
	ret
/* end function web_base64__printable */

.text
.balign 4
.globl _web_base64__byte_len
_web_base64__byte_len:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, #0
L268:
	mov	x20, x1
	mov	x1, x19
	mov	x0, x20
	bl	_nox_str_byte_at
	mov	x1, x20
	cmp	x0, #0
	beq	L270
	mov	x0, #1
	add	x19, x19, x0
	b	L268
L270:
	mov	x0, x19
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_base64__byte_len */

.text
.balign 4
.globl _web_base64__alphabet_char
_web_base64__alphabet_char:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x21, x2
	cmp	x21, #0
	cset	w19, lt
	cmp	x21, #63
	mov	x22, x1
	cset	w1, gt
	orr	w1, w19, w1
	cmp	w1, #0
	beq	L274
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x2, x21
	mov	x1, x0
	mov	x0, x20
	mov	x3, #5
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x21, x2
	adrp	x2, _str3@page+8
	add	x2, x2, _str3@pageoff+8
	mov	x23, x1
	mov	x20, x0
	bl	_web_base64_Base64Error___init__
	mov	x1, x23
	mov	x0, x20
	mov	x20, x0
	bl	_nox_raise
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	cmp	w1, #0
	bne	L280
L274:
	mov	x20, x0
	mov	x0, x22
	bl	_nox_str_char_count
	mov	x1, x22
	mov	x2, x0
	mov	x0, x20
	cmp	x21, x2
	mov	x20, x1
	cset	w1, ge
	orr	w1, w19, w1
	cmp	w1, #0
	bne	L276
	mov	x2, x21
	mov	x1, x20
	b	L277
L276:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	mov	x3, #2
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x21, x2
	adrp	x2, _str4@page+8
	add	x2, x2, _str4@pageoff+8
	mov	x22, x1
	mov	x19, x0
	bl	_IndexError___init__
	mov	x1, x22
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x2, x21
	mov	x1, x20
	mov	w3, w0
	mov	x0, x19
	cmp	w3, #0
	bne	L279
L277:
	bl	_nox_str_char_at
	cmp	x0, #0
	beq	L281
	mov	x1, #8
	sub	x2, x0, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
	b	L281
L279:
	mov	x0, #0
	b	L281
L280:
	mov	x0, #0
L281:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function web_base64__alphabet_char */

.text
.balign 4
.globl _web_base64__value_of
_web_base64__value_of:
	hint	#34
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [x29, 72]
	str	x20, [x29, 64]
	str	x21, [x29, 56]
	str	x22, [x29, 48]
	str	x23, [x29, 40]
	str	x24, [x29, 32]
	str	x25, [x29, 24]
	mov	x22, x2
	mov	x21, x1
	mov	x19, x0
	mov	x0, x21
	bl	_nox_str_char_count
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x21
	bl	_nox_str_is_ascii
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	mov	x19, #0
L284:
	cmp	x19, #64
	bge	L301
	cmp	x19, #0
	mov	x23, x1
	cset	w1, lt
	cmp	x19, x20
	mov	x24, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L287
	mov	x2, x24
	mov	x1, x23
	b	L288
L287:
	mov	x1, #16
	mov	x22, x0
	bl	_nox_rc_alloc
	mov	x2, x24
	mov	x1, x0
	mov	x0, x22
	mov	x3, #2
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x24, x2
	adrp	x2, _str5@page+8
	add	x2, x2, _str5@pageoff+8
	mov	x25, x1
	mov	x22, x0
	bl	_IndexError___init__
	mov	x1, x25
	mov	x0, x22
	mov	x22, x0
	bl	_nox_raise
	mov	x0, x22
	mov	x22, x0
	bl	_nox_exception_pending
	mov	x2, x24
	mov	x1, x23
	mov	w3, w0
	mov	x0, x22
	cmp	w3, #0
	bne	L300
L288:
	cmp	w21, #0
	bne	L291
	mov	x24, x2
	mov	x2, x19
	mov	x23, x1
	mov	x22, x0
	bl	_nox_str_char_at
	mov	x2, x24
	mov	x1, x23
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x25, x2
	mov	x24, x1
	mov	x1, x22
	b	L292
L291:
	mov	x25, x2
	add	x2, x1, x19
	ldrb	w22, [x2]
	mov	x24, x1
	mov	x1, #2
	mov	x23, x0
	bl	_nox_rc_alloc
	mov	x2, x25
	mov	x1, x0
	mov	x0, x23
	strb	w22, [x1]
	mov	x3, #1
	add	x3, x1, x3
	mov	x25, x2
	mov	w2, #0
	strb	w2, [x3]
L292:
	mov	x23, x1
	mov	x1, x25
	mov	x22, x0
	mov	x0, x23
	bl	_strcmp
	mov	x2, x25
	mov	x1, x23
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	cmp	x1, #0
	beq	L296
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L295
	mov	x2, x25
	mov	x1, x24
	b	L297
L295:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x2, x25
	mov	x1, x24
	mov	x0, x23
	b	L297
L296:
	mov	x1, x24
L297:
	cmp	w22, #0
	beq	L299
	mov	x3, #1
	add	x19, x19, x3
	b	L284
L299:
	mov	x0, x19
	b	L302
L300:
	mov	x0, #0
	b	L302
L301:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str6@page+8
	add	x2, x2, _str6@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_web_base64_Base64Error___init__
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	mov	x0, #0
L302:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function web_base64__value_of */

.text
.balign 4
.globl _web_base64__byte_to_ascii
_web_base64__byte_to_ascii:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	cmp	x1, #0
	mov	x20, x1
	cset	w1, lt
	cmp	x20, #127
	cset	w2, gt
	orr	w1, w1, w2
	adrp	x2, _str12@page+8
	add	x2, x2, _str12@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	beq	L305
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str7@page+8
	add	x2, x2, _str7@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_web_base64_Base64Error___init__
	mov	x1, x21
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L340
L305:
	cmp	x20, #32
	bge	L319
	cmp	x20, #9
	beq	L339
	cmp	x20, #10
	beq	L338
	mov	x1, x20
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x2, x1
	mov	x21, x1
	adrp	x1, _str10@page+8
	add	x1, x1, _str10@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L312
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L311
	mov	x1, x21
	b	L313
L311:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L313
L312:
	mov	x1, x21
L313:
	mov	x21, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x21]
	mov	x2, #8
	add	x3, x21, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x22, x1
	mov	x1, x21
	mov	x19, x0
	bl	_web_base64_Base64Error___init__
	mov	x1, x22
	mov	x0, x19
	cmp	x1, #0
	beq	L317
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L316
	mov	x1, x21
	b	L318
L316:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L318
L317:
	mov	x1, x21
L318:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L337
L319:
	cmp	x20, #127
	beq	L321
	mov	x1, x20
	b	L322
L321:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str11@page+8
	add	x2, x2, _str11@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_web_base64_Base64Error___init__
	mov	x1, x21
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L336
L322:
	mov	x2, #32
	sub	x20, x1, x2
	mov	x19, x0
	adrp	x0, _str12@page+8
	add	x0, x0, _str12@pageoff+8
	bl	_nox_str_char_count
	mov	x2, x20
	mov	x3, x0
	mov	x0, x19
	cmp	x2, #0
	cset	w1, lt
	cmp	x2, x3
	mov	x20, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L324
	mov	x2, x20
	b	L325
L324:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x3, #2
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x20, x2
	adrp	x2, _str13@page+8
	add	x2, x2, _str13@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_IndexError___init__
	mov	x1, x21
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x2, x20
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L332
L325:
	adrp	x1, _str12@page+8
	add	x1, x1, _str12@pageoff+8
	mov	x19, x0
	bl	_nox_str_char_at
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x19, #0
	beq	L327
	mov	x1, #8
	sub	x2, x19, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
L327:
	adrp	x1, _str12@page+8
	add	x1, x1, _str12@pageoff+8
	cmp	x1, #0
	beq	L331
	adrp	x1, _str12@page
	add	x1, x1, _str12@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str12@page
	add	x2, x2, _str12@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L330
	mov	x0, x19
	b	L341
L330:
	adrp	x1, _str12@page+8
	add	x1, x1, _str12@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L341
L331:
	mov	x0, x19
	b	L341
L332:
	adrp	x1, _str12@page+8
	add	x1, x1, _str12@pageoff+8
	cmp	x1, #0
	beq	L335
	adrp	x1, _str12@page
	add	x1, x1, _str12@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str12@page
	add	x2, x2, _str12@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L335
	adrp	x1, _str12@page+8
	add	x1, x1, _str12@pageoff+8
	bl	_nox_str_free_now
L335:
	mov	x0, #0
	b	L341
L336:
	mov	x0, #0
	b	L341
L337:
	mov	x0, #0
	b	L341
L338:
	adrp	x0, _str9@page+8
	add	x0, x0, _str9@pageoff+8
	b	L341
L339:
	adrp	x0, _str8@page+8
	add	x0, x0, _str8@pageoff+8
	b	L341
L340:
	mov	x0, #0
L341:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function web_base64__byte_to_ascii */

.text
.balign 4
.globl _web_base64__drop_last
_web_base64__drop_last:
	hint	#34
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [x29, 72]
	str	x20, [x29, 64]
	str	x21, [x29, 56]
	str	x22, [x29, 48]
	str	x23, [x29, 40]
	str	x24, [x29, 32]
	str	x25, [x29, 24]
	str	x26, [x29, 16]
	mov	x21, x1
	mov	x19, x0
	mov	x0, x21
	bl	_nox_str_char_count
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x19, #0
	beq	L368
	mov	x20, x0
	mov	x0, x21
	bl	_nox_str_char_count
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	_nox_str_is_ascii
	mov	x1, x21
	mov	x23, x0
	mov	x0, x20
	mov	x2, #1
	sub	x21, x19, x2
	adrp	x20, _str15@page+8
	add	x20, x20, _str15@pageoff+8
	mov	x19, #0
L345:
	cmp	x19, x21
	bge	L367
	cmp	x19, #0
	mov	x25, x1
	cset	w1, lt
	cmp	x19, x22
	cset	w2, ge
	orr	w1, w1, w2
	cmp	x20, #0
	cmp	w1, #0
	bne	L348
	mov	x1, x25
	b	L349
L348:
	mov	x1, #16
	mov	x24, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x24
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str16@page+8
	add	x2, x2, _str16@pageoff+8
	mov	x26, x1
	mov	x24, x0
	bl	_IndexError___init__
	mov	x1, x26
	mov	x0, x24
	mov	x24, x0
	bl	_nox_raise
	mov	x0, x24
	mov	x24, x0
	bl	_nox_exception_pending
	mov	x1, x25
	mov	w2, w0
	mov	x0, x24
	cmp	w2, #0
	bne	L362
L349:
	cmp	w23, #0
	bne	L352
	mov	x2, x19
	mov	x25, x1
	mov	x24, x0
	bl	_nox_str_char_at
	mov	x1, x25
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	mov	x26, x1
	mov	x1, x24
	mov	x24, x20
	b	L353
L352:
	add	x2, x1, x19
	mov	x24, x20
	ldrb	w20, [x2]
	mov	x26, x1
	mov	x1, #2
	mov	x25, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x25
	strb	w20, [x1]
	mov	x2, #1
	add	x3, x1, x2
	mov	w2, #0
	strb	w2, [x3]
L353:
	mov	x2, x1
	mov	x25, x1
	mov	x1, x24
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x25
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x1, #0
	beq	L357
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L356
	mov	x1, x26
	b	L358
L356:
	mov	x25, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x25
	b	L358
L357:
	mov	x1, x26
L358:
	cmp	x24, #0
	beq	L361
	mov	x2, #8
	sub	x2, x24, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x24, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L361
	mov	x25, x1
	mov	x1, x24
	mov	x24, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x24
L361:
	mov	x2, #1
	add	x19, x19, x2
	b	L345
L362:
	mov	x19, x20
	cmp	x19, #0
	beq	L366
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L366
	mov	x1, x19
	bl	_nox_str_free_now
L366:
	mov	x0, #0
	b	L369
L367:
	mov	x0, x20
	b	L369
L368:
	adrp	x0, _str14@page+8
	add	x0, x0, _str14@pageoff+8
L369:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldr	x26, [x29, 16]
	ldp	x29, x30, [sp], 80
	ret
/* end function web_base64__drop_last */

.text
.balign 4
.globl _web_base64__encode_bytes
_web_base64__encode_bytes:
	hint	#34
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [x29, 88]
	str	x20, [x29, 80]
	str	x21, [x29, 72]
	str	x22, [x29, 64]
	str	x23, [x29, 56]
	str	x24, [x29, 48]
	str	x25, [x29, 40]
	str	x26, [x29, 32]
	str	w4, [x29, 16]
	mov	x22, x3
	mov	x25, x2
	mov	x19, x1
	mov	x26, x22
	mov	x24, x19
	adrp	x20, _str17@page+8
	add	x20, x20, _str17@pageoff+8
	mov	x19, #0
L372:
	mov	x1, #2
	add	x1, x19, x1
	mov	x23, x1
	mov	x1, #1
	add	x1, x19, x1
	cmp	x20, #0
	cmp	x23, x25
	bge	L437
	mov	x22, x1
	mov	x1, x19
	mov	x21, x0
	mov	x0, x24
	bl	_nox_str_byte_at
	mov	x1, x22
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, x24
	bl	_nox_str_byte_at
	mov	x1, x23
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x23, x0
	mov	x0, x24
	bl	_nox_str_byte_at
	mov	x3, x26
	mov	x2, x25
	mov	x1, x0
	mov	x0, x23
	mov	x4, #65536
	mul	x4, x22, x4
	mov	x5, #256
	mul	x5, x21, x5
	add	x4, x4, x5
	mov	x21, x20
	add	x20, x1, x4
	mov	x1, #262144
	sdiv	x1, x20, x1
	mov	x4, #262144
	sdiv	x17, x20, x4
	msub	x4, x17, x4, x20
	cmp	x4, #0
	mov	x25, x2
	cset	w2, ne
	cmp	x4, #0
	mov	x26, x3
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x2, x1, x2
	mov	x1, x26
	mov	x22, x0
	bl	_web_base64__alphabet_char
	mov	x23, x0
	mov	x0, x22
	mov	x22, x0
	bl	_nox_exception_pending
	mov	x2, x25
	mov	x1, x23
	mov	w3, w0
	mov	x0, x22
	cmp	w3, #0
	bne	L432
	mov	x25, x2
	mov	x2, x1
	mov	x23, x1
	mov	x1, x21
	mov	x22, x0
	bl	_nox_str_concat
	mov	x3, x26
	mov	x2, x25
	mov	x1, x23
	mov	x23, x0
	mov	x0, x22
	cmp	x1, #0
	beq	L378
	mov	x26, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L377
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	b	L379
L377:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x0, x22
	b	L379
L378:
	mov	x1, x24
L379:
	cmp	x21, #0
	beq	L383
	mov	x24, x2
	mov	x2, #8
	sub	x2, x21, x2
	ldr	x2, [x2]
	mov	x4, #1
	sub	x2, x2, x4
	mov	x25, x3
	mov	x3, #8
	sub	x3, x21, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L382
	mov	x3, x25
	mov	x2, x24
	mov	x22, x1
	b	L384
L382:
	mov	x22, x1
	mov	x1, x21
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x24
	mov	x0, x21
	b	L384
L383:
	mov	x22, x1
L384:
	mov	x1, #4096
	sdiv	x1, x20, x1
	mov	x4, #4096
	sdiv	x17, x20, x4
	msub	x5, x17, x4, x20
	cmp	x5, #0
	cset	w4, ne
	cmp	x5, #0
	cset	w5, lt
	and	w4, w4, w5
	mov	w4, w4
	sub	x1, x1, x4
	mov	x4, #64
	sdiv	x17, x1, x4
	msub	x1, x17, x4, x1
	cmp	x1, #0
	mov	x25, x2
	cset	w2, ne
	cmp	x1, #0
	cset	w4, lt
	and	w2, w2, w4
	mov	w2, w2
	mov	x26, x3
	mov	x3, #64
	mul	x2, x2, x3
	add	x2, x1, x2
	mov	x1, x26
	mov	x21, x0
	bl	_web_base64__alphabet_char
	mov	x24, x0
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x2, x25
	mov	x1, x24
	mov	w3, w0
	mov	x0, x21
	cmp	x23, #0
	cmp	w3, #0
	bne	L427
	mov	x25, x2
	mov	x2, x1
	mov	x24, x1
	mov	x1, x23
	mov	x21, x0
	bl	_nox_str_concat
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x24, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L389
	mov	x26, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L388
	mov	x1, x23
	mov	x3, x26
	mov	x2, x25
	b	L390
L388:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x26
	mov	x2, x25
	mov	x1, x23
	mov	x0, x21
	b	L390
L389:
	mov	x1, x23
L390:
	cmp	x1, #0
	beq	L394
	mov	x23, x2
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x4, #1
	sub	x2, x2, x4
	mov	x25, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L393
	mov	x3, x25
	mov	x2, x23
	b	L394
L393:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x23
	mov	x0, x21
L394:
	mov	x1, #64
	sdiv	x1, x20, x1
	mov	x4, #64
	sdiv	x17, x20, x4
	msub	x5, x17, x4, x20
	cmp	x5, #0
	cset	w4, ne
	cmp	x5, #0
	cset	w5, lt
	and	w4, w4, w5
	mov	w4, w4
	sub	x1, x1, x4
	mov	x4, #64
	sdiv	x17, x1, x4
	msub	x1, x17, x4, x1
	cmp	x1, #0
	mov	x25, x2
	cset	w2, ne
	cmp	x1, #0
	cset	w4, lt
	and	w2, w2, w4
	mov	w2, w2
	mov	x26, x3
	mov	x3, #64
	mul	x2, x2, x3
	add	x2, x1, x2
	mov	x1, x26
	mov	x21, x0
	bl	_web_base64__alphabet_char
	mov	x23, x0
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x2, x25
	mov	x1, x23
	mov	w3, w0
	mov	x0, x21
	cmp	x24, #0
	cmp	w3, #0
	bne	L422
	mov	x25, x2
	mov	x2, x1
	mov	x23, x1
	mov	x1, x24
	mov	x21, x0
	bl	_nox_str_concat
	mov	x3, x26
	mov	x2, x25
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L399
	mov	x26, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L398
	mov	x1, x24
	mov	x3, x26
	mov	x2, x25
	b	L400
L398:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x0, x21
	b	L400
L399:
	mov	x1, x24
L400:
	cmp	x1, #0
	beq	L404
	mov	x24, x2
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x4, #1
	sub	x2, x2, x4
	mov	x25, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L403
	mov	x3, x25
	mov	x2, x24
	b	L404
L403:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x24
	mov	x0, x21
L404:
	mov	x1, #64
	sdiv	x17, x20, x1
	msub	x1, x17, x1, x20
	cmp	x1, #0
	mov	x24, x2
	cset	w2, ne
	cmp	x1, #0
	cset	w4, lt
	and	w2, w2, w4
	mov	w2, w2
	mov	x25, x3
	mov	x3, #64
	mul	x2, x2, x3
	add	x2, x1, x2
	mov	x1, x25
	mov	x20, x0
	bl	_web_base64__alphabet_char
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x2, x24
	mov	x1, x21
	mov	w3, w0
	mov	x0, x20
	cmp	x23, #0
	cmp	w3, #0
	bne	L417
	mov	x24, x2
	mov	x2, x1
	mov	x21, x1
	mov	x1, x23
	mov	x20, x0
	bl	_nox_str_concat
	mov	x3, x25
	mov	x2, x24
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x1, #0
	beq	L409
	mov	x25, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x24, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L408
	mov	x1, x23
	mov	x3, x25
	mov	x2, x24
	b	L410
L408:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x24
	mov	x1, x23
	mov	x0, x21
	b	L410
L409:
	mov	x1, x23
L410:
	cmp	x1, #0
	beq	L414
	mov	x23, x2
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x4, #1
	sub	x2, x2, x4
	mov	x24, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L413
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	b	L415
L413:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x0, x21
	b	L415
L414:
	mov	x1, x22
L415:
	mov	x4, #3
	add	x19, x19, x4
	mov	x26, x3
	mov	x25, x2
	mov	x24, x1
	b	L372
L417:
	mov	x1, x23
	cmp	x1, #0
	beq	L421
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L421
	bl	_nox_str_free_now
L421:
	mov	x0, #0
	b	L533
L422:
	mov	x1, x24
	cmp	x1, #0
	beq	L426
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L426
	bl	_nox_str_free_now
L426:
	mov	x0, #0
	b	L533
L427:
	mov	x1, x23
	cmp	x1, #0
	beq	L431
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L431
	bl	_nox_str_free_now
L431:
	mov	x0, #0
	b	L533
L432:
	mov	x1, x21
	cmp	x1, #0
	beq	L436
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L436
	mov	x21, x1
	mov	x20, x0
	bl	_nox_str_free_now
L436:
	mov	x0, #0
	b	L533
L437:
	mov	x21, x20
	mov	x23, x1
	mov	x1, x19
	mov	x22, x26
	mov	x20, x0
	mov	x0, x24
	ldr	w24, [x29, 16]
	sub	x2, x25, x1
	cmp	x2, #1
	beq	L493
	cmp	x2, #2
	beq	L441
	mov	x1, x21
	b	L522
L441:
	mov	x19, x0
	bl	_nox_str_byte_at
	mov	x1, x23
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_nox_str_byte_at
	mov	x2, x0
	mov	x0, x20
	mov	x1, #65536
	mul	x1, x19, x1
	mov	x3, #256
	mul	x2, x2, x3
	add	x19, x1, x2
	mov	x1, #262144
	sdiv	x1, x19, x1
	mov	x2, #262144
	sdiv	x17, x19, x2
	msub	x3, x17, x2, x19
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x2, x1, x2
	mov	x1, x22
	mov	x20, x0
	bl	_web_base64__alphabet_char
	mov	x23, x0
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x23
	mov	w2, w0
	mov	x0, x20
	cmp	w2, #0
	bne	L488
	mov	x2, x1
	mov	x23, x1
	mov	x1, x21
	mov	x20, x0
	bl	_nox_str_concat
	mov	w4, w24
	mov	x1, x23
	mov	x24, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L446
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L445
	mov	x1, x21
	b	L447
L445:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L447
L446:
	mov	x1, x21
	mov	w23, w4
L447:
	cmp	x1, #0
	beq	L450
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L450
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L450:
	mov	x1, #4096
	sdiv	x1, x19, x1
	mov	x2, #4096
	sdiv	x17, x19, x2
	msub	x3, x17, x2, x19
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x1, x1, x2
	mov	x2, #64
	sdiv	x17, x1, x2
	msub	x1, x17, x2, x1
	cmp	x1, #0
	cset	w2, ne
	cmp	x1, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	mov	x3, #64
	mul	x2, x2, x3
	add	x2, x1, x2
	mov	x1, x22
	mov	x20, x0
	bl	_web_base64__alphabet_char
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x21
	mov	w2, w0
	mov	x0, x20
	cmp	x24, #0
	cmp	w2, #0
	bne	L483
	mov	x2, x1
	mov	x21, x1
	mov	x1, x24
	mov	x20, x0
	bl	_nox_str_concat
	mov	w4, w23
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L455
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L454
	mov	x1, x24
	b	L456
L454:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x20
	b	L456
L455:
	mov	x1, x24
	mov	w23, w4
L456:
	cmp	x1, #0
	beq	L460
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L459
	mov	w4, w23
	mov	x1, x22
	b	L461
L459:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	w4, w23
	mov	x1, x22
	mov	x0, x20
	b	L461
L460:
	mov	w4, w23
	mov	x1, x22
L461:
	mov	x2, #64
	sdiv	x2, x19, x2
	mov	x3, #64
	sdiv	x17, x19, x3
	msub	x5, x17, x3, x19
	cmp	x5, #0
	cset	w3, ne
	cmp	x5, #0
	cset	w5, lt
	and	w3, w3, w5
	mov	w3, w3
	sub	x2, x2, x3
	mov	x3, #64
	sdiv	x17, x2, x3
	msub	x2, x17, x3, x2
	cmp	x2, #0
	cset	w3, ne
	cmp	x2, #0
	cset	w5, lt
	and	w3, w3, w5
	mov	w3, w3
	mov	w22, w4
	mov	x4, #64
	mul	x3, x3, x4
	add	x2, x2, x3
	mov	x19, x0
	bl	_web_base64__alphabet_char
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	x21, #0
	cmp	w2, #0
	bne	L478
	mov	x2, x1
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_str_concat
	mov	w4, w22
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L466
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L465
	mov	x1, x21
	b	L467
L465:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L467
L466:
	mov	x1, x21
	mov	w23, w4
L467:
	cmp	x1, #0
	beq	L471
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L470
	mov	x1, x20
	b	L472
L470:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L472
L471:
	mov	x1, x20
L472:
	cmp	w23, #0
	beq	L522
	adrp	x2, _str19@page+8
	add	x2, x2, _str19@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L477
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L476
	mov	x1, x19
	b	L522
L476:
	bl	_nox_str_free_now
	mov	x1, x19
	b	L522
L477:
	mov	x1, x19
	b	L522
L478:
	mov	x1, x21
	cmp	x1, #0
	beq	L482
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L482
	bl	_nox_str_free_now
L482:
	mov	x0, #0
	b	L533
L483:
	mov	x1, x24
	cmp	x1, #0
	beq	L487
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L487
	bl	_nox_str_free_now
L487:
	mov	x0, #0
	b	L533
L488:
	mov	x1, x21
	cmp	x1, #0
	beq	L492
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L492
	mov	x24, x1
	mov	x19, x0
	bl	_nox_str_free_now
L492:
	mov	x0, #0
	b	L533
L493:
	mov	w23, w24
	mov	x24, x21
	mov	x21, x22
	mov	x19, x20
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x19
	mov	x2, #65536
	mul	x19, x1, x2
	mov	x1, #262144
	sdiv	x1, x19, x1
	mov	x2, #262144
	sdiv	x17, x19, x2
	msub	x3, x17, x2, x19
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x2, x1, x2
	mov	x1, x21
	mov	x20, x0
	bl	_web_base64__alphabet_char
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x20
	cmp	w2, #0
	bne	L528
	mov	x2, x1
	mov	x22, x1
	mov	x1, x24
	mov	x20, x0
	bl	_nox_str_concat
	mov	w4, w23
	mov	x1, x22
	mov	x22, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L499
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L498
	mov	x1, x24
	b	L500
L498:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x20
	b	L500
L499:
	mov	x1, x24
	mov	w23, w4
L500:
	cmp	x1, #0
	beq	L504
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L503
	mov	w4, w23
	mov	x1, x21
	b	L505
L503:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	w4, w23
	mov	x1, x21
	mov	x0, x20
	b	L505
L504:
	mov	w4, w23
	mov	x1, x21
L505:
	mov	x2, #4096
	sdiv	x2, x19, x2
	mov	x3, #4096
	sdiv	x17, x19, x3
	msub	x5, x17, x3, x19
	cmp	x5, #0
	cset	w3, ne
	cmp	x5, #0
	cset	w5, lt
	and	w3, w3, w5
	mov	w3, w3
	sub	x2, x2, x3
	mov	x3, #64
	sdiv	x17, x2, x3
	msub	x2, x17, x3, x2
	cmp	x2, #0
	cset	w3, ne
	cmp	x2, #0
	cset	w5, lt
	and	w3, w3, w5
	mov	w3, w3
	mov	w21, w4
	mov	x4, #64
	mul	x3, x3, x4
	add	x2, x2, x3
	mov	x19, x0
	bl	_web_base64__alphabet_char
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	x22, #0
	cmp	w2, #0
	bne	L523
	mov	x2, x1
	mov	x20, x1
	mov	x1, x22
	mov	x19, x0
	bl	_nox_str_concat
	mov	w4, w21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L510
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w21, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L509
	mov	x1, x22
	b	L511
L509:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L511
L510:
	mov	x1, x22
	mov	w21, w4
L511:
	cmp	x1, #0
	beq	L515
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L514
	mov	x1, x20
	mov	w4, w21
	b	L516
L514:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	w4, w21
	mov	x1, x20
	mov	x0, x19
	b	L516
L515:
	mov	x1, x20
	mov	w4, w21
L516:
	cmp	w4, #0
	beq	L522
	adrp	x2, _str18@page+8
	add	x2, x2, _str18@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L521
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L520
	mov	x1, x19
	b	L522
L520:
	bl	_nox_str_free_now
	mov	x1, x19
	b	L522
L521:
	mov	x1, x19
L522:
	mov	x0, x1
	b	L533
L523:
	mov	x1, x22
	cmp	x1, #0
	beq	L527
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L527
	bl	_nox_str_free_now
L527:
	mov	x0, #0
	b	L533
L528:
	mov	x1, x24
	cmp	x1, #0
	beq	L532
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L532
	bl	_nox_str_free_now
L532:
	mov	x0, #0
L533:
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	ldp	x29, x30, [sp], 96
	ret
/* end function web_base64__encode_bytes */

.text
.balign 4
.globl _web_base64_encode
_web_base64_encode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	bl	_web_base64__byte_len
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	w4, #1
	adrp	x3, _str20@page+8
	add	x3, x3, _str20@pageoff+8
	mov	x19, x0
	bl	_web_base64__encode_bytes
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str20@page+8
	add	x2, x2, _str20@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L540
	adrp	x1, _str20@page+8
	add	x1, x1, _str20@pageoff+8
	cmp	x1, #0
	beq	L539
	adrp	x1, _str20@page
	add	x1, x1, _str20@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str20@page
	add	x2, x2, _str20@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L538
	mov	x0, x19
	b	L541
L538:
	adrp	x1, _str20@page+8
	add	x1, x1, _str20@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L541
L539:
	mov	x0, x19
	b	L541
L540:
	mov	x0, #0
L541:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_base64_encode */

.text
.balign 4
.globl _web_base64_encode_url
_web_base64_encode_url:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	bl	_web_base64__byte_len
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	w4, #0
	adrp	x3, _str21@page+8
	add	x3, x3, _str21@pageoff+8
	mov	x19, x0
	bl	_web_base64__encode_bytes
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str21@page+8
	add	x2, x2, _str21@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L548
	adrp	x1, _str21@page+8
	add	x1, x1, _str21@pageoff+8
	cmp	x1, #0
	beq	L547
	adrp	x1, _str21@page
	add	x1, x1, _str21@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str21@page
	add	x2, x2, _str21@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L546
	mov	x0, x19
	b	L549
L546:
	adrp	x1, _str21@page+8
	add	x1, x1, _str21@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L549
L547:
	mov	x0, x19
	b	L549
L548:
	mov	x0, #0
L549:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_base64_encode_url */

.text
.balign 4
.globl _web_base64__hex_nibble
_web_base64__hex_nibble:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	cmp	x1, #48
	cset	w2, ge
	cmp	x1, #57
	cset	w3, le
	and	w2, w2, w3
	cmp	w2, #0
	bne	L556
	cmp	x1, #97
	cset	w2, ge
	cmp	x1, #102
	cset	w3, le
	and	w2, w2, w3
	cmp	w2, #0
	bne	L555
	cmp	x1, #65
	cset	w2, ge
	cmp	x1, #70
	cset	w3, le
	and	w2, w2, w3
	cmp	w2, #0
	bne	L554
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str22@page+8
	add	x2, x2, _str22@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_web_base64_Base64Error___init__
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	mov	x0, #0
	b	L557
L554:
	mov	x0, #55
	sub	x0, x1, x0
	b	L557
L555:
	mov	x0, #87
	sub	x0, x1, x0
	b	L557
L556:
	mov	x0, #48
	sub	x0, x1, x0
L557:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_base64__hex_nibble */

.text
.balign 4
.globl _web_base64_encode_hex_url
_web_base64_encode_hex_url:
	hint	#34
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	str	x19, [x29, 136]
	str	x20, [x29, 128]
	str	x21, [x29, 120]
	str	x22, [x29, 112]
	str	x23, [x29, 104]
	str	x24, [x29, 96]
	str	x25, [x29, 88]
	str	x26, [x29, 80]
	mov	x19, x1
	mov	x1, x19
	mov	x20, x0
	bl	_web_base64__byte_len
	mov	x21, x0
	mov	x0, x20
	str	x21, [x29, 32]
	mov	x1, #2
	sdiv	x17, x21, x1
	msub	x1, x17, x1, x21
	cmp	x1, #0
	cset	w2, ne
	cmp	x1, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	mov	x3, #2
	mul	x2, x2, x3
	add	x1, x1, x2
	adrp	x2, _str23@page+8
	add	x2, x2, _str23@pageoff+8
	cmp	x2, #0
	cmp	x1, #0
	beq	L560
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x20
	mov	x2, #5
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str24@page+8
	add	x2, x2, _str24@pageoff+8
	mov	x22, x1
	mov	x20, x0
	bl	_web_base64_Base64Error___init__
	mov	x1, x22
	mov	x0, x20
	mov	x20, x0
	bl	_nox_raise
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	cmp	w1, #0
	bne	L853
L560:
	mov	x25, x19
	adrp	x20, _str25@page+8
	add	x20, x20, _str25@pageoff+8
	mov	x19, #0
L561:
	mov	x1, #5
	add	x22, x19, x1
	mov	x1, #1
	add	x1, x19, x1
	mov	x2, #2
	add	x24, x19, x2
	mov	x2, #3
	add	x23, x19, x2
	cmp	x20, #0
	cmp	x22, x21
	bge	L690
	mov	x26, x1
	mov	x1, x19
	mov	x21, x0
	mov	x0, x25
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	bl	_web_base64__hex_nibble
	str	x0, [x29, 64]
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x26
	mov	w2, w0
	mov	x0, x21
	ldr	x26, [x29, 64]
	cmp	w2, #0
	bne	L682
	mov	x21, x0
	mov	x0, x25
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	bl	_web_base64__hex_nibble
	str	x0, [x29, 56]
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x24
	mov	w2, w0
	mov	x0, x21
	ldr	x24, [x29, 56]
	cmp	w2, #0
	bne	L674
	mov	x21, x0
	mov	x0, x25
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	bl	_web_base64__hex_nibble
	str	x0, [x29, 48]
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x23
	mov	w2, w0
	mov	x0, x21
	ldr	x23, [x29, 48]
	cmp	w2, #0
	bne	L666
	mov	x21, x0
	mov	x0, x25
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	bl	_web_base64__hex_nibble
	str	x0, [x29, 40]
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x21
	cmp	w2, #0
	bne	L658
	mov	x22, x1
	mov	x1, #4
	add	x1, x19, x1
	mov	x21, x0
	mov	x0, x25
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	bl	_web_base64__hex_nibble
	str	x0, [x29, 16]
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x21
	ldr	x22, [x29, 40]
	cmp	w2, #0
	bne	L650
	mov	x21, x0
	mov	x0, x25
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	bl	_web_base64__hex_nibble
	str	x0, [x29, 24]
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x25
	mov	w3, w0
	mov	x0, x21
	ldr	x2, [x29, 24]
	mov	x25, x1
	ldr	x1, [x29, 16]
	ldr	x21, [x29, 32]
	cmp	w3, #0
	bne	L642
	mov	x3, #16
	mul	x1, x1, x3
	add	x1, x1, x2
	mov	x2, #16
	mul	x2, x26, x2
	add	x2, x2, x24
	mov	x3, #65536
	mul	x2, x2, x3
	mov	x3, #16
	mul	x3, x23, x3
	add	x3, x3, x22
	mov	x4, #256
	mul	x3, x3, x4
	add	x2, x2, x3
	mov	x22, x20
	add	x20, x1, x2
	mov	x1, #262144
	sdiv	x1, x20, x1
	mov	x2, #262144
	sdiv	x17, x20, x2
	msub	x3, x17, x2, x20
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x2, x1, x2
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	mov	x23, x0
	bl	_web_base64__alphabet_char
	mov	x24, x0
	mov	x0, x23
	mov	x23, x0
	bl	_nox_exception_pending
	mov	x1, x24
	mov	w2, w0
	mov	x0, x23
	cmp	w2, #0
	bne	L634
	mov	x2, x1
	mov	x24, x1
	mov	x1, x22
	mov	x23, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x24, x0
	mov	x0, x23
	cmp	x1, #0
	beq	L573
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L572
	mov	x1, x25
	b	L574
L572:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x23
	b	L574
L573:
	mov	x1, x25
L574:
	cmp	x22, #0
	beq	L578
	mov	x2, #8
	sub	x2, x22, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x22, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L577
	mov	x23, x1
	b	L579
L577:
	mov	x23, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x0, x22
	b	L579
L578:
	mov	x23, x1
L579:
	mov	x1, #4096
	sdiv	x1, x20, x1
	mov	x2, #4096
	sdiv	x17, x20, x2
	msub	x3, x17, x2, x20
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x1, x1, x2
	mov	x2, #64
	sdiv	x17, x1, x2
	msub	x1, x17, x2, x1
	cmp	x1, #0
	cset	w2, ne
	cmp	x1, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	mov	x3, #64
	mul	x2, x2, x3
	add	x2, x1, x2
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	mov	x22, x0
	bl	_web_base64__alphabet_char
	mov	x25, x0
	mov	x0, x22
	mov	x22, x0
	bl	_nox_exception_pending
	mov	x1, x25
	mov	w2, w0
	mov	x0, x22
	cmp	x24, #0
	cmp	w2, #0
	bne	L626
	mov	x2, x1
	mov	x25, x1
	mov	x1, x24
	mov	x22, x0
	bl	_nox_str_concat
	mov	x1, x25
	mov	x25, x0
	mov	x0, x22
	cmp	x1, #0
	beq	L584
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L583
	mov	x1, x24
	b	L585
L583:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x22
	b	L585
L584:
	mov	x1, x24
L585:
	cmp	x1, #0
	beq	L588
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L588
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x0, x22
L588:
	mov	x1, #64
	sdiv	x1, x20, x1
	mov	x2, #64
	sdiv	x17, x20, x2
	msub	x3, x17, x2, x20
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x1, x1, x2
	mov	x2, #64
	sdiv	x17, x1, x2
	msub	x1, x17, x2, x1
	cmp	x1, #0
	cset	w2, ne
	cmp	x1, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	mov	x3, #64
	mul	x2, x2, x3
	add	x2, x1, x2
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	mov	x22, x0
	bl	_web_base64__alphabet_char
	mov	x24, x0
	mov	x0, x22
	mov	x22, x0
	bl	_nox_exception_pending
	mov	x1, x24
	mov	w2, w0
	mov	x0, x22
	cmp	x25, #0
	cmp	w2, #0
	bne	L618
	mov	x2, x1
	mov	x24, x1
	mov	x1, x25
	mov	x22, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x24, x0
	mov	x0, x22
	cmp	x1, #0
	beq	L593
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L592
	mov	x1, x25
	b	L594
L592:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x22
	b	L594
L593:
	mov	x1, x25
L594:
	cmp	x1, #0
	beq	L597
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L597
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x0, x22
L597:
	mov	x1, #64
	sdiv	x17, x20, x1
	msub	x1, x17, x1, x20
	cmp	x1, #0
	cset	w2, ne
	cmp	x1, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	mov	x3, #64
	mul	x2, x2, x3
	add	x2, x1, x2
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	mov	x20, x0
	bl	_web_base64__alphabet_char
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x20
	cmp	x24, #0
	cmp	w2, #0
	bne	L610
	mov	x2, x1
	mov	x22, x1
	mov	x1, x24
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x22
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x1, #0
	beq	L602
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L601
	mov	x1, x24
	b	L603
L601:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x22
	b	L603
L602:
	mov	x1, x24
L603:
	cmp	x1, #0
	beq	L607
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L606
	mov	x1, x23
	b	L608
L606:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x22
	b	L608
L607:
	mov	x1, x23
L608:
	mov	x2, #6
	add	x19, x19, x2
	mov	x25, x1
	b	L561
L610:
	mov	x1, x24
	cmp	x1, #0
	beq	L614
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L614
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L614:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L617
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L617
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L617:
	mov	x0, #0
	b	L857
L618:
	mov	x1, x25
	cmp	x1, #0
	beq	L622
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L622
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L622:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L625
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L625
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L625:
	mov	x0, #0
	b	L857
L626:
	mov	x1, x24
	cmp	x1, #0
	beq	L630
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L630
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L630:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L633
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L633
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L633:
	mov	x0, #0
	b	L857
L634:
	mov	x1, x22
	cmp	x1, #0
	beq	L638
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L638
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L638:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L641
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L641
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L641:
	mov	x0, #0
	b	L857
L642:
	mov	x1, x20
	cmp	x1, #0
	beq	L646
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L646
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L646:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L649
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L649
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L649:
	mov	x0, #0
	b	L857
L650:
	mov	x1, x20
	cmp	x1, #0
	beq	L654
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L654
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L654:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L657
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L657
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L657:
	mov	x0, #0
	b	L857
L658:
	mov	x1, x20
	cmp	x1, #0
	beq	L662
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L662
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L662:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L665
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L665
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L665:
	mov	x0, #0
	b	L857
L666:
	mov	x1, x20
	cmp	x1, #0
	beq	L670
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L670
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L670:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L673
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L673
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L673:
	mov	x0, #0
	b	L857
L674:
	mov	x1, x20
	cmp	x1, #0
	beq	L678
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L678
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L678:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L681
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L681
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L681:
	mov	x0, #0
	b	L857
L682:
	mov	x1, x20
	cmp	x1, #0
	beq	L686
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L686
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L686:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L689
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L689
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L689:
	mov	x0, #0
	b	L857
L690:
	ldr	x21, [x29, 32]
	mov	x17, x23
	mov	x23, x25
	mov	x25, x17
	mov	x17, x1
	mov	x1, x23
	mov	x23, x17
	mov	x17, x19
	mov	x19, x1
	mov	x1, x17
	sub	x2, x21, x1
	cmp	x2, #2
	beq	L794
	cmp	x2, #4
	beq	L704
	mov	x1, x2
	cmp	x1, #0
	bne	L696
	mov	x1, x20
	b	L817
L696:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str26@page+8
	add	x2, x2, _str26@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_web_base64_Base64Error___init__
	mov	x1, x21
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	beq	L817
	cmp	x1, #0
	beq	L700
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L700
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L700:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L703
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L703
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	mov	x22, x0
	bl	_nox_str_free_now
L703:
	mov	x0, #0
	b	L857
L704:
	mov	x21, x20
	mov	x22, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	_web_base64__hex_nibble
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	_nox_exception_pending
	mov	x1, x23
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L786
	mov	x23, x1
	mov	x19, x0
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	_web_base64__hex_nibble
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x23, x0
	mov	x0, x22
	bl	_nox_exception_pending
	mov	x1, x24
	mov	w2, w0
	mov	x0, x23
	cmp	w2, #0
	bne	L778
	mov	x23, x0
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x23
	mov	x23, x0
	mov	x0, x22
	bl	_web_base64__hex_nibble
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	mov	x24, x0
	mov	x0, x22
	bl	_nox_exception_pending
	mov	x1, x25
	mov	w2, w0
	mov	x0, x24
	cmp	w2, #0
	bne	L770
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x22
	mov	x22, x0
	bl	_web_base64__hex_nibble
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x24, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x24
	cmp	w1, #0
	bne	L762
	mov	x1, #16
	mul	x1, x23, x1
	add	x2, x1, x22
	mov	x1, #16
	mul	x1, x20, x1
	add	x1, x1, x19
	mov	x3, #65536
	mul	x1, x1, x3
	mov	x3, #256
	mul	x2, x2, x3
	add	x19, x1, x2
	mov	x1, #262144
	sdiv	x1, x19, x1
	mov	x2, #262144
	sdiv	x17, x19, x2
	msub	x3, x17, x2, x19
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x2, x1, x2
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	mov	x20, x0
	bl	_web_base64__alphabet_char
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x20
	cmp	w2, #0
	bne	L754
	mov	x2, x1
	mov	x22, x1
	mov	x1, x21
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x22
	mov	x22, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L714
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L713
	mov	x1, x21
	b	L715
L713:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L715
L714:
	mov	x1, x21
L715:
	cmp	x1, #0
	beq	L718
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L718
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L718:
	mov	x1, #4096
	sdiv	x1, x19, x1
	mov	x2, #4096
	sdiv	x17, x19, x2
	msub	x3, x17, x2, x19
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x1, x1, x2
	mov	x2, #64
	sdiv	x17, x1, x2
	msub	x1, x17, x2, x1
	cmp	x1, #0
	cset	w2, ne
	cmp	x1, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	mov	x3, #64
	mul	x2, x2, x3
	add	x2, x1, x2
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	mov	x20, x0
	bl	_web_base64__alphabet_char
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x21
	mov	w2, w0
	mov	x0, x20
	cmp	x22, #0
	cmp	w2, #0
	bne	L746
	mov	x2, x1
	mov	x21, x1
	mov	x1, x22
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L723
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L722
	mov	x1, x22
	b	L724
L722:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L724
L723:
	mov	x1, x22
L724:
	cmp	x1, #0
	beq	L727
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L727
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L727:
	mov	x1, #64
	sdiv	x1, x19, x1
	mov	x2, #64
	sdiv	x17, x19, x2
	msub	x3, x17, x2, x19
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x1, x1, x2
	mov	x2, #64
	sdiv	x17, x1, x2
	msub	x1, x17, x2, x1
	cmp	x1, #0
	cset	w2, ne
	cmp	x1, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	mov	x3, #64
	mul	x2, x2, x3
	add	x2, x1, x2
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	mov	x19, x0
	bl	_web_base64__alphabet_char
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	x21, #0
	cmp	w2, #0
	bne	L738
	mov	x2, x1
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L732
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L731
	mov	x1, x21
	b	L733
L731:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L733
L732:
	mov	x1, x21
L733:
	cmp	x1, #0
	beq	L737
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L736
	mov	x1, x20
	b	L817
L736:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L817
L737:
	mov	x1, x20
	b	L817
L738:
	mov	x1, x21
	cmp	x1, #0
	beq	L742
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L742
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L742:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L745
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L745
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L745:
	mov	x0, #0
	b	L857
L746:
	mov	x1, x22
	cmp	x1, #0
	beq	L750
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L750
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L750:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L753
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L753
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L753:
	mov	x0, #0
	b	L857
L754:
	mov	x1, x21
	cmp	x1, #0
	beq	L758
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L758
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L758:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L761
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L761
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L761:
	mov	x0, #0
	b	L857
L762:
	mov	x1, x21
	cmp	x1, #0
	beq	L766
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L766
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L766:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L769
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L769
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L769:
	mov	x0, #0
	b	L857
L770:
	mov	x1, x21
	mov	x0, x22
	cmp	x1, #0
	beq	L774
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L774
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L774:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L777
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L777
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L777:
	mov	x0, #0
	b	L857
L778:
	mov	x1, x21
	mov	x0, x22
	cmp	x1, #0
	beq	L782
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L782
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L782:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L785
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L785
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L785:
	mov	x0, #0
	b	L857
L786:
	mov	x1, x21
	mov	x0, x22
	cmp	x1, #0
	beq	L790
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L790
	mov	x22, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L790:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L793
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L793
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	mov	x19, x0
	bl	_nox_str_free_now
L793:
	mov	x0, #0
	b	L857
L794:
	mov	x22, x20
	mov	x17, x19
	mov	x19, x0
	mov	x0, x17
	mov	x20, x0
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x19
	bl	_web_base64__hex_nibble
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, x19
	bl	_nox_exception_pending
	mov	x1, x23
	mov	w2, w0
	mov	x0, x21
	cmp	w2, #0
	bne	L845
	bl	_nox_str_byte_at
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	bl	_web_base64__hex_nibble
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x21
	cmp	w1, #0
	bne	L837
	mov	x1, #16
	mul	x1, x20, x1
	add	x1, x1, x19
	mov	x2, #65536
	mul	x19, x1, x2
	mov	x1, #262144
	sdiv	x1, x19, x1
	mov	x2, #262144
	sdiv	x17, x19, x2
	msub	x3, x17, x2, x19
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x2, x1, x2
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	mov	x20, x0
	bl	_web_base64__alphabet_char
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x21
	mov	w2, w0
	mov	x0, x20
	cmp	w2, #0
	bne	L829
	mov	x2, x1
	mov	x21, x1
	mov	x1, x22
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L802
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L801
	mov	x1, x22
	b	L803
L801:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L803
L802:
	mov	x1, x22
L803:
	cmp	x1, #0
	beq	L806
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L806
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L806:
	mov	x1, #4096
	sdiv	x1, x19, x1
	mov	x2, #4096
	sdiv	x17, x19, x2
	msub	x3, x17, x2, x19
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x1, x1, x2
	mov	x2, #64
	sdiv	x17, x1, x2
	msub	x1, x17, x2, x1
	cmp	x1, #0
	cset	w2, ne
	cmp	x1, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	mov	x3, #64
	mul	x2, x2, x3
	add	x2, x1, x2
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	mov	x19, x0
	bl	_web_base64__alphabet_char
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	x21, #0
	cmp	w2, #0
	bne	L821
	mov	x2, x1
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L811
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L810
	mov	x1, x21
	b	L812
L810:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L812
L811:
	mov	x1, x21
L812:
	cmp	x1, #0
	beq	L816
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L815
	mov	x1, x20
	b	L817
L815:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L817
L816:
	mov	x1, x20
L817:
	adrp	x2, _str23@page+8
	add	x2, x2, _str23@pageoff+8
	cmp	x2, #0
	beq	L820
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	adrp	x3, _str23@page
	add	x3, x3, _str23@pageoff
	str	x2, [x3]
	cmp	x2, #0
	bgt	L820
	mov	x19, x1
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
	mov	x1, x19
L820:
	mov	x0, x1
	b	L857
L821:
	mov	x1, x21
	cmp	x1, #0
	beq	L825
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L825
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L825:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L828
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L828
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L828:
	mov	x0, #0
	b	L857
L829:
	mov	x1, x22
	cmp	x1, #0
	beq	L833
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L833
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L833:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L836
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L836
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L836:
	mov	x0, #0
	b	L857
L837:
	mov	x1, x22
	cmp	x1, #0
	beq	L841
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L841
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L841:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L844
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L844
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L844:
	mov	x0, #0
	b	L857
L845:
	mov	x1, x22
	mov	x0, x19
	cmp	x1, #0
	beq	L849
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L849
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L849:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L852
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L852
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L852:
	mov	x0, #0
	b	L857
L853:
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	cmp	x1, #0
	beq	L856
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str23@page
	add	x2, x2, _str23@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L856
	adrp	x1, _str23@page+8
	add	x1, x1, _str23@pageoff+8
	bl	_nox_str_free_now
L856:
	mov	x0, #0
L857:
	ldr	x19, [x29, 136]
	ldr	x20, [x29, 128]
	ldr	x21, [x29, 120]
	ldr	x22, [x29, 112]
	ldr	x23, [x29, 104]
	ldr	x24, [x29, 96]
	ldr	x25, [x29, 88]
	ldr	x26, [x29, 80]
	ldp	x29, x30, [sp], 144
	ret
/* end function web_base64_encode_hex_url */

.text
.balign 4
.globl _web_base64__decode_to_ascii_impl
_web_base64__decode_to_ascii_impl:
	hint	#34
	stp	x29, x30, [sp, -240]!
	mov	x29, sp
	str	x19, [x29, 232]
	str	x20, [x29, 224]
	str	x21, [x29, 216]
	str	x22, [x29, 208]
	str	x23, [x29, 200]
	str	x24, [x29, 192]
	str	x25, [x29, 184]
	str	x26, [x29, 176]
	str	x27, [x29, 168]
	str	x28, [x29, 160]
	mov	x22, x2
	str	x22, [x29, 64]
	cmp	x1, #0
	beq	L860
	mov	x2, #8
	sub	x4, x1, x2
	ldr	x2, [x4]
	mov	x5, #1
	add	x2, x2, x5
	str	x2, [x4]
L860:
	cmp	w3, #0
	beq	L870
	mov	x19, #0
L862:
	mov	x21, x1
	adrp	x1, _str27@page+8
	add	x1, x1, _str27@pageoff+8
	mov	x20, x0
	mov	x0, x21
	bl	_nox_strings_ends_with_raw
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	cmp	x2, #0
	beq	L871
	mov	x21, x1
	mov	x20, x0
	bl	_web_base64__drop_last
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L867
	mov	x3, #8
	sub	x3, x1, x3
	mov	x22, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L866
	mov	x1, x21
	mov	x2, x22
	b	L868
L866:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x2, x22
	mov	x1, x21
	mov	x0, x20
	b	L868
L867:
	mov	x1, x21
L868:
	mov	x3, #1
	add	x19, x19, x3
	mov	x22, x2
	b	L862
L870:
	mov	x19, #0
L871:
	mov	x23, x1
	mov	x20, x0
	bl	_web_base64__byte_len
	mov	x1, x0
	mov	x0, x20
	mov	x2, #4
	sdiv	x17, x1, x2
	msub	x1, x17, x2, x1
	cmp	x1, #0
	cset	w2, ne
	cmp	x1, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	mov	x3, #4
	mul	x2, x2, x3
	add	x20, x1, x2
	cmp	x23, #0
	cmp	x20, #1
	beq	L873
	mov	x1, x23
	b	L874
L873:
	mov	x1, #16
	mov	x21, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #5
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str28@page+8
	add	x2, x2, _str28@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_base64_Base64Error___init__
	mov	x1, x24
	mov	x0, x21
	mov	x21, x0
	bl	_nox_raise
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x23
	mov	w2, w0
	mov	x0, x21
	cmp	w2, #0
	bne	L1104
L874:
	cmp	x19, #0
	cmp	x20, #2
	beq	L883
	cmp	x20, #3
	bne	L890
	cmp	x19, #0
	bne	L878
	mov	x19, #1
L878:
	adrp	x2, _str30@page+8
	add	x2, x2, _str30@pageoff+8
	mov	x21, x1
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L882
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L881
	mov	x1, x21
	b	L890
L881:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L890
L882:
	mov	x1, x21
	b	L890
L883:
	cmp	x19, #0
	bne	L885
	mov	x19, #2
L885:
	adrp	x2, _str29@page+8
	add	x2, x2, _str29@pageoff+8
	mov	x21, x1
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L889
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L888
	mov	x1, x21
	b	L890
L888:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L890
L889:
	mov	x1, x21
L890:
	mov	x21, x1
	mov	x20, x0
	bl	_web_base64__byte_len
	mov	x1, x21
	mov	x28, x0
	mov	x0, x20
	str	x28, [x29, 24]
	mov	x21, x1
	mov	x1, #4
	sdiv	x17, x28, x1
	msub	x1, x17, x1, x28
	cmp	x1, #0
	cset	w2, ne
	cmp	x1, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	mov	x3, #4
	mul	x2, x2, x3
	add	x1, x1, x2
	cmp	x21, #0
	cmp	x1, #0
	bne	L892
	mov	x1, x21
	b	L893
L892:
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x20
	mov	x2, #5
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str31@page+8
	add	x2, x2, _str31@pageoff+8
	mov	x23, x1
	mov	x20, x0
	bl	_web_base64_Base64Error___init__
	mov	x1, x23
	mov	x0, x20
	mov	x20, x0
	bl	_nox_raise
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x21
	mov	w2, w0
	mov	x0, x20
	cmp	w2, #0
	bne	L1100
L893:
	mov	x21, x1
	mov	x1, #4
	sdiv	x1, x28, x1
	mov	x2, #4
	sdiv	x17, x28, x2
	msub	x3, x17, x2, x28
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x1, x1, x2
	mov	x2, #3
	mul	x1, x1, x2
	sub	x19, x1, x19
	str	x19, [x29, 32]
	cmp	x19, #0
	bge	L895
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str32@page+8
	add	x2, x2, _str32@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_web_base64_Base64Error___init__
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L1095
L895:
	mov	x19, x0
	mov	x0, x21
	bl	_nox_str_char_count
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	str	x19, [x29, 40]
	mov	x20, x0
	mov	x0, x21
	bl	_nox_str_is_ascii
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x20, [x29, 88]
	mov	x2, x22
	adrp	x23, _str33@page+8
	add	x23, x23, _str33@pageoff+8
	mov	x22, #0
	mov	x24, #0
L897:
	str	x22, [x29, 136]
	cmp	x24, x28
	bge	L1089
	cmp	x24, #0
	mov	x25, x1
	cset	w1, lt
	cmp	x24, x19
	mov	x26, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	x23, #0
	cmp	w1, #0
	bne	L900
	mov	x1, x25
	mov	x2, x26
	b	L901
L900:
	mov	x1, #16
	mov	x21, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str34@page+8
	add	x2, x2, _str34@pageoff+8
	mov	x26, x1
	mov	x21, x0
	bl	_IndexError___init__
	mov	x1, x26
	mov	x0, x21
	ldr	x26, [x29, 64]
	mov	x21, x0
	bl	_nox_raise
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x2, x26
	mov	x1, x25
	mov	w3, w0
	mov	x0, x21
	cmp	w3, #0
	bne	L1081
L901:
	cmp	w20, #0
	bne	L904
	mov	x26, x2
	mov	x2, x24
	mov	x25, x1
	mov	x21, x0
	bl	_nox_str_char_at
	mov	x2, x26
	mov	x1, x25
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x25, x1
	mov	x1, x21
	b	L905
L904:
	mov	x26, x2
	add	x2, x1, x24
	ldrb	w3, [x2]
	str	w3, [x29, 144]
	mov	x25, x1
	mov	x1, #2
	mov	x21, x0
	bl	_nox_rc_alloc
	mov	x2, x26
	mov	x1, x0
	mov	x0, x21
	ldr	w3, [x29, 144]
	strb	w3, [x1]
	mov	x3, #1
	add	x4, x1, x3
	mov	w3, #0
	strb	w3, [x4]
L905:
	mov	x21, x2
	mov	x2, x1
	mov	x26, x1
	mov	x1, x21
	mov	x21, x0
	bl	_web_base64__value_of
	str	x0, [x29, 104]
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x26
	mov	w3, w0
	mov	x0, x21
	ldr	x2, [x29, 64]
	cmp	w3, #0
	bne	L1073
	cmp	x1, #0
	beq	L910
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L909
	mov	x1, x25
	mov	x2, x26
	b	L911
L909:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	b	L911
L910:
	mov	x1, x25
L911:
	mov	x3, #1
	add	x21, x24, x3
	cmp	x21, #0
	mov	x25, x1
	cset	w1, lt
	cmp	x21, x19
	mov	x26, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L913
	mov	x1, x25
	mov	x2, x26
	b	L914
L913:
	mov	x1, #16
	mov	x22, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x22
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str35@page+8
	add	x2, x2, _str35@pageoff+8
	mov	x26, x1
	mov	x22, x0
	bl	_IndexError___init__
	mov	x1, x26
	mov	x0, x22
	ldr	x26, [x29, 64]
	mov	x22, x0
	bl	_nox_raise
	mov	x0, x22
	mov	x22, x0
	bl	_nox_exception_pending
	mov	x2, x26
	mov	x1, x25
	mov	w3, w0
	mov	x0, x22
	ldr	x22, [x29, 136]
	cmp	w3, #0
	bne	L1065
L914:
	cmp	w20, #0
	bne	L917
	mov	x26, x2
	mov	x2, x21
	mov	x25, x1
	mov	x21, x0
	bl	_nox_str_char_at
	mov	x2, x26
	mov	x1, x25
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x25, x1
	mov	x1, x21
	b	L918
L917:
	mov	x26, x2
	add	x2, x1, x21
	ldrb	w3, [x2]
	str	w3, [x29, 132]
	mov	x25, x1
	mov	x1, #2
	mov	x21, x0
	bl	_nox_rc_alloc
	mov	x2, x26
	mov	x1, x0
	mov	x0, x21
	ldr	w3, [x29, 132]
	strb	w3, [x1]
	mov	x3, #1
	add	x4, x1, x3
	mov	w3, #0
	strb	w3, [x4]
L918:
	mov	x21, x2
	mov	x2, x1
	mov	x26, x1
	mov	x1, x21
	mov	x21, x0
	bl	_web_base64__value_of
	str	x0, [x29, 112]
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x26
	mov	w3, w0
	mov	x0, x21
	ldr	x2, [x29, 64]
	cmp	w3, #0
	bne	L1057
	cmp	x1, #0
	beq	L923
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L922
	mov	x1, x25
	mov	x2, x26
	b	L924
L922:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	b	L924
L923:
	mov	x1, x25
L924:
	mov	x3, #2
	add	x21, x24, x3
	cmp	x21, #0
	mov	x25, x1
	cset	w1, lt
	cmp	x21, x19
	mov	x26, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L926
	mov	x1, x25
	mov	x2, x26
	b	L927
L926:
	mov	x1, #16
	mov	x22, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x22
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str36@page+8
	add	x2, x2, _str36@pageoff+8
	mov	x26, x1
	mov	x22, x0
	bl	_IndexError___init__
	mov	x1, x26
	mov	x0, x22
	ldr	x26, [x29, 64]
	mov	x22, x0
	bl	_nox_raise
	mov	x0, x22
	mov	x22, x0
	bl	_nox_exception_pending
	mov	x2, x26
	mov	x1, x25
	mov	w3, w0
	mov	x0, x22
	ldr	x22, [x29, 136]
	cmp	w3, #0
	bne	L1049
L927:
	cmp	w20, #0
	bne	L930
	mov	x26, x2
	mov	x2, x21
	mov	x25, x1
	mov	x21, x0
	bl	_nox_str_char_at
	mov	x2, x26
	mov	x1, x25
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x25, x1
	mov	x1, x21
	b	L931
L930:
	mov	x26, x2
	add	x2, x1, x21
	ldrb	w3, [x2]
	str	w3, [x29, 128]
	mov	x25, x1
	mov	x1, #2
	mov	x21, x0
	bl	_nox_rc_alloc
	mov	x2, x26
	mov	x1, x0
	mov	x0, x21
	ldr	w3, [x29, 128]
	strb	w3, [x1]
	mov	x3, #1
	add	x4, x1, x3
	mov	w3, #0
	strb	w3, [x4]
L931:
	mov	x21, x2
	mov	x2, x1
	mov	x26, x1
	mov	x1, x21
	mov	x21, x0
	bl	_web_base64__value_of
	str	x0, [x29, 120]
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x26
	mov	w3, w0
	mov	x0, x21
	ldr	x2, [x29, 64]
	cmp	w3, #0
	bne	L1041
	cmp	x1, #0
	beq	L936
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L935
	mov	x1, x25
	mov	x2, x26
	b	L937
L935:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	b	L937
L936:
	mov	x1, x25
L937:
	mov	x3, #3
	mov	x21, x19
	add	x19, x24, x3
	cmp	x19, #0
	mov	x25, x1
	cset	w1, lt
	cmp	x19, x21
	mov	x26, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L939
	mov	x1, x25
	mov	x2, x26
	b	L940
L939:
	mov	x1, #16
	mov	x21, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str37@page+8
	add	x2, x2, _str37@pageoff+8
	mov	x26, x1
	mov	x21, x0
	bl	_IndexError___init__
	mov	x1, x26
	mov	x0, x21
	ldr	x26, [x29, 64]
	mov	x21, x0
	bl	_nox_raise
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x2, x26
	mov	x1, x25
	mov	w3, w0
	mov	x0, x21
	cmp	w3, #0
	bne	L1033
L940:
	cmp	w20, #0
	bne	L943
	mov	x25, x2
	mov	x2, x19
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_char_at
	mov	x2, x25
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x25, x1
	mov	x1, x19
	b	L944
L943:
	mov	x26, x2
	add	x2, x1, x19
	ldrb	w19, [x2]
	mov	x25, x1
	mov	x1, #2
	mov	x21, x0
	bl	_nox_rc_alloc
	mov	x2, x26
	mov	x1, x0
	mov	x0, x21
	strb	w19, [x1]
	mov	x3, #1
	add	x4, x1, x3
	mov	w3, #0
	strb	w3, [x4]
L944:
	mov	x26, x2
	mov	x2, x1
	mov	x21, x1
	mov	x1, x26
	mov	x19, x0
	bl	_web_base64__value_of
	str	x0, [x29, 96]
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x2, x26
	mov	x1, x21
	mov	w7, w0
	mov	x0, x19
	ldr	x4, [x29, 96]
	ldr	x5, [x29, 120]
	ldr	x6, [x29, 112]
	ldr	x3, [x29, 104]
	ldr	x19, [x29, 40]
	ldr	x21, [x29, 32]
	ldr	x28, [x29, 24]
	cmp	w7, #0
	bne	L1025
	cmp	x1, #0
	beq	L949
	mov	x7, #8
	sub	x7, x1, x7
	mov	x26, x2
	ldr	x2, [x7]
	mov	x8, #1
	sub	x2, x2, x8
	str	x2, [x7]
	cmp	x2, #0
	ble	L948
	mov	x1, x25
	mov	x2, x26
	b	L950
L948:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	ldr	x4, [x29, 96]
	ldr	x5, [x29, 120]
	ldr	x6, [x29, 112]
	ldr	x3, [x29, 104]
	ldr	x21, [x29, 32]
	ldr	x28, [x29, 24]
	b	L950
L949:
	mov	x1, x25
L950:
	mov	x7, #262144
	mul	x3, x3, x7
	mov	x7, #4096
	mul	x6, x6, x7
	add	x3, x3, x6
	mov	x6, #64
	mul	x5, x5, x6
	add	x3, x3, x5
	add	x3, x3, x4
	mov	x25, x1
	mov	x1, #65536
	sdiv	x1, x3, x1
	mov	x4, #65536
	sdiv	x17, x3, x4
	msub	x4, x17, x4, x3
	mov	x5, #256
	sdiv	x5, x3, x5
	mov	x6, #256
	sdiv	x17, x3, x6
	msub	x7, x17, x6, x3
	cmp	x7, #0
	cset	w6, ne
	cmp	x7, #0
	cset	w7, lt
	and	w6, w6, w7
	mov	w6, w6
	sub	x5, x5, x6
	mov	x6, #256
	mov	x27, x21
	sdiv	x17, x5, x6
	msub	x21, x17, x6, x5
	str	x21, [x29, 80]
	mov	x5, #256
	sdiv	x17, x3, x5
	msub	x3, x17, x5, x3
	str	x3, [x29, 56]
	cmp	x22, x27
	blt	L952
	mov	x1, x3
	mov	x26, x2
	b	L967
L952:
	mov	x3, x4
	cmp	x3, #0
	mov	x26, x2
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x1, x1, x2
	mov	x20, x0
	bl	_web_base64__byte_to_ascii
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x2, x26
	mov	x1, x21
	mov	w3, w0
	mov	x0, x20
	cmp	w3, #0
	bne	L1017
	mov	x26, x2
	mov	x2, x1
	mov	x21, x1
	mov	x1, x23
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	ldr	x20, [x29, 88]
	ldr	x3, [x29, 56]
	ldr	x21, [x29, 80]
	ldr	x27, [x29, 32]
	ldr	x28, [x29, 24]
	str	x2, [x29, 72]
	cmp	x1, #0
	beq	L959
	mov	x4, #8
	sub	x5, x1, x4
	ldr	x4, [x5]
	mov	x6, #1
	sub	x4, x4, x6
	str	x4, [x5]
	cmp	x4, #0
	ble	L958
	mov	x1, x3
	mov	x17, x25
	mov	x25, x1
	mov	x1, x17
	b	L960
L958:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	mov	x26, x2
	ldr	x2, [x29, 72]
	ldr	x25, [x29, 56]
	ldr	x21, [x29, 80]
	ldr	x27, [x29, 32]
	ldr	x28, [x29, 24]
	b	L960
L959:
	mov	x1, x25
	mov	x25, x3
L960:
	cmp	x23, #0
	beq	L965
	mov	x3, #8
	sub	x3, x23, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x23, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L964
	mov	x23, x2
	mov	x17, x1
	mov	x1, x25
	mov	x25, x17
	mov	x2, x26
	b	L966
L964:
	mov	x25, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	ldr	x23, [x29, 72]
	mov	x25, x1
	ldr	x1, [x29, 56]
	ldr	x27, [x29, 32]
	ldr	x28, [x29, 24]
	b	L966
L965:
	mov	x23, x2
	mov	x17, x1
	mov	x1, x25
	mov	x25, x17
	mov	x2, x26
L966:
	mov	x26, x2
	mov	x2, #1
	add	x22, x22, x2
L967:
	cmp	x22, x27
	blt	L969
	mov	x21, x27
	mov	x2, x26
	mov	x26, x1
	b	L983
L969:
	cmp	x21, #0
	cset	w1, ne
	cmp	x21, #0
	cset	w2, lt
	and	w1, w1, w2
	mov	w1, w1
	mov	x2, #256
	mul	x1, x1, x2
	add	x1, x21, x1
	mov	x21, x0
	bl	_web_base64__byte_to_ascii
	mov	x26, x0
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x26
	mov	w2, w0
	mov	x0, x21
	cmp	x23, #0
	cmp	w2, #0
	bne	L1009
	mov	x2, x1
	mov	x26, x1
	mov	x1, x23
	mov	x21, x0
	bl	_nox_str_concat
	mov	x1, x26
	mov	x2, x0
	mov	x0, x21
	ldr	x21, [x29, 56]
	ldr	x27, [x29, 32]
	ldr	x28, [x29, 24]
	ldr	x26, [x29, 64]
	str	x2, [x29, 48]
	cmp	x1, #0
	beq	L975
	mov	x3, #8
	sub	x4, x1, x3
	ldr	x3, [x4]
	mov	x5, #1
	sub	x3, x3, x5
	str	x3, [x4]
	cmp	x3, #0
	ble	L974
	mov	x1, x2
	mov	x2, x26
	mov	x26, x21
	mov	x21, x23
	mov	x23, x1
	mov	x1, x25
	b	L976
L974:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	mov	x21, x23
	ldr	x23, [x29, 48]
	ldr	x26, [x29, 56]
	ldr	x27, [x29, 32]
	ldr	x28, [x29, 24]
	b	L976
L975:
	mov	x1, x25
	mov	x17, x21
	mov	x21, x26
	mov	x26, x17
	mov	x17, x23
	mov	x23, x21
	mov	x21, x17
	mov	x17, x2
	mov	x2, x23
	mov	x23, x17
L976:
	cmp	x21, #0
	beq	L981
	mov	x25, x2
	mov	x2, #8
	sub	x2, x21, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x21, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L980
	mov	x21, x27
	mov	x2, x25
	b	L982
L980:
	mov	x23, x1
	mov	x1, x21
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x25
	mov	x1, x23
	mov	x0, x21
	ldr	x23, [x29, 48]
	ldr	x21, [x29, 32]
	ldr	x28, [x29, 24]
	b	L982
L981:
	mov	x21, x27
L982:
	mov	x25, x1
	mov	x1, #1
	add	x22, x22, x1
L983:
	cmp	x22, x21
	blt	L985
	mov	x1, x25
	mov	x25, x28
	b	L999
L985:
	mov	x19, x26
	cmp	x19, #0
	cset	w1, ne
	cmp	x19, #0
	cset	w3, lt
	and	w1, w1, w3
	mov	w1, w1
	mov	x26, x2
	mov	x2, #256
	mul	x1, x1, x2
	add	x1, x19, x1
	mov	x19, x0
	bl	_web_base64__byte_to_ascii
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x2, x26
	mov	x1, x21
	mov	w3, w0
	mov	x0, x19
	cmp	x23, #0
	cmp	w3, #0
	bne	L1001
	mov	x26, x2
	mov	x2, x1
	mov	x21, x1
	mov	x1, x23
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x26
	mov	x1, x21
	mov	x27, x0
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x21, [x29, 32]
	ldr	x28, [x29, 24]
	str	x27, [x29, 16]
	cmp	x1, #0
	beq	L991
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L990
	mov	x1, x25
	mov	x25, x28
	mov	x2, x26
	b	L992
L990:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	ldr	x27, [x29, 16]
	ldr	x21, [x29, 32]
	ldr	x25, [x29, 24]
	b	L992
L991:
	mov	x1, x25
	mov	x25, x28
L992:
	cmp	x23, #0
	beq	L997
	mov	x26, x2
	mov	x2, #8
	sub	x2, x23, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x23, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L996
	mov	x23, x27
	mov	x2, x26
	b	L998
L996:
	mov	x25, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	ldr	x23, [x29, 16]
	ldr	x25, [x29, 24]
	b	L998
L997:
	mov	x23, x27
L998:
	mov	x3, #1
	add	x22, x22, x3
L999:
	mov	x3, #4
	add	x24, x24, x3
	mov	x28, x25
	b	L897
L1001:
	mov	x1, x25
	cmp	x1, #0
	beq	L1005
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1005
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1005:
	cmp	x23, #0
	beq	L1008
	mov	x1, #8
	sub	x1, x23, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x23, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1008
	mov	x1, x23
	bl	_nox_str_free_now
L1008:
	mov	x0, #0
	b	L1108
L1009:
	mov	x1, x25
	cmp	x1, #0
	beq	L1013
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1013
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1013:
	cmp	x23, #0
	beq	L1016
	mov	x1, #8
	sub	x1, x23, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x23, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1016
	mov	x1, x23
	bl	_nox_str_free_now
L1016:
	mov	x0, #0
	b	L1108
L1017:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L1021
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1021
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1021:
	cmp	x19, #0
	beq	L1024
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1024
	mov	x1, x19
	bl	_nox_str_free_now
L1024:
	mov	x0, #0
	b	L1108
L1025:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L1029
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1029
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1029:
	cmp	x19, #0
	beq	L1032
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1032
	mov	x1, x19
	bl	_nox_str_free_now
L1032:
	mov	x0, #0
	b	L1108
L1033:
	mov	x19, x23
	cmp	x1, #0
	beq	L1037
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1037
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1037:
	cmp	x19, #0
	beq	L1040
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1040
	mov	x1, x19
	bl	_nox_str_free_now
L1040:
	mov	x0, #0
	b	L1108
L1041:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L1045
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1045
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1045:
	cmp	x19, #0
	beq	L1048
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1048
	mov	x1, x19
	bl	_nox_str_free_now
L1048:
	mov	x0, #0
	b	L1108
L1049:
	mov	x19, x23
	cmp	x1, #0
	beq	L1053
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1053
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1053:
	cmp	x19, #0
	beq	L1056
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1056
	mov	x1, x19
	bl	_nox_str_free_now
L1056:
	mov	x0, #0
	b	L1108
L1057:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L1061
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1061
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1061:
	cmp	x19, #0
	beq	L1064
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1064
	mov	x1, x19
	bl	_nox_str_free_now
L1064:
	mov	x0, #0
	b	L1108
L1065:
	mov	x19, x23
	cmp	x1, #0
	beq	L1069
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1069
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1069:
	cmp	x19, #0
	beq	L1072
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1072
	mov	x1, x19
	bl	_nox_str_free_now
L1072:
	mov	x0, #0
	b	L1108
L1073:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L1077
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1077
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1077:
	cmp	x19, #0
	beq	L1080
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1080
	mov	x1, x19
	bl	_nox_str_free_now
L1080:
	mov	x0, #0
	b	L1108
L1081:
	mov	x19, x23
	cmp	x1, #0
	beq	L1085
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1085
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1085:
	cmp	x19, #0
	beq	L1088
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1088
	mov	x1, x19
	bl	_nox_str_free_now
L1088:
	mov	x0, #0
	b	L1108
L1089:
	mov	x19, x23
	cmp	x1, #0
	beq	L1094
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1093
	mov	x0, x19
	b	L1108
L1093:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1108
L1094:
	mov	x0, x19
	b	L1108
L1095:
	mov	x1, x21
	cmp	x1, #0
	beq	L1099
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1099
	bl	_nox_str_free_now
L1099:
	mov	x0, #0
	b	L1108
L1100:
	cmp	x1, #0
	beq	L1103
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1103
	bl	_nox_str_free_now
L1103:
	mov	x0, #0
	b	L1108
L1104:
	cmp	x1, #0
	beq	L1107
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1107
	bl	_nox_str_free_now
L1107:
	mov	x0, #0
L1108:
	ldr	x19, [x29, 232]
	ldr	x20, [x29, 224]
	ldr	x21, [x29, 216]
	ldr	x22, [x29, 208]
	ldr	x23, [x29, 200]
	ldr	x24, [x29, 192]
	ldr	x25, [x29, 184]
	ldr	x26, [x29, 176]
	ldr	x27, [x29, 168]
	ldr	x28, [x29, 160]
	ldp	x29, x30, [sp], 240
	ret
/* end function web_base64__decode_to_ascii_impl */

.text
.balign 4
.globl _web_base64_decode
_web_base64_decode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	w3, #1
	adrp	x2, _str38@page+8
	add	x2, x2, _str38@pageoff+8
	mov	x19, x0
	bl	_web_base64__decode_to_ascii_impl
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str38@page+8
	add	x2, x2, _str38@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L1115
	adrp	x1, _str38@page+8
	add	x1, x1, _str38@pageoff+8
	cmp	x1, #0
	beq	L1114
	adrp	x1, _str38@page
	add	x1, x1, _str38@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str38@page
	add	x2, x2, _str38@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L1113
	mov	x0, x19
	b	L1116
L1113:
	adrp	x1, _str38@page+8
	add	x1, x1, _str38@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1116
L1114:
	mov	x0, x19
	b	L1116
L1115:
	mov	x0, #0
L1116:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_base64_decode */

.text
.balign 4
.globl _web_base64_decode_url
_web_base64_decode_url:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	w3, #0
	adrp	x2, _str39@page+8
	add	x2, x2, _str39@pageoff+8
	mov	x19, x0
	bl	_web_base64__decode_to_ascii_impl
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str39@page+8
	add	x2, x2, _str39@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L1123
	adrp	x1, _str39@page+8
	add	x1, x1, _str39@pageoff+8
	cmp	x1, #0
	beq	L1122
	adrp	x1, _str39@page
	add	x1, x1, _str39@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str39@page
	add	x2, x2, _str39@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L1121
	mov	x0, x19
	b	L1124
L1121:
	adrp	x1, _str39@page+8
	add	x1, x1, _str39@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1124
L1122:
	mov	x0, x19
	b	L1124
L1123:
	mov	x0, #0
L1124:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_base64_decode_url */

.text
.balign 4
.globl _main
_main:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	w19, w0
	bl	_nox_runtime_init
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_nox_os_init
	mov	x0, x19
	adrp	x1, _str41@page+8
	add	x1, x1, _str41@pageoff+8
	mov	x19, x0
	bl	_web_base64_encode
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1157
	mov	x2, x1
	mov	x20, x1
	adrp	x1, _str40@page+8
	add	x1, x1, _str40@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1130
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1129
	mov	x1, x20
	b	L1131
L1129:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1131
L1130:
	mov	x1, x20
L1131:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, x1
	mov	x1, #0
	add	x1, sp, x1
	str	x20, [x1]
	mov	x19, x0
	adrp	x0, _fmt_str@page
	add	x0, x0, _fmt_str@pageoff
	bl	_printf
	mov	x1, x20
	mov	x0, x19
	mov	x2, #16
	add	sp, sp, x2
	cmp	x1, #0
	beq	L1134
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1134
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1134:
	adrp	x1, _str43@page+8
	add	x1, x1, _str43@pageoff+8
	mov	x19, x0
	bl	_web_base64_decode
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1144
	mov	x2, x1
	mov	x20, x1
	adrp	x1, _str42@page+8
	add	x1, x1, _str42@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1139
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1138
	mov	x1, x20
	b	L1140
L1138:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1140
L1139:
	mov	x1, x20
L1140:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, x1
	mov	x1, #0
	add	x1, sp, x1
	str	x20, [x1]
	mov	x19, x0
	adrp	x0, _fmt_str@page
	add	x0, x0, _fmt_str@pageoff
	bl	_printf
	mov	x1, x20
	mov	x0, x19
	mov	x2, #16
	add	sp, sp, x2
	cmp	x1, #0
	beq	L1143
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1143
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1143:
	mov	x1, #0
	b	L1154
L1144:
	mov	x19, x0
	bl	_nox_exception_take
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #5
	beq	L1148
	mov	x20, x1
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L1147
	mov	x1, #0
	b	L1154
L1147:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1158
L1148:
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x2, [x1]
	adrp	x1, _str44@page+8
	add	x1, x1, _str44@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, x1
	mov	x1, #0
	add	x1, sp, x1
	str	x21, [x1]
	mov	x19, x0
	adrp	x0, _fmt_str@page
	add	x0, x0, _fmt_str@pageoff
	bl	_printf
	mov	x1, x21
	mov	x0, x19
	mov	x2, #16
	add	sp, sp, x2
	cmp	x1, #0
	beq	L1153
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1152
	mov	x1, x20
	b	L1154
L1152:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1154
L1153:
	mov	x1, x20
L1154:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, #0
	add	x2, sp, x2
	mov	x20, x1
	adrp	x1, _str45@page+8
	add	x1, x1, _str45@pageoff+8
	str	x1, [x2]
	mov	x19, x0
	adrp	x0, _fmt_str@page
	add	x0, x0, _fmt_str@pageoff
	bl	_printf
	mov	x1, x20
	mov	x0, x19
	mov	x2, #16
	add	sp, sp, x2
	cmp	x1, #0
	beq	L1156
	mov	x19, x0
	bl	_web_base64_Base64Error_release
	mov	x0, x19
L1156:
	bl	_nox_runtime_deinit
	mov	w0, #0
	b	L1158
L1157:
	bl	_nox_unhandled_exception
	mov	w0, #0
L1158:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function main */

.text
.balign 4
.globl _List_str_release
_List_str_release:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1168
	ldr	x21, [x1]
	mov	x2, #8
	add	x2, x1, x2
	ldr	x22, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x2, #0
	str	x2, [x20]
	mov	x19, #0
L1162:
	cmp	x19, x21
	bge	L1167
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1165
	mov	x23, x0
	bl	_nox_str_release
	mov	x1, x24
	mov	x0, x23
	b	L1166
L1165:
	mov	x1, x24
L1166:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L1162
L1167:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L1168:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function List_str_release */

.text
.balign 4
.globl _List_JsonValue_release
_List_JsonValue_release:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1178
	ldr	x21, [x1]
	mov	x2, #8
	add	x2, x1, x2
	ldr	x22, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x2, #0
	str	x2, [x20]
	mov	x19, #0
L1172:
	cmp	x19, x21
	bge	L1177
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1175
	mov	x23, x0
	bl	_JsonValue_release
	mov	x1, x24
	mov	x0, x23
	b	L1176
L1175:
	mov	x1, x24
L1176:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L1172
L1177:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L1178:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function List_JsonValue_release */

.text
.balign 4
.globl _List_str_eq
_List_str_eq:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x2
	ldr	x20, [x1]
	ldr	x0, [x22]
	cmp	x20, x0
	bne	L1186
	mov	x19, #0
L1181:
	cmp	x19, x20
	bge	L1185
	mov	x0, #8
	mul	x0, x19, x0
	mov	x21, x1
	mov	x1, #16
	add	x1, x0, x1
	add	x0, x21, x1
	add	x1, x22, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	mov	x2, x22
	mov	x1, x21
	cmp	w0, #0
	bne	L1186
	mov	x0, #1
	add	x19, x19, x0
	mov	x22, x2
	b	L1181
L1185:
	mov	w0, #1
	b	L1187
L1186:
	mov	w0, #0
L1187:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function List_str_eq */

.text
.balign 4
.globl _List_JsonValue_eq
_List_JsonValue_eq:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	ldr	x20, [x1]
	ldr	x3, [x2]
	cmp	x20, x3
	bne	L1197
	mov	x19, #0
L1190:
	cmp	x19, x20
	bge	L1196
	mov	x23, x2
	mov	x2, #8
	mul	x2, x19, x2
	mov	x3, #16
	add	x2, x2, x3
	mov	x22, x1
	add	x1, x1, x2
	add	x2, x23, x2
	ldr	x1, [x1]
	ldr	x2, [x2]
	cmp	x1, #0
	cset	w3, eq
	cmp	x2, #0
	cset	w4, eq
	orr	w5, w3, w4
	cmp	w5, #0
	bne	L1193
	mov	x21, x0
	bl	_JsonValue_eq
	mov	x2, x23
	mov	x1, x22
	mov	w3, w0
	mov	x0, x21
	cmp	w3, #0
	beq	L1197
	b	L1195
L1193:
	mov	x2, x23
	mov	x1, x22
	and	w3, w3, w4
	cmp	w3, #0
	beq	L1197
L1195:
	mov	x3, #1
	add	x19, x19, x3
	b	L1190
L1196:
	mov	w0, #1
	b	L1198
L1197:
	mov	w0, #0
L1198:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function List_JsonValue_eq */

.data
.balign 8
_str0:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.byte 0
/* end data */

.data
.balign 8
_str1:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str2:
	.quad 1073741824
	.ascii " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
	.byte 0
/* end data */

.data
.balign 8
_str3:
	.quad 1073741824
	.ascii "gecersiz base64 indeksi"
	.byte 0
/* end data */

.data
.balign 8
_str4:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str5:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str6:
	.quad 1073741824
	.ascii "gecersiz base64 karakteri"
	.byte 0
/* end data */

.data
.balign 8
_str7:
	.quad 1073741824
	.ascii "decode yalnizca ASCII (0..127) destekler"
	.byte 0
/* end data */

.data
.balign 8
_str8:
	.quad 1073741824
	.ascii "\t"
	.byte 0
/* end data */

.data
.balign 8
_str9:
	.quad 1073741824
	.ascii "\n"
	.byte 0
/* end data */

.data
.balign 8
_str10:
	.quad 1073741824
	.ascii "decode kontrol karakteri desteklenmiyor: "
	.byte 0
/* end data */

.data
.balign 8
_str11:
	.quad 1073741824
	.ascii "decode DEL desteklenmiyor"
	.byte 0
/* end data */

.data
.balign 8
_str12:
	.quad 1073741824
	.ascii " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
	.byte 0
/* end data */

.data
.balign 8
_str13:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str14:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str15:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str16:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str17:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str18:
	.quad 1073741824
	.ascii "=="
	.byte 0
/* end data */

.data
.balign 8
_str19:
	.quad 1073741824
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str20:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.byte 0
/* end data */

.data
.balign 8
_str21:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str22:
	.quad 1073741824
	.ascii "gecersiz hex karakteri"
	.byte 0
/* end data */

.data
.balign 8
_str23:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str24:
	.quad 1073741824
	.ascii "hex uzunlugu cift olmali"
	.byte 0
/* end data */

.data
.balign 8
_str25:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str26:
	.quad 1073741824
	.ascii "gecersiz hex kalani"
	.byte 0
/* end data */

.data
.balign 8
_str27:
	.quad 1073741824
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str28:
	.quad 1073741824
	.ascii "gecersiz base64 uzunlugu"
	.byte 0
/* end data */

.data
.balign 8
_str29:
	.quad 1073741824
	.ascii "AA"
	.byte 0
/* end data */

.data
.balign 8
_str30:
	.quad 1073741824
	.ascii "A"
	.byte 0
/* end data */

.data
.balign 8
_str31:
	.quad 1073741824
	.ascii "gecersiz base64 uzunlugu"
	.byte 0
/* end data */

.data
.balign 8
_str32:
	.quad 1073741824
	.ascii "gecersiz base64 padding"
	.byte 0
/* end data */

.data
.balign 8
_str33:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str34:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str35:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str36:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str37:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str38:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.byte 0
/* end data */

.data
.balign 8
_str39:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str40:
	.quad 1073741824
	.ascii "enc="
	.byte 0
/* end data */

.data
.balign 8
_str41:
	.quad 1073741824
	.ascii "hello"
	.byte 0
/* end data */

.data
.balign 8
_str42:
	.quad 1073741824
	.ascii "dec="
	.byte 0
/* end data */

.data
.balign 8
_str43:
	.quad 1073741824
	.ascii "aGVsbG8="
	.byte 0
/* end data */

.data
.balign 8
_str44:
	.quad 1073741824
	.ascii "err="
	.byte 0
/* end data */

.data
.balign 8
_str45:
	.quad 1073741824
	.ascii "done"
	.byte 0
/* end data */

/* floating point constants */
.section __TEXT,__literal8,8byte_literals
.p2align 3
Lfp0:
	.quad 0 /* 0.000000 */

.section __TEXT,__literal8,8byte_literals
.p2align 3
Lfp1:
	.quad 4602678819172646912 /* 0.500000 */

