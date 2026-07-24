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
.globl _nox_fs_FsError___init__
_nox_fs_FsError___init__:
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
/* end function nox_fs_FsError___init__ */

.text
.balign 4
.globl _nox_fs_FsError_release
_nox_fs_FsError_release:
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
/* end function nox_fs_FsError_release */

.text
.balign 4
.globl _nox_fs_FsError_eq
_nox_fs_FsError_eq:
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
/* end function nox_fs_FsError_eq */

.text
.balign 4
.globl _nox_fs_FsError_trace
_nox_fs_FsError_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_fs_FsError_trace */

.text
.balign 4
.globl _nox_fs_FsError_gc_free
_nox_fs_FsError_gc_free:
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
/* end function nox_fs_FsError_gc_free */

.text
.balign 4
.globl _nox_fs_FileMetadata___init__
_nox_fs_FileMetadata___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	str	x2, [x0]
	mov	x0, #16
	add	x0, x1, x0
	str	x3, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_fs_FileMetadata___init__ */

.text
.balign 4
.globl _nox_fs_FileMetadata_release
_nox_fs_FileMetadata_release:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L189
	mov	x2, #24
	bl	_nox_rc_free_payload
L189:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_fs_FileMetadata_release */

.text
.balign 4
.globl _nox_fs_FileMetadata_eq
_nox_fs_FileMetadata_eq:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	mov	x3, #8
	add	x3, x2, x3
	ldr	x0, [x0]
	ldr	x3, [x3]
	cmp	x0, x3
	bne	L192
	mov	x0, #16
	add	x0, x1, x0
	mov	x1, #16
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	cmp	x0, x1
	beq	L193
L192:
	mov	w0, #0
	b	L194
L193:
	mov	w0, #1
L194:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_fs_FileMetadata_eq */

.text
.balign 4
.globl _nox_fs_FileMetadata_trace
_nox_fs_FileMetadata_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_fs_FileMetadata_trace */

.text
.balign 4
.globl _nox_fs_FileMetadata_gc_free
_nox_fs_FileMetadata_gc_free:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #24
	bl	_nox_rc_free_payload
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_fs_FileMetadata_gc_free */

.text
.balign 4
.globl _nox_test_AssertionError___init__
_nox_test_AssertionError___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x2, #0
	beq	L201
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L201:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L204
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L204
	bl	_nox_str_free_now
L204:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_test_AssertionError___init__ */

.text
.balign 4
.globl _nox_test_AssertionError_release
_nox_test_AssertionError_release:
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
	bgt	L212
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L210
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L209
	mov	x1, x20
	b	L211
L209:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L211
L210:
	mov	x1, x20
L211:
	mov	x2, #16
	bl	_nox_rc_free_payload
L212:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_test_AssertionError_release */

.text
.balign 4
.globl _nox_test_AssertionError_eq
_nox_test_AssertionError_eq:
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
	bne	L215
	mov	w0, #1
	b	L216
L215:
	mov	w0, #0
L216:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_test_AssertionError_eq */

.text
.balign 4
.globl _nox_test_AssertionError_trace
_nox_test_AssertionError_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_test_AssertionError_trace */

.text
.balign 4
.globl _nox_test_AssertionError_gc_free
_nox_test_AssertionError_gc_free:
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
	beq	L223
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L222
	mov	x1, x20
	b	L224
L222:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L224
L223:
	mov	x1, x20
L224:
	mov	x2, #16
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_test_AssertionError_gc_free */

.text
.balign 4
.globl _nox_test_TestSuite___init__
_nox_test_TestSuite___init__:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	cmp	x2, #0
	beq	L228
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L228:
	mov	x3, #8
	add	x3, x1, x3
	mov	x20, x1
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L232
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L231
	mov	x1, x20
	b	L233
L231:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L233
L232:
	mov	x1, x20
L233:
	mov	x2, #16
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #24
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #32
	add	x3, x1, x2
	ldr	x1, [x3]
	adrp	x2, _str0@page+8
	add	x2, x2, _str0@pageoff+8
	str	x2, [x3]
	cmp	x1, #0
	beq	L236
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L236
	bl	_nox_str_free_now
L236:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_test_TestSuite___init__ */

.text
.balign 4
.globl _nox_test_TestSuite__record
_nox_test_TestSuite__record:
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
	mov	x23, x4
	mov	x21, x1
	mov	x1, x2
	mov	w20, w3
	adrp	x3, _str2@page+8
	add	x3, x3, _str2@pageoff+8
	adrp	x2, _str1@page+8
	add	x2, x2, _str1@pageoff+8
	mov	x19, x0
	bl	_nox_strings_replace
	mov	w3, w20
	mov	x1, x0
	mov	x0, x19
	mov	w22, w3
	adrp	x3, _str4@page+8
	add	x3, x3, _str4@pageoff+8
	adrp	x2, _str3@page+8
	add	x2, x2, _str3@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_strings_replace
	mov	w3, w22
	mov	x1, x20
	mov	x24, x0
	mov	x0, x19
	mov	w22, w3
	adrp	x3, _str6@page+8
	add	x3, x3, _str6@pageoff+8
	adrp	x2, _str5@page+8
	add	x2, x2, _str5@pageoff+8
	mov	x20, x1
	mov	x1, x24
	mov	x19, x0
	bl	_nox_strings_replace
	mov	w3, w22
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	w25, w3
	adrp	x3, _str8@page+8
	add	x3, x3, _str8@pageoff+8
	adrp	x2, _str7@page+8
	add	x2, x2, _str7@pageoff+8
	mov	x22, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_strings_replace
	mov	w3, w25
	mov	x1, x22
	mov	x22, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L241
	mov	x2, #8
	mov	w25, w3
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L240
	mov	x1, x24
	mov	w3, w25
	b	L242
L240:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	w3, w25
	mov	x1, x24
	mov	x0, x19
	b	L242
L241:
	mov	x1, x24
L242:
	cmp	x1, #0
	beq	L246
	mov	x2, #8
	mov	w24, w3
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L245
	mov	x1, x20
	mov	w3, w24
	b	L247
L245:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	w3, w24
	mov	x1, x20
	mov	x0, x19
	b	L247
L246:
	mov	x1, x20
L247:
	cmp	x1, #0
	beq	L251
	mov	x2, #8
	mov	w20, w3
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L250
	mov	w3, w20
	b	L251
L250:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	w3, w20
	mov	x0, x19
L251:
	cmp	w3, #0
	bne	L296
	mov	x1, #24
	add	x2, x21, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
	mov	x1, #32
	add	x1, x21, x1
	ldr	x1, [x1]
	adrp	x2, _str11@page+8
	add	x2, x2, _str11@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x2, x22
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L256
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L255
	mov	x1, x20
	b	L257
L255:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L257
L256:
	mov	x1, x20
L257:
	adrp	x2, _str12@page+8
	add	x2, x2, _str12@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L261
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L260
	mov	x1, x23
	b	L262
L260:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L262
L261:
	mov	x1, x23
L262:
	adrp	x3, _str14@page+8
	add	x3, x3, _str14@pageoff+8
	adrp	x2, _str13@page+8
	add	x2, x2, _str13@pageoff+8
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x0
	mov	x0, x19
	adrp	x3, _str16@page+8
	add	x3, x3, _str16@pageoff+8
	adrp	x2, _str15@page+8
	add	x2, x2, _str15@pageoff+8
	mov	x23, x1
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x23
	mov	x25, x0
	mov	x0, x19
	adrp	x3, _str18@page+8
	add	x3, x3, _str18@pageoff+8
	adrp	x2, _str17@page+8
	add	x2, x2, _str17@pageoff+8
	mov	x23, x1
	mov	x1, x25
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x23
	mov	x24, x0
	mov	x0, x19
	adrp	x3, _str20@page+8
	add	x3, x3, _str20@pageoff+8
	adrp	x2, _str19@page+8
	add	x2, x2, _str19@pageoff+8
	mov	x23, x1
	mov	x1, x24
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x23
	mov	x23, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L266
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L265
	mov	x1, x25
	b	L267
L265:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x19
	b	L267
L266:
	mov	x1, x25
L267:
	cmp	x1, #0
	beq	L271
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L270
	mov	x1, x24
	b	L272
L270:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L272
L271:
	mov	x1, x24
L272:
	cmp	x1, #0
	beq	L276
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L275
	mov	x1, x20
	b	L277
L275:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L277
L276:
	mov	x1, x20
L277:
	mov	x2, x23
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L281
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L280
	mov	x1, x23
	b	L282
L280:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L282
L281:
	mov	x1, x23
L282:
	cmp	x1, #0
	beq	L286
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L285
	mov	x1, x20
	b	L287
L285:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L287
L286:
	mov	x1, x20
L287:
	adrp	x2, _str21@page+8
	add	x2, x2, _str21@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L291
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L290
	mov	x1, x22
	b	L292
L290:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L292
L291:
	mov	x1, x22
L292:
	mov	x22, x1
	mov	x1, #32
	add	x1, x21, x1
	ldr	x1, [x1]
	mov	x2, #32
	add	x2, x21, x2
	str	x19, [x2]
	cmp	x1, #0
	beq	L295
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L295
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L295:
	mov	x1, x22
	b	L311
L296:
	mov	x1, #16
	add	x2, x21, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
	mov	x1, #32
	add	x1, x21, x1
	ldr	x1, [x1]
	adrp	x2, _str9@page+8
	add	x2, x2, _str9@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x2, x22
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L300
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L299
	mov	x1, x20
	b	L301
L299:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L301
L300:
	mov	x1, x20
L301:
	adrp	x2, _str10@page+8
	add	x2, x2, _str10@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L305
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L304
	mov	x1, x22
	b	L306
L304:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L306
L305:
	mov	x1, x22
L306:
	mov	x20, x1
	mov	x1, #32
	add	x1, x21, x1
	ldr	x1, [x1]
	mov	x2, #32
	add	x2, x21, x2
	str	x19, [x2]
	cmp	x1, #0
	beq	L310
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L309
	mov	x1, x20
	b	L311
L309:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L311
L310:
	mov	x1, x20
L311:
	cmp	x1, #0
	beq	L314
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L314
	bl	_nox_str_free_now
L314:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function nox_test_TestSuite__record */

.text
.balign 4
.globl _nox_test_TestSuite_check_eq_int
_nox_test_TestSuite_check_eq_int:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x23, x3
	mov	x21, x1
	mov	x1, x4
	cmp	x23, x1
	beq	L344
	mov	x22, x2
	adrp	x2, _str23@page+8
	add	x2, x2, _str23@pageoff+8
	mov	x20, x1
	mov	x1, x22
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x2, x22
	mov	x1, x20
	mov	x22, x0
	mov	x0, x19
	mov	x24, x2
	mov	x2, x22
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x24
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L320
	mov	x3, #8
	sub	x3, x1, x3
	mov	x24, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L319
	mov	x1, x22
	mov	x2, x24
	b	L321
L319:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x24
	mov	x1, x22
	mov	x0, x19
	b	L321
L320:
	mov	x1, x22
L321:
	cmp	x1, #0
	beq	L325
	mov	x3, #8
	sub	x3, x1, x3
	mov	x22, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L324
	mov	x1, x20
	mov	x2, x22
	b	L326
L324:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x22
	mov	x1, x20
	mov	x0, x19
	b	L326
L325:
	mov	x1, x20
L326:
	mov	x22, x2
	adrp	x2, _str24@page+8
	add	x2, x2, _str24@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x22
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L330
	mov	x3, #8
	sub	x3, x1, x3
	mov	x22, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L329
	mov	x1, x23
	b	L331
L329:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L331
L330:
	mov	x1, x23
	mov	x22, x2
L331:
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x2, x22
	mov	x1, x20
	mov	x22, x0
	mov	x0, x19
	mov	x23, x2
	mov	x2, x22
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x23
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L335
	mov	x3, #8
	sub	x3, x1, x3
	mov	x23, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L334
	mov	x1, x22
	mov	x2, x23
	b	L336
L334:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x23
	mov	x1, x22
	mov	x0, x19
	b	L336
L335:
	mov	x1, x22
L336:
	cmp	x1, #0
	beq	L340
	mov	x3, #8
	sub	x3, x1, x3
	mov	x22, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L339
	mov	x2, x22
	mov	x1, x21
	b	L341
L339:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x22
	mov	x1, x21
	mov	x0, x19
	b	L341
L340:
	mov	x1, x21
L341:
	mov	x4, x20
	mov	w3, #0
	mov	x19, x0
	bl	_nox_test_TestSuite__record
	mov	x1, x20
	mov	x0, x19
	cmp	x1, #0
	beq	L346
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L346
	bl	_nox_str_free_now
	b	L346
L344:
	mov	x1, x21
	adrp	x4, _str22@page+8
	add	x4, x4, _str22@pageoff+8
	mov	w3, #1
	bl	_nox_test_TestSuite__record
L346:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
/* end function nox_test_TestSuite_check_eq_int */

.text
.balign 4
.globl _nox_test_TestSuite_check_eq_str
_nox_test_TestSuite_check_eq_str:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x20, x4
	mov	x23, x3
	mov	x22, x2
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	mov	x0, x23
	bl	_strcmp
	mov	x2, x20
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	beq	L371
	mov	x20, x2
	adrp	x2, _str26@page+8
	add	x2, x2, _str26@pageoff+8
	mov	x1, x22
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x23
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L352
	mov	x3, #8
	sub	x3, x1, x3
	mov	x23, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L351
	mov	x1, x20
	mov	x2, x23
	b	L353
L351:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x23
	mov	x1, x20
	mov	x0, x19
	b	L353
L352:
	mov	x1, x20
L353:
	mov	x23, x2
	adrp	x2, _str27@page+8
	add	x2, x2, _str27@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x23
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L357
	mov	x3, #8
	sub	x3, x1, x3
	mov	x23, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L356
	mov	x1, x20
	mov	x2, x23
	b	L358
L356:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x23
	mov	x1, x20
	mov	x0, x19
	b	L358
L357:
	mov	x1, x20
L358:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x22
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L362
	mov	x3, #8
	sub	x3, x1, x3
	mov	x22, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L361
	mov	x1, x20
	mov	x2, x22
	b	L363
L361:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x22
	mov	x1, x20
	mov	x0, x19
	b	L363
L362:
	mov	x1, x20
L363:
	mov	x22, x2
	adrp	x2, _str28@page+8
	add	x2, x2, _str28@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x22
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L367
	mov	x3, #8
	sub	x3, x1, x3
	mov	x22, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L366
	mov	x2, x22
	mov	x1, x21
	b	L368
L366:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x22
	mov	x1, x21
	mov	x0, x19
	b	L368
L367:
	mov	x1, x21
L368:
	mov	x4, x20
	mov	w3, #0
	mov	x19, x0
	bl	_nox_test_TestSuite__record
	mov	x1, x20
	mov	x0, x19
	cmp	x1, #0
	beq	L373
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L373
	bl	_nox_str_free_now
	b	L373
L371:
	mov	x2, x22
	mov	x1, x21
	adrp	x4, _str25@page+8
	add	x4, x4, _str25@pageoff+8
	mov	w3, #1
	bl	_nox_test_TestSuite__record
L373:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function nox_test_TestSuite_check_eq_str */

.text
.balign 4
.globl _nox_test_TestSuite_check_eq_float
_nox_test_TestSuite_check_eq_float:
	hint	#34
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [x29, 72]
	str	x20, [x29, 64]
	str	x21, [x29, 56]
	str	x22, [x29, 48]
	str	x23, [x29, 40]
	str	d8, [x29, 32]
	str	d9, [x29, 24]
	fmov	d9, d1
	fmov	d8, d0
	mov	x21, x1
	fcmpe	d8, d9
	beq	L403
	mov	x22, x2
	adrp	x2, _str30@page+8
	add	x2, x2, _str30@pageoff+8
	mov	x1, x22
	mov	x19, x0
	bl	_nox_str_concat
	fmov	d0, d9
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_float_to_str
	mov	x2, x22
	mov	x1, x20
	mov	x22, x0
	mov	x0, x19
	mov	x23, x2
	mov	x2, x22
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x23
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L379
	mov	x3, #8
	sub	x3, x1, x3
	mov	x23, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L378
	mov	x1, x22
	mov	x2, x23
	b	L380
L378:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x23
	mov	x1, x22
	mov	x0, x19
	b	L380
L379:
	mov	x1, x22
L380:
	cmp	x1, #0
	beq	L384
	mov	x3, #8
	sub	x3, x1, x3
	mov	x22, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L383
	mov	x1, x20
	mov	x2, x22
	b	L385
L383:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x22
	mov	x1, x20
	mov	x0, x19
	b	L385
L384:
	mov	x1, x20
L385:
	mov	x22, x2
	adrp	x2, _str31@page+8
	add	x2, x2, _str31@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x22
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L389
	mov	x3, #8
	sub	x3, x1, x3
	mov	x22, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L388
	fmov	d0, d8
	b	L390
L388:
	mov	x19, x0
	bl	_nox_str_free_now
	fmov	d0, d8
	mov	x0, x19
	b	L390
L389:
	fmov	d0, d8
	mov	x22, x2
L390:
	mov	x19, x0
	bl	_nox_float_to_str
	mov	x2, x22
	mov	x1, x20
	mov	x22, x0
	mov	x0, x19
	mov	x23, x2
	mov	x2, x22
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x23
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L394
	mov	x3, #8
	sub	x3, x1, x3
	mov	x23, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L393
	mov	x1, x22
	mov	x2, x23
	b	L395
L393:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x23
	mov	x1, x22
	mov	x0, x19
	b	L395
L394:
	mov	x1, x22
L395:
	cmp	x1, #0
	beq	L399
	mov	x3, #8
	sub	x3, x1, x3
	mov	x22, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L398
	mov	x2, x22
	mov	x1, x21
	b	L400
L398:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x22
	mov	x1, x21
	mov	x0, x19
	b	L400
L399:
	mov	x1, x21
L400:
	mov	x4, x20
	mov	w3, #0
	mov	x19, x0
	bl	_nox_test_TestSuite__record
	mov	x1, x20
	mov	x0, x19
	cmp	x1, #0
	beq	L405
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L405
	bl	_nox_str_free_now
	b	L405
L403:
	mov	x1, x21
	adrp	x4, _str29@page+8
	add	x4, x4, _str29@pageoff+8
	mov	w3, #1
	bl	_nox_test_TestSuite__record
L405:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	d8, [x29, 32]
	ldr	d9, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function nox_test_TestSuite_check_eq_float */

.text
.balign 4
.globl _nox_test_TestSuite_check_true
_nox_test_TestSuite_check_true:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	cmp	w3, #0
	bne	L410
	mov	x21, x2
	adrp	x2, _str33@page+8
	add	x2, x2, _str33@pageoff+8
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x4, x20
	mov	w3, #0
	mov	x19, x0
	bl	_nox_test_TestSuite__record
	mov	x1, x20
	mov	x0, x19
	cmp	x1, #0
	beq	L411
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L411
	bl	_nox_str_free_now
	b	L411
L410:
	adrp	x4, _str32@page+8
	add	x4, x4, _str32@pageoff+8
	mov	w3, #1
	bl	_nox_test_TestSuite__record
L411:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_test_TestSuite_check_true */

.text
.balign 4
.globl _nox_test_TestSuite_total_count
_nox_test_TestSuite_total_count:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #24
	add	x1, x1, x2
	ldr	x1, [x1]
	add	x0, x0, x1
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_test_TestSuite_total_count */

.text
.balign 4
.globl _nox_test_TestSuite_all_passed
_nox_test_TestSuite_all_passed:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #24
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, #0
	cset	w0, eq
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_test_TestSuite_all_passed */

.text
.balign 4
.globl _nox_test_TestSuite_release
_nox_test_TestSuite_release:
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
	bgt	L428
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L421
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L420
	mov	x1, x20
	b	L422
L420:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L422
L421:
	mov	x1, x20
L422:
	mov	x20, x1
	mov	x1, #32
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L426
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L425
	mov	x1, x20
	b	L427
L425:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L427
L426:
	mov	x1, x20
L427:
	mov	x2, #40
	bl	_nox_rc_free_payload
L428:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_test_TestSuite_release */

.text
.balign 4
.globl _nox_test_TestSuite_eq
_nox_test_TestSuite_eq:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x2
	mov	x0, #8
	add	x0, x1, x0
	mov	x19, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	mov	x2, x20
	mov	x1, x19
	cmp	w0, #0
	bne	L434
	mov	x0, #16
	add	x0, x1, x0
	mov	x3, #16
	add	x3, x2, x3
	ldr	x0, [x0]
	ldr	x3, [x3]
	cmp	x0, x3
	bne	L434
	mov	x0, #24
	add	x0, x1, x0
	mov	x3, #24
	add	x3, x2, x3
	ldr	x0, [x0]
	ldr	x3, [x3]
	cmp	x0, x3
	bne	L434
	mov	x0, #32
	add	x0, x1, x0
	mov	x1, #32
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	cmp	w0, #0
	bne	L434
	mov	w0, #1
	b	L435
L434:
	mov	w0, #0
L435:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_test_TestSuite_eq */

.text
.balign 4
.globl _nox_test_TestSuite_trace
_nox_test_TestSuite_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_test_TestSuite_trace */

.text
.balign 4
.globl _nox_test_TestSuite_gc_free
_nox_test_TestSuite_gc_free:
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
	beq	L442
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L441
	mov	x1, x20
	b	L443
L441:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L443
L442:
	mov	x1, x20
L443:
	mov	x20, x1
	mov	x1, #32
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L447
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L446
	mov	x1, x20
	b	L448
L446:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L448
L447:
	mov	x1, x20
L448:
	mov	x2, #40
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_test_TestSuite_gc_free */

.text
.balign 4
.globl _web_base64_Base64Error___init__
_web_base64_Base64Error___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x2, #0
	beq	L452
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L452:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L455
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L455
	bl	_nox_str_free_now
L455:
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
	bgt	L463
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L461
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L460
	mov	x1, x20
	b	L462
L460:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L462
L461:
	mov	x1, x20
L462:
	mov	x2, #16
	bl	_nox_rc_free_payload
L463:
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
	bne	L466
	mov	w0, #1
	b	L467
L466:
	mov	w0, #0
L467:
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
	beq	L474
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L473
	mov	x1, x20
	b	L475
L473:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L475
L474:
	mov	x1, x20
L475:
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
	beq	L495
	cmp	x2, #2
	beq	L494
	cmp	x2, #3
	beq	L493
	cmp	x2, #4
	beq	L492
	cmp	x2, #5
	beq	L491
	cmp	x2, #6
	beq	L490
	cmp	x2, #7
	beq	L489
	cmp	x2, #8
	beq	L488
	cmp	x2, #9
	beq	L487
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	b	L496
L487:
	bl	_web_base64_Base64Error_trace
	b	L496
L488:
	bl	_nox_test_TestSuite_trace
	b	L496
L489:
	bl	_nox_test_AssertionError_trace
	b	L496
L490:
	bl	_nox_fs_FileMetadata_trace
	b	L496
L491:
	bl	_nox_fs_FsError_trace
	b	L496
L492:
	bl	_JsonValue_trace
	b	L496
L493:
	bl	_KeyError_trace
	b	L496
L494:
	bl	_IndexError_trace
	b	L496
L495:
	bl	_ValueError_trace
L496:
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
	beq	L514
	cmp	x2, #2
	beq	L513
	cmp	x2, #3
	beq	L512
	cmp	x2, #4
	beq	L511
	cmp	x2, #5
	beq	L510
	cmp	x2, #6
	beq	L509
	cmp	x2, #7
	beq	L508
	cmp	x2, #8
	beq	L507
	cmp	x2, #9
	bne	L515
	bl	_web_base64_Base64Error_gc_free
	b	L515
L507:
	bl	_nox_test_TestSuite_gc_free
	b	L515
L508:
	bl	_nox_test_AssertionError_gc_free
	b	L515
L509:
	bl	_nox_fs_FileMetadata_gc_free
	b	L515
L510:
	bl	_nox_fs_FsError_gc_free
	b	L515
L511:
	bl	_JsonValue_gc_free
	b	L515
L512:
	bl	_KeyError_gc_free
	b	L515
L513:
	bl	_IndexError_gc_free
	b	L515
L514:
	bl	_ValueError_gc_free
L515:
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
	bge	L522
	adrp	x0, "Lfp1"@page
	add	x0, x0, "Lfp1"@pageoff
	ldr	d1, [x0]
	fsub	d0, d0, d1
	fcvtzs	x0, d0
	b	L523
L522:
	adrp	x0, "Lfp1"@page
	add	x0, x0, "Lfp1"@pageoff
	ldr	d1, [x0]
	fadd	d0, d0, d1
	fcvtzs	x0, d0
L523:
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
L526:
	cmp	x2, x3
	bge	L528
	mov	x4, #8
	mul	x4, x2, x4
	mov	x5, #16
	add	x4, x4, x5
	add	x4, x1, x4
	ldr	x4, [x4]
	add	x0, x4, x0
	mov	x4, #1
	add	x2, x2, x4
	b	L526
L528:
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
L531:
	cmp	x0, x2
	bge	L533
	mov	x3, #8
	mul	x3, x0, x3
	mov	x4, #16
	add	x3, x3, x4
	add	x3, x1, x3
	ldr	d1, [x3]
	fadd	d0, d1, d0
	mov	x3, #1
	add	x0, x0, x3
	b	L531
L533:
	ldp	x29, x30, [sp], 16
	ret
/* end function sum_float */

.text
.balign 4
.globl _nox_fs_read_to_string
_nox_fs_read_to_string:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x21, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_fs_read_to_string_raw
	mov	x20, x0
	bl	_nox_fs_last_op_ok
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L536
	mov	x1, x20
	b	L542
L536:
	adrp	x1, _str34@page+8
	add	x1, x1, _str34@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
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
	bl	_nox_fs_FsError___init__
	mov	x1, x22
	mov	x0, x19
	cmp	x1, #0
	beq	L540
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L539
	mov	x1, x21
	b	L541
L539:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L541
L540:
	mov	x1, x21
L541:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L543
L542:
	mov	x0, x1
	b	L547
L543:
	cmp	x1, #0
	beq	L546
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L546
	bl	_nox_str_free_now
L546:
	mov	x0, #0
L547:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_fs_read_to_string */

.text
.balign 4
.globl _nox_fs_write_string
_nox_fs_write_string:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_fs_write_string_raw
	bl	_nox_fs_last_op_ok
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	bne	L555
	adrp	x1, _str35@page+8
	add	x1, x1, _str35@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x20]
	mov	x2, #8
	add	x3, x20, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_fs_FsError___init__
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L553
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L552
	mov	x1, x20
	b	L554
L552:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L554
L553:
	mov	x1, x20
L554:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L555:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_fs_write_string */

.text
.balign 4
.globl _nox_fs_append_string
_nox_fs_append_string:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_fs_append_string_raw
	bl	_nox_fs_last_op_ok
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	bne	L563
	adrp	x1, _str36@page+8
	add	x1, x1, _str36@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x20]
	mov	x2, #8
	add	x3, x20, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_fs_FsError___init__
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L561
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L560
	mov	x1, x20
	b	L562
L560:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L562
L561:
	mov	x1, x20
L562:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L563:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_fs_append_string */

.text
.balign 4
.globl _nox_fs_exists
_nox_fs_exists:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	bl	_nox_fs_exists_raw
	cmp	x0, #0
	cset	w0, ne
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_fs_exists */

.text
.balign 4
.globl _nox_fs_is_file
_nox_fs_is_file:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	bl	_nox_fs_is_file_raw
	cmp	x0, #0
	cset	w0, ne
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_fs_is_file */

.text
.balign 4
.globl _nox_fs_is_dir
_nox_fs_is_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	bl	_nox_fs_is_dir_raw
	cmp	x0, #0
	cset	w0, ne
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_fs_is_dir */

.text
.balign 4
.globl _nox_fs_metadata
_nox_fs_metadata:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x20
	bl	_nox_fs_stat_raw
	bl	_nox_fs_last_op_ok
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L572
	mov	x19, x0
	b	L578
L572:
	adrp	x1, _str37@page+8
	add	x1, x1, _str37@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x20]
	mov	x2, #8
	add	x3, x20, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_fs_FsError___init__
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L576
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L575
	mov	x1, x20
	b	L577
L575:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L577
L576:
	mov	x1, x20
L577:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	cmp	w0, #0
	bne	L579
L578:
	bl	_nox_fs_stat_size_raw
	mov	x20, x0
	bl	_nox_fs_stat_mtime_ms_raw
	mov	x21, x0
	mov	x0, x19
	mov	x1, #24
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x3, x21
	mov	x2, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #6
	str	x1, [x19]
	mov	x1, #8
	add	x4, x19, x1
	mov	x1, #0
	str	x1, [x4]
	mov	x1, #16
	add	x4, x19, x1
	mov	x1, #0
	str	x1, [x4]
	mov	x1, x19
	bl	_nox_fs_FileMetadata___init__
	mov	x0, x19
	b	L580
L579:
	mov	x0, #0
L580:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_fs_metadata */

.text
.balign 4
.globl _nox_fs_read_dir
_nox_fs_read_dir:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x21, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_fs_read_dir_raw
	mov	x20, x0
	bl	_nox_fs_last_op_ok
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L583
	mov	x1, x20
	b	L589
L583:
	adrp	x1, _str38@page+8
	add	x1, x1, _str38@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
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
	bl	_nox_fs_FsError___init__
	mov	x1, x22
	mov	x0, x19
	cmp	x1, #0
	beq	L587
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L586
	mov	x1, x21
	b	L588
L586:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L588
L587:
	mov	x1, x21
L588:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L590
L589:
	mov	x0, x1
	b	L593
L590:
	cmp	x1, #0
	beq	L592
	bl	_List_str_release
L592:
	mov	x0, #0
L593:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_fs_read_dir */

.text
.balign 4
.globl _nox_fs_copy
_nox_fs_copy:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x2
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	mov	x0, x21
	bl	_nox_fs_copy_raw
	bl	_nox_fs_last_op_ok
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	bne	L611
	adrp	x1, _str39@page+8
	add	x1, x1, _str39@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x21, x2
	adrp	x2, _str40@page+8
	add	x2, x2, _str40@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L599
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L598
	mov	x1, x20
	mov	x2, x21
	b	L600
L598:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L600
L599:
	mov	x1, x20
L600:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L604
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L603
	mov	x1, x20
	b	L605
L603:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L605
L604:
	mov	x1, x20
L605:
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x20]
	mov	x2, #8
	add	x3, x20, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_fs_FsError___init__
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L609
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L608
	mov	x1, x20
	b	L610
L608:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L610
L609:
	mov	x1, x20
L610:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L611:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_fs_copy */

.text
.balign 4
.globl _nox_fs_rename
_nox_fs_rename:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x2
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	mov	x0, x21
	bl	_nox_fs_rename_raw
	bl	_nox_fs_last_op_ok
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	bne	L629
	adrp	x1, _str41@page+8
	add	x1, x1, _str41@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x21, x2
	adrp	x2, _str42@page+8
	add	x2, x2, _str42@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L617
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L616
	mov	x1, x20
	mov	x2, x21
	b	L618
L616:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L618
L617:
	mov	x1, x20
L618:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L622
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L621
	mov	x1, x20
	b	L623
L621:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L623
L622:
	mov	x1, x20
L623:
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x20]
	mov	x2, #8
	add	x3, x20, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_fs_FsError___init__
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L627
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L626
	mov	x1, x20
	b	L628
L626:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L628
L627:
	mov	x1, x20
L628:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L629:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_fs_rename */

.text
.balign 4
.globl _nox_fs_remove_file
_nox_fs_remove_file:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x20
	bl	_nox_fs_remove_file_raw
	bl	_nox_fs_last_op_ok
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	bne	L637
	adrp	x1, _str43@page+8
	add	x1, x1, _str43@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x20]
	mov	x2, #8
	add	x3, x20, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_fs_FsError___init__
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L635
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L634
	mov	x1, x20
	b	L636
L634:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L636
L635:
	mov	x1, x20
L636:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L637:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_fs_remove_file */

.text
.balign 4
.globl _nox_fs_create_dir
_nox_fs_create_dir:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x20
	bl	_nox_fs_create_dir_raw
	bl	_nox_fs_last_op_ok
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	bne	L645
	adrp	x1, _str44@page+8
	add	x1, x1, _str44@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #5
	str	x2, [x20]
	mov	x2, #8
	add	x3, x20, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_fs_FsError___init__
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L643
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L642
	mov	x1, x20
	b	L644
L642:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L644
L643:
	mov	x1, x20
L644:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L645:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_fs_create_dir */

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
.globl _nox_test_assert_eq_int
_nox_test_assert_eq_int:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x2
	mov	x21, x1
	mov	x1, x3
	cmp	x21, x20
	beq	L712
	adrp	x2, _str45@page+8
	add	x2, x2, _str45@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x20
	mov	x22, x0
	mov	x0, x19
	mov	x2, x22
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L685
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L684
	mov	x1, x22
	b	L686
L684:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L686
L685:
	mov	x1, x22
L686:
	cmp	x1, #0
	beq	L690
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L689
	mov	x1, x20
	b	L691
L689:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L691
L690:
	mov	x1, x20
L691:
	adrp	x2, _str46@page+8
	add	x2, x2, _str46@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L695
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L694
	mov	x1, x21
	b	L696
L694:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L696
L695:
	mov	x1, x21
L696:
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x20
	mov	x21, x0
	mov	x0, x19
	mov	x2, x21
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L700
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L699
	mov	x1, x21
	b	L701
L699:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L701
L700:
	mov	x1, x21
L701:
	cmp	x1, #0
	beq	L705
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L704
	mov	x1, x20
	b	L706
L704:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L706
L705:
	mov	x1, x20
L706:
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #7
	str	x2, [x20]
	mov	x2, #8
	add	x3, x20, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_test_AssertionError___init__
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L710
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L709
	mov	x1, x20
	b	L711
L709:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L711
L710:
	mov	x1, x20
L711:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L712:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_test_assert_eq_int */

.text
.balign 4
.globl _nox_test_assert_eq_str
_nox_test_assert_eq_str:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x2
	mov	x21, x1
	mov	x1, x3
	mov	x20, x1
	mov	x1, x22
	mov	x19, x0
	mov	x0, x21
	bl	_strcmp
	mov	x2, x22
	mov	x1, x20
	mov	w3, w0
	mov	x0, x19
	cmp	w3, #0
	beq	L740
	mov	x20, x2
	adrp	x2, _str47@page+8
	add	x2, x2, _str47@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L718
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L717
	mov	x1, x20
	mov	x2, x21
	b	L719
L717:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L719
L718:
	mov	x1, x20
L719:
	mov	x21, x2
	adrp	x2, _str48@page+8
	add	x2, x2, _str48@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L723
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L722
	mov	x1, x20
	mov	x2, x21
	b	L724
L722:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L724
L723:
	mov	x1, x20
L724:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L728
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L727
	mov	x1, x20
	b	L729
L727:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L729
L728:
	mov	x1, x20
L729:
	adrp	x2, _str49@page+8
	add	x2, x2, _str49@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L733
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L732
	mov	x1, x20
	b	L734
L732:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L734
L733:
	mov	x1, x20
L734:
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #7
	str	x2, [x20]
	mov	x2, #8
	add	x3, x20, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_test_AssertionError___init__
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L738
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L737
	mov	x1, x20
	b	L739
L737:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L739
L738:
	mov	x1, x20
L739:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L740:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_test_assert_eq_str */

.text
.balign 4
.globl _nox_test_assert_eq_float
_nox_test_assert_eq_float:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	d8, [x29, 32]
	str	d9, [x29, 24]
	fmov	d9, d1
	fmov	d8, d0
	fcmpe	d8, d9
	beq	L773
	adrp	x2, _str50@page+8
	add	x2, x2, _str50@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	fmov	d0, d9
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_float_to_str
	mov	x1, x20
	mov	x21, x0
	mov	x0, x19
	mov	x2, x21
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L746
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L745
	mov	x1, x21
	b	L747
L745:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L747
L746:
	mov	x1, x21
L747:
	cmp	x1, #0
	beq	L751
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L750
	mov	x1, x20
	b	L752
L750:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L752
L751:
	mov	x1, x20
L752:
	adrp	x2, _str51@page+8
	add	x2, x2, _str51@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L756
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L755
	fmov	d0, d8
	b	L757
L755:
	mov	x19, x0
	bl	_nox_str_free_now
	fmov	d0, d8
	mov	x0, x19
	b	L757
L756:
	fmov	d0, d8
L757:
	mov	x19, x0
	bl	_nox_float_to_str
	mov	x1, x20
	mov	x21, x0
	mov	x0, x19
	mov	x2, x21
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L761
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L760
	mov	x1, x21
	b	L762
L760:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L762
L761:
	mov	x1, x21
L762:
	cmp	x1, #0
	beq	L766
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L765
	mov	x1, x20
	b	L767
L765:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L767
L766:
	mov	x1, x20
L767:
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #7
	str	x2, [x20]
	mov	x2, #8
	add	x3, x20, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	_nox_test_AssertionError___init__
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L771
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L770
	mov	x1, x20
	b	L772
L770:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L772
L771:
	mov	x1, x20
L772:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L773:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	d8, [x29, 32]
	ldr	d9, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function nox_test_assert_eq_float */

.text
.balign 4
.globl _nox_test_assert_true
_nox_test_assert_true:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x2
	mov	w2, #1
	eor	w1, w1, w2
	cmp	w1, #0
	beq	L776
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x3, #7
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_AssertionError___init__
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L776:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_test_assert_true */

.text
.balign 4
.globl _nox_test__xml_escape
_nox_test__xml_escape:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	adrp	x3, _str53@page+8
	add	x3, x3, _str53@pageoff+8
	adrp	x2, _str52@page+8
	add	x2, x2, _str52@pageoff+8
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x22, x0
	mov	x0, x19
	adrp	x3, _str55@page+8
	add	x3, x3, _str55@pageoff+8
	adrp	x2, _str54@page+8
	add	x2, x2, _str54@pageoff+8
	mov	x1, x22
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x21, x0
	mov	x0, x19
	adrp	x3, _str57@page+8
	add	x3, x3, _str57@pageoff+8
	adrp	x2, _str56@page+8
	add	x2, x2, _str56@pageoff+8
	mov	x1, x21
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x1, x0
	mov	x0, x19
	adrp	x3, _str59@page+8
	add	x3, x3, _str59@pageoff+8
	adrp	x2, _str58@page+8
	add	x2, x2, _str58@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L781
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L780
	mov	x1, x22
	b	L782
L780:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L782
L781:
	mov	x1, x22
L782:
	cmp	x1, #0
	beq	L786
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L785
	mov	x1, x21
	b	L787
L785:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L787
L786:
	mov	x1, x21
L787:
	cmp	x1, #0
	beq	L791
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L790
	mov	x0, x19
	b	L792
L790:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L792
L791:
	mov	x0, x19
L792:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_test__xml_escape */

.text
.balign 4
.globl _nox_test_write_junit_xml
_nox_test_write_junit_xml:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x22, x2
	mov	x21, x1
	mov	x1, #8
	add	x1, x21, x1
	ldr	x1, [x1]
	adrp	x3, _str62@page+8
	add	x3, x3, _str62@pageoff+8
	adrp	x2, _str61@page+8
	add	x2, x2, _str61@pageoff+8
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x0
	mov	x0, x19
	adrp	x3, _str64@page+8
	add	x3, x3, _str64@pageoff+8
	adrp	x2, _str63@page+8
	add	x2, x2, _str63@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x20
	mov	x24, x0
	mov	x0, x19
	adrp	x3, _str66@page+8
	add	x3, x3, _str66@pageoff+8
	adrp	x2, _str65@page+8
	add	x2, x2, _str65@pageoff+8
	mov	x20, x1
	mov	x1, x24
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x20
	mov	x23, x0
	mov	x0, x19
	adrp	x3, _str68@page+8
	add	x3, x3, _str68@pageoff+8
	adrp	x2, _str67@page+8
	add	x2, x2, _str67@pageoff+8
	mov	x20, x1
	mov	x1, x23
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	adrp	x2, _str72@page+8
	add	x2, x2, _str72@pageoff+8
	cmp	x2, #0
	cmp	x1, #0
	beq	L797
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L796
	mov	x1, x24
	b	L798
L796:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L798
L797:
	mov	x1, x24
L798:
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
	mov	x1, x23
	b	L803
L801:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L803
L802:
	mov	x1, x23
L803:
	cmp	x1, #0
	beq	L807
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L806
	mov	x1, x20
	b	L808
L806:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L808
L807:
	mov	x1, x20
L808:
	mov	x2, x1
	mov	x20, x1
	adrp	x1, _str60@page+8
	add	x1, x1, _str60@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L812
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L811
	mov	x1, x20
	b	L813
L811:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L813
L812:
	mov	x1, x20
L813:
	adrp	x2, _str69@page+8
	add	x2, x2, _str69@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L817
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L816
	mov	x1, x20
	b	L818
L816:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L818
L817:
	mov	x1, x20
L818:
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_test_TestSuite_total_count
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x20
	mov	x23, x0
	mov	x0, x19
	mov	x2, x23
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L822
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L821
	mov	x1, x23
	b	L823
L821:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L823
L822:
	mov	x1, x23
L823:
	cmp	x1, #0
	beq	L827
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L826
	mov	x1, x20
	b	L828
L826:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L828
L827:
	mov	x1, x20
L828:
	adrp	x2, _str70@page+8
	add	x2, x2, _str70@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L832
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L831
	mov	x1, x20
	b	L833
L831:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L833
L832:
	mov	x1, x20
L833:
	mov	x20, x1
	mov	x1, #24
	add	x1, x21, x1
	ldr	x1, [x1]
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x20
	mov	x23, x0
	mov	x0, x19
	mov	x2, x23
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L837
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L836
	mov	x1, x23
	b	L838
L836:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L838
L837:
	mov	x1, x23
L838:
	cmp	x1, #0
	beq	L842
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L841
	mov	x1, x20
	b	L843
L841:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L843
L842:
	mov	x1, x20
L843:
	adrp	x2, _str71@page+8
	add	x2, x2, _str71@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L847
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L846
	mov	x1, x21
	b	L848
L846:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L848
L847:
	mov	x1, x21
L848:
	mov	x2, #32
	add	x1, x1, x2
	ldr	x2, [x1]
	mov	x1, x20
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _str72@page+8
	add	x2, x2, _str72@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L852
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L851
	mov	x1, x22
	b	L853
L851:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L853
L852:
	mov	x1, x22
L853:
	mov	x2, x21
	mov	x19, x0
	bl	_nox_fs_write_string
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x21
	mov	w2, w0
	mov	x0, x19
	cmp	x20, #0
	cmp	w2, #0
	bne	L865
	cmp	x1, #0
	beq	L858
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L857
	mov	x1, x20
	b	L859
L857:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L859
L858:
	mov	x1, x20
L859:
	cmp	x1, #0
	beq	L862
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L862
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L862:
	adrp	x1, _str72@page+8
	add	x1, x1, _str72@pageoff+8
	cmp	x1, #0
	beq	L872
	adrp	x1, _str72@page
	add	x1, x1, _str72@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str72@page
	add	x2, x2, _str72@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L872
	adrp	x1, _str72@page+8
	add	x1, x1, _str72@pageoff+8
	bl	_nox_str_free_now
	b	L872
L865:
	mov	x1, x20
	cmp	x1, #0
	beq	L869
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L869
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L869:
	adrp	x1, _str72@page+8
	add	x1, x1, _str72@pageoff+8
	cmp	x1, #0
	beq	L872
	adrp	x1, _str72@page
	add	x1, x1, _str72@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str72@page
	add	x2, x2, _str72@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L872
	adrp	x1, _str72@page+8
	add	x1, x1, _str72@pageoff+8
	bl	_nox_str_free_now
L872:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
/* end function nox_test_write_junit_xml */

.text
.balign 4
.globl _web_base64__alphabet
_web_base64__alphabet:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, _str73@page+8
	add	x0, x0, _str73@pageoff+8
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
	adrp	x0, _str74@page+8
	add	x0, x0, _str74@pageoff+8
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
	adrp	x0, _str75@page+8
	add	x0, x0, _str75@pageoff+8
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
L881:
	mov	x20, x1
	mov	x1, x19
	mov	x0, x20
	bl	_nox_str_byte_at
	mov	x1, x20
	cmp	x0, #0
	beq	L883
	mov	x0, #1
	add	x19, x19, x0
	b	L881
L883:
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
	beq	L887
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x2, x21
	mov	x1, x0
	mov	x0, x20
	mov	x3, #9
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x21, x2
	adrp	x2, _str76@page+8
	add	x2, x2, _str76@pageoff+8
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
	bne	L893
L887:
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
	bne	L889
	mov	x2, x21
	mov	x1, x20
	b	L890
L889:
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
	adrp	x2, _str77@page+8
	add	x2, x2, _str77@pageoff+8
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
	bne	L892
L890:
	bl	_nox_str_char_at
	cmp	x0, #0
	beq	L894
	mov	x1, #8
	sub	x2, x0, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
	b	L894
L892:
	mov	x0, #0
	b	L894
L893:
	mov	x0, #0
L894:
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
L897:
	cmp	x19, #64
	bge	L914
	cmp	x19, #0
	mov	x23, x1
	cset	w1, lt
	cmp	x19, x20
	mov	x24, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L900
	mov	x2, x24
	mov	x1, x23
	b	L901
L900:
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
	adrp	x2, _str78@page+8
	add	x2, x2, _str78@pageoff+8
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
	bne	L913
L901:
	cmp	w21, #0
	bne	L904
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
	b	L905
L904:
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
L905:
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
	beq	L909
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L908
	mov	x2, x25
	mov	x1, x24
	b	L910
L908:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x2, x25
	mov	x1, x24
	mov	x0, x23
	b	L910
L909:
	mov	x1, x24
L910:
	cmp	w22, #0
	beq	L912
	mov	x3, #1
	add	x19, x19, x3
	b	L897
L912:
	mov	x0, x19
	b	L915
L913:
	mov	x0, #0
	b	L915
L914:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #9
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str79@page+8
	add	x2, x2, _str79@pageoff+8
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
L915:
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
	adrp	x2, _str85@page+8
	add	x2, x2, _str85@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	beq	L918
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #9
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str80@page+8
	add	x2, x2, _str80@pageoff+8
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
	bne	L953
L918:
	cmp	x20, #32
	bge	L932
	cmp	x20, #9
	beq	L952
	cmp	x20, #10
	beq	L951
	mov	x1, x20
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x2, x1
	mov	x21, x1
	adrp	x1, _str83@page+8
	add	x1, x1, _str83@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L925
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L924
	mov	x1, x21
	b	L926
L924:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L926
L925:
	mov	x1, x21
L926:
	mov	x21, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	mov	x2, #9
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
	beq	L930
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L929
	mov	x1, x21
	b	L931
L929:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L931
L930:
	mov	x1, x21
L931:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L950
L932:
	cmp	x20, #127
	beq	L934
	mov	x1, x20
	b	L935
L934:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #9
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str84@page+8
	add	x2, x2, _str84@pageoff+8
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
	bne	L949
L935:
	mov	x2, #32
	sub	x20, x1, x2
	mov	x19, x0
	adrp	x0, _str85@page+8
	add	x0, x0, _str85@pageoff+8
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
	bne	L937
	mov	x2, x20
	b	L938
L937:
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
	adrp	x2, _str86@page+8
	add	x2, x2, _str86@pageoff+8
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
	bne	L945
L938:
	adrp	x1, _str85@page+8
	add	x1, x1, _str85@pageoff+8
	mov	x19, x0
	bl	_nox_str_char_at
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x19, #0
	beq	L940
	mov	x1, #8
	sub	x2, x19, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
L940:
	adrp	x1, _str85@page+8
	add	x1, x1, _str85@pageoff+8
	cmp	x1, #0
	beq	L944
	adrp	x1, _str85@page
	add	x1, x1, _str85@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str85@page
	add	x2, x2, _str85@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L943
	mov	x0, x19
	b	L954
L943:
	adrp	x1, _str85@page+8
	add	x1, x1, _str85@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L954
L944:
	mov	x0, x19
	b	L954
L945:
	adrp	x1, _str85@page+8
	add	x1, x1, _str85@pageoff+8
	cmp	x1, #0
	beq	L948
	adrp	x1, _str85@page
	add	x1, x1, _str85@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str85@page
	add	x2, x2, _str85@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L948
	adrp	x1, _str85@page+8
	add	x1, x1, _str85@pageoff+8
	bl	_nox_str_free_now
L948:
	mov	x0, #0
	b	L954
L949:
	mov	x0, #0
	b	L954
L950:
	mov	x0, #0
	b	L954
L951:
	adrp	x0, _str82@page+8
	add	x0, x0, _str82@pageoff+8
	b	L954
L952:
	adrp	x0, _str81@page+8
	add	x0, x0, _str81@pageoff+8
	b	L954
L953:
	mov	x0, #0
L954:
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
	beq	L981
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
	adrp	x20, _str88@page+8
	add	x20, x20, _str88@pageoff+8
	mov	x19, #0
L958:
	cmp	x19, x21
	bge	L980
	cmp	x19, #0
	mov	x25, x1
	cset	w1, lt
	cmp	x19, x22
	cset	w2, ge
	orr	w1, w1, w2
	cmp	x20, #0
	cmp	w1, #0
	bne	L961
	mov	x1, x25
	b	L962
L961:
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
	adrp	x2, _str89@page+8
	add	x2, x2, _str89@pageoff+8
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
	bne	L975
L962:
	cmp	w23, #0
	bne	L965
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
	b	L966
L965:
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
L966:
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
	beq	L970
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L969
	mov	x1, x26
	b	L971
L969:
	mov	x25, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x25
	b	L971
L970:
	mov	x1, x26
L971:
	cmp	x24, #0
	beq	L974
	mov	x2, #8
	sub	x2, x24, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x24, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L974
	mov	x25, x1
	mov	x1, x24
	mov	x24, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x24
L974:
	mov	x2, #1
	add	x19, x19, x2
	b	L958
L975:
	mov	x19, x20
	cmp	x19, #0
	beq	L979
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L979
	mov	x1, x19
	bl	_nox_str_free_now
L979:
	mov	x0, #0
	b	L982
L980:
	mov	x0, x20
	b	L982
L981:
	adrp	x0, _str87@page+8
	add	x0, x0, _str87@pageoff+8
L982:
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
	adrp	x20, _str90@page+8
	add	x20, x20, _str90@pageoff+8
	mov	x19, #0
L985:
	mov	x1, #2
	add	x1, x19, x1
	mov	x23, x1
	mov	x1, #1
	add	x1, x19, x1
	cmp	x20, #0
	cmp	x23, x25
	bge	L1050
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
	bne	L1045
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
	beq	L991
	mov	x26, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L990
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	b	L992
L990:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x0, x22
	b	L992
L991:
	mov	x1, x24
L992:
	cmp	x21, #0
	beq	L996
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
	ble	L995
	mov	x3, x25
	mov	x2, x24
	mov	x22, x1
	b	L997
L995:
	mov	x22, x1
	mov	x1, x21
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x24
	mov	x0, x21
	b	L997
L996:
	mov	x22, x1
L997:
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
	bne	L1040
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
	beq	L1002
	mov	x26, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1001
	mov	x1, x23
	mov	x3, x26
	mov	x2, x25
	b	L1003
L1001:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x26
	mov	x2, x25
	mov	x1, x23
	mov	x0, x21
	b	L1003
L1002:
	mov	x1, x23
L1003:
	cmp	x1, #0
	beq	L1007
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
	ble	L1006
	mov	x3, x25
	mov	x2, x23
	b	L1007
L1006:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x23
	mov	x0, x21
L1007:
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
	bne	L1035
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
	beq	L1012
	mov	x26, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1011
	mov	x1, x24
	mov	x3, x26
	mov	x2, x25
	b	L1013
L1011:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x0, x21
	b	L1013
L1012:
	mov	x1, x24
L1013:
	cmp	x1, #0
	beq	L1017
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
	ble	L1016
	mov	x3, x25
	mov	x2, x24
	b	L1017
L1016:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x24
	mov	x0, x21
L1017:
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
	bne	L1030
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
	beq	L1022
	mov	x25, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x24, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1021
	mov	x1, x23
	mov	x3, x25
	mov	x2, x24
	b	L1023
L1021:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x24
	mov	x1, x23
	mov	x0, x21
	b	L1023
L1022:
	mov	x1, x23
L1023:
	cmp	x1, #0
	beq	L1027
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
	ble	L1026
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	b	L1028
L1026:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x0, x21
	b	L1028
L1027:
	mov	x1, x22
L1028:
	mov	x4, #3
	add	x19, x19, x4
	mov	x26, x3
	mov	x25, x2
	mov	x24, x1
	b	L985
L1030:
	mov	x1, x23
	cmp	x1, #0
	beq	L1034
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1034
	bl	_nox_str_free_now
L1034:
	mov	x0, #0
	b	L1146
L1035:
	mov	x1, x24
	cmp	x1, #0
	beq	L1039
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1039
	bl	_nox_str_free_now
L1039:
	mov	x0, #0
	b	L1146
L1040:
	mov	x1, x23
	cmp	x1, #0
	beq	L1044
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1044
	bl	_nox_str_free_now
L1044:
	mov	x0, #0
	b	L1146
L1045:
	mov	x1, x21
	cmp	x1, #0
	beq	L1049
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1049
	mov	x21, x1
	mov	x20, x0
	bl	_nox_str_free_now
L1049:
	mov	x0, #0
	b	L1146
L1050:
	mov	x21, x20
	mov	x23, x1
	mov	x1, x19
	mov	x22, x26
	mov	x20, x0
	mov	x0, x24
	ldr	w24, [x29, 16]
	sub	x2, x25, x1
	cmp	x2, #1
	beq	L1106
	cmp	x2, #2
	beq	L1054
	mov	x1, x21
	b	L1135
L1054:
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
	bne	L1101
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
	beq	L1059
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1058
	mov	x1, x21
	b	L1060
L1058:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1060
L1059:
	mov	x1, x21
	mov	w23, w4
L1060:
	cmp	x1, #0
	beq	L1063
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1063
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1063:
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
	bne	L1096
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
	beq	L1068
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1067
	mov	x1, x24
	b	L1069
L1067:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x20
	b	L1069
L1068:
	mov	x1, x24
	mov	w23, w4
L1069:
	cmp	x1, #0
	beq	L1073
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1072
	mov	w4, w23
	mov	x1, x22
	b	L1074
L1072:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	w4, w23
	mov	x1, x22
	mov	x0, x20
	b	L1074
L1073:
	mov	w4, w23
	mov	x1, x22
L1074:
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
	bne	L1091
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
	beq	L1079
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1078
	mov	x1, x21
	b	L1080
L1078:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1080
L1079:
	mov	x1, x21
	mov	w23, w4
L1080:
	cmp	x1, #0
	beq	L1084
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1083
	mov	x1, x20
	b	L1085
L1083:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1085
L1084:
	mov	x1, x20
L1085:
	cmp	w23, #0
	beq	L1135
	adrp	x2, _str92@page+8
	add	x2, x2, _str92@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1090
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1089
	mov	x1, x19
	b	L1135
L1089:
	bl	_nox_str_free_now
	mov	x1, x19
	b	L1135
L1090:
	mov	x1, x19
	b	L1135
L1091:
	mov	x1, x21
	cmp	x1, #0
	beq	L1095
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1095
	bl	_nox_str_free_now
L1095:
	mov	x0, #0
	b	L1146
L1096:
	mov	x1, x24
	cmp	x1, #0
	beq	L1100
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1100
	bl	_nox_str_free_now
L1100:
	mov	x0, #0
	b	L1146
L1101:
	mov	x1, x21
	cmp	x1, #0
	beq	L1105
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1105
	mov	x24, x1
	mov	x19, x0
	bl	_nox_str_free_now
L1105:
	mov	x0, #0
	b	L1146
L1106:
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
	bne	L1141
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
	beq	L1112
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1111
	mov	x1, x24
	b	L1113
L1111:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x20
	b	L1113
L1112:
	mov	x1, x24
	mov	w23, w4
L1113:
	cmp	x1, #0
	beq	L1117
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1116
	mov	w4, w23
	mov	x1, x21
	b	L1118
L1116:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	w4, w23
	mov	x1, x21
	mov	x0, x20
	b	L1118
L1117:
	mov	w4, w23
	mov	x1, x21
L1118:
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
	bne	L1136
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
	beq	L1123
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w21, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1122
	mov	x1, x22
	b	L1124
L1122:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L1124
L1123:
	mov	x1, x22
	mov	w21, w4
L1124:
	cmp	x1, #0
	beq	L1128
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1127
	mov	x1, x20
	mov	w4, w21
	b	L1129
L1127:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	w4, w21
	mov	x1, x20
	mov	x0, x19
	b	L1129
L1128:
	mov	x1, x20
	mov	w4, w21
L1129:
	cmp	w4, #0
	beq	L1135
	adrp	x2, _str91@page+8
	add	x2, x2, _str91@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1134
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1133
	mov	x1, x19
	b	L1135
L1133:
	bl	_nox_str_free_now
	mov	x1, x19
	b	L1135
L1134:
	mov	x1, x19
L1135:
	mov	x0, x1
	b	L1146
L1136:
	mov	x1, x22
	cmp	x1, #0
	beq	L1140
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1140
	bl	_nox_str_free_now
L1140:
	mov	x0, #0
	b	L1146
L1141:
	mov	x1, x24
	cmp	x1, #0
	beq	L1145
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1145
	bl	_nox_str_free_now
L1145:
	mov	x0, #0
L1146:
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
	adrp	x3, _str93@page+8
	add	x3, x3, _str93@pageoff+8
	mov	x19, x0
	bl	_web_base64__encode_bytes
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str93@page+8
	add	x2, x2, _str93@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L1153
	adrp	x1, _str93@page+8
	add	x1, x1, _str93@pageoff+8
	cmp	x1, #0
	beq	L1152
	adrp	x1, _str93@page
	add	x1, x1, _str93@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str93@page
	add	x2, x2, _str93@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L1151
	mov	x0, x19
	b	L1154
L1151:
	adrp	x1, _str93@page+8
	add	x1, x1, _str93@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1154
L1152:
	mov	x0, x19
	b	L1154
L1153:
	mov	x0, #0
L1154:
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
	adrp	x3, _str94@page+8
	add	x3, x3, _str94@pageoff+8
	mov	x19, x0
	bl	_web_base64__encode_bytes
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str94@page+8
	add	x2, x2, _str94@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L1161
	adrp	x1, _str94@page+8
	add	x1, x1, _str94@pageoff+8
	cmp	x1, #0
	beq	L1160
	adrp	x1, _str94@page
	add	x1, x1, _str94@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str94@page
	add	x2, x2, _str94@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L1159
	mov	x0, x19
	b	L1162
L1159:
	adrp	x1, _str94@page+8
	add	x1, x1, _str94@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1162
L1160:
	mov	x0, x19
	b	L1162
L1161:
	mov	x0, #0
L1162:
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
	bne	L1169
	cmp	x1, #97
	cset	w2, ge
	cmp	x1, #102
	cset	w3, le
	and	w2, w2, w3
	cmp	w2, #0
	bne	L1168
	cmp	x1, #65
	cset	w2, ge
	cmp	x1, #70
	cset	w3, le
	and	w2, w2, w3
	cmp	w2, #0
	bne	L1167
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #9
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str95@page+8
	add	x2, x2, _str95@pageoff+8
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
	b	L1170
L1167:
	mov	x0, #55
	sub	x0, x1, x0
	b	L1170
L1168:
	mov	x0, #87
	sub	x0, x1, x0
	b	L1170
L1169:
	mov	x0, #48
	sub	x0, x1, x0
L1170:
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
	adrp	x2, _str96@page+8
	add	x2, x2, _str96@pageoff+8
	cmp	x2, #0
	cmp	x1, #0
	beq	L1173
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x20
	mov	x2, #9
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str97@page+8
	add	x2, x2, _str97@pageoff+8
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
	bne	L1466
L1173:
	mov	x25, x19
	adrp	x20, _str98@page+8
	add	x20, x20, _str98@pageoff+8
	mov	x19, #0
L1174:
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
	bge	L1303
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
	bne	L1295
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
	bne	L1287
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
	bne	L1279
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
	bne	L1271
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
	bne	L1263
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
	bne	L1255
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
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
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
	bne	L1247
	mov	x2, x1
	mov	x24, x1
	mov	x1, x22
	mov	x23, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x24, x0
	mov	x0, x23
	cmp	x1, #0
	beq	L1186
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1185
	mov	x1, x25
	b	L1187
L1185:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x23
	b	L1187
L1186:
	mov	x1, x25
L1187:
	cmp	x22, #0
	beq	L1191
	mov	x2, #8
	sub	x2, x22, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x22, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1190
	mov	x23, x1
	b	L1192
L1190:
	mov	x23, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x0, x22
	b	L1192
L1191:
	mov	x23, x1
L1192:
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
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
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
	bne	L1239
	mov	x2, x1
	mov	x25, x1
	mov	x1, x24
	mov	x22, x0
	bl	_nox_str_concat
	mov	x1, x25
	mov	x25, x0
	mov	x0, x22
	cmp	x1, #0
	beq	L1197
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1196
	mov	x1, x24
	b	L1198
L1196:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x22
	b	L1198
L1197:
	mov	x1, x24
L1198:
	cmp	x1, #0
	beq	L1201
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1201
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x0, x22
L1201:
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
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
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
	bne	L1231
	mov	x2, x1
	mov	x24, x1
	mov	x1, x25
	mov	x22, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x24, x0
	mov	x0, x22
	cmp	x1, #0
	beq	L1206
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1205
	mov	x1, x25
	b	L1207
L1205:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x22
	b	L1207
L1206:
	mov	x1, x25
L1207:
	cmp	x1, #0
	beq	L1210
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1210
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x0, x22
L1210:
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
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
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
	bne	L1223
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
	beq	L1215
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1214
	mov	x1, x24
	b	L1216
L1214:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x22
	b	L1216
L1215:
	mov	x1, x24
L1216:
	cmp	x1, #0
	beq	L1220
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1219
	mov	x1, x23
	b	L1221
L1219:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x22
	b	L1221
L1220:
	mov	x1, x23
L1221:
	mov	x2, #6
	add	x19, x19, x2
	mov	x25, x1
	b	L1174
L1223:
	mov	x1, x24
	cmp	x1, #0
	beq	L1227
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1227
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1227:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1230
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1230
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1230:
	mov	x0, #0
	b	L1470
L1231:
	mov	x1, x25
	cmp	x1, #0
	beq	L1235
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1235
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1235:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1238
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1238
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1238:
	mov	x0, #0
	b	L1470
L1239:
	mov	x1, x24
	cmp	x1, #0
	beq	L1243
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1243
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1243:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1246
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1246
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1246:
	mov	x0, #0
	b	L1470
L1247:
	mov	x1, x22
	cmp	x1, #0
	beq	L1251
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1251
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1251:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1254
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1254
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1254:
	mov	x0, #0
	b	L1470
L1255:
	mov	x1, x20
	cmp	x1, #0
	beq	L1259
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1259
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1259:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1262
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1262
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1262:
	mov	x0, #0
	b	L1470
L1263:
	mov	x1, x20
	cmp	x1, #0
	beq	L1267
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1267
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1267:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1270
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1270
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1270:
	mov	x0, #0
	b	L1470
L1271:
	mov	x1, x20
	cmp	x1, #0
	beq	L1275
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1275
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1275:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1278
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1278
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1278:
	mov	x0, #0
	b	L1470
L1279:
	mov	x1, x20
	cmp	x1, #0
	beq	L1283
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1283
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1283:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1286
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1286
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1286:
	mov	x0, #0
	b	L1470
L1287:
	mov	x1, x20
	cmp	x1, #0
	beq	L1291
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1291
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1291:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1294
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1294
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1294:
	mov	x0, #0
	b	L1470
L1295:
	mov	x1, x20
	cmp	x1, #0
	beq	L1299
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1299
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1299:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1302
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1302
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1302:
	mov	x0, #0
	b	L1470
L1303:
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
	beq	L1407
	cmp	x2, #4
	beq	L1317
	mov	x1, x2
	cmp	x1, #0
	bne	L1309
	mov	x1, x20
	b	L1430
L1309:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #9
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str99@page+8
	add	x2, x2, _str99@pageoff+8
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
	beq	L1430
	cmp	x1, #0
	beq	L1313
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1313
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1313:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1316
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1316
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	mov	x22, x0
	bl	_nox_str_free_now
L1316:
	mov	x0, #0
	b	L1470
L1317:
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
	bne	L1399
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
	bne	L1391
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
	bne	L1383
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
	bne	L1375
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
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
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
	bne	L1367
	mov	x2, x1
	mov	x22, x1
	mov	x1, x21
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x22
	mov	x22, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L1327
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1326
	mov	x1, x21
	b	L1328
L1326:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1328
L1327:
	mov	x1, x21
L1328:
	cmp	x1, #0
	beq	L1331
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1331
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1331:
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
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
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
	bne	L1359
	mov	x2, x1
	mov	x21, x1
	mov	x1, x22
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L1336
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1335
	mov	x1, x22
	b	L1337
L1335:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L1337
L1336:
	mov	x1, x22
L1337:
	cmp	x1, #0
	beq	L1340
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1340
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1340:
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
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
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
	bne	L1351
	mov	x2, x1
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1345
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1344
	mov	x1, x21
	b	L1346
L1344:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1346
L1345:
	mov	x1, x21
L1346:
	cmp	x1, #0
	beq	L1350
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1349
	mov	x1, x20
	b	L1430
L1349:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1430
L1350:
	mov	x1, x20
	b	L1430
L1351:
	mov	x1, x21
	cmp	x1, #0
	beq	L1355
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1355
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1355:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1358
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1358
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1358:
	mov	x0, #0
	b	L1470
L1359:
	mov	x1, x22
	cmp	x1, #0
	beq	L1363
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1363
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1363:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1366
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1366
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1366:
	mov	x0, #0
	b	L1470
L1367:
	mov	x1, x21
	cmp	x1, #0
	beq	L1371
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1371
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1371:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1374
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1374
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1374:
	mov	x0, #0
	b	L1470
L1375:
	mov	x1, x21
	cmp	x1, #0
	beq	L1379
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1379
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1379:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1382
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1382
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1382:
	mov	x0, #0
	b	L1470
L1383:
	mov	x1, x21
	mov	x0, x22
	cmp	x1, #0
	beq	L1387
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1387
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1387:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1390
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1390
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1390:
	mov	x0, #0
	b	L1470
L1391:
	mov	x1, x21
	mov	x0, x22
	cmp	x1, #0
	beq	L1395
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1395
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1395:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1398
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1398
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1398:
	mov	x0, #0
	b	L1470
L1399:
	mov	x1, x21
	mov	x0, x22
	cmp	x1, #0
	beq	L1403
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1403
	mov	x22, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1403:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1406
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1406
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	mov	x19, x0
	bl	_nox_str_free_now
L1406:
	mov	x0, #0
	b	L1470
L1407:
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
	bne	L1458
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
	bne	L1450
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
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
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
	bne	L1442
	mov	x2, x1
	mov	x21, x1
	mov	x1, x22
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L1415
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1414
	mov	x1, x22
	b	L1416
L1414:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L1416
L1415:
	mov	x1, x22
L1416:
	cmp	x1, #0
	beq	L1419
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1419
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1419:
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
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
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
	bne	L1434
	mov	x2, x1
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1424
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1423
	mov	x1, x21
	b	L1425
L1423:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1425
L1424:
	mov	x1, x21
L1425:
	cmp	x1, #0
	beq	L1429
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1428
	mov	x1, x20
	b	L1430
L1428:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1430
L1429:
	mov	x1, x20
L1430:
	adrp	x2, _str96@page+8
	add	x2, x2, _str96@pageoff+8
	cmp	x2, #0
	beq	L1433
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	adrp	x3, _str96@page
	add	x3, x3, _str96@pageoff
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1433
	mov	x19, x1
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
	mov	x1, x19
L1433:
	mov	x0, x1
	b	L1470
L1434:
	mov	x1, x21
	cmp	x1, #0
	beq	L1438
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1438
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1438:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1441
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1441
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1441:
	mov	x0, #0
	b	L1470
L1442:
	mov	x1, x22
	cmp	x1, #0
	beq	L1446
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1446
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1446:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1449
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1449
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1449:
	mov	x0, #0
	b	L1470
L1450:
	mov	x1, x22
	cmp	x1, #0
	beq	L1454
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1454
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1454:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1457
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1457
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1457:
	mov	x0, #0
	b	L1470
L1458:
	mov	x1, x22
	mov	x0, x19
	cmp	x1, #0
	beq	L1462
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1462
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1462:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1465
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1465
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1465:
	mov	x0, #0
	b	L1470
L1466:
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	cmp	x1, #0
	beq	L1469
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str96@page
	add	x2, x2, _str96@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1469
	adrp	x1, _str96@page+8
	add	x1, x1, _str96@pageoff+8
	bl	_nox_str_free_now
L1469:
	mov	x0, #0
L1470:
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
	beq	L1473
	mov	x2, #8
	sub	x4, x1, x2
	ldr	x2, [x4]
	mov	x5, #1
	add	x2, x2, x5
	str	x2, [x4]
L1473:
	cmp	w3, #0
	beq	L1483
	mov	x19, #0
L1475:
	mov	x21, x1
	adrp	x1, _str100@page+8
	add	x1, x1, _str100@pageoff+8
	mov	x20, x0
	mov	x0, x21
	bl	_nox_strings_ends_with_raw
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	cmp	x2, #0
	beq	L1484
	mov	x21, x1
	mov	x20, x0
	bl	_web_base64__drop_last
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L1480
	mov	x3, #8
	sub	x3, x1, x3
	mov	x22, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1479
	mov	x1, x21
	mov	x2, x22
	b	L1481
L1479:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x2, x22
	mov	x1, x21
	mov	x0, x20
	b	L1481
L1480:
	mov	x1, x21
L1481:
	mov	x3, #1
	add	x19, x19, x3
	mov	x22, x2
	b	L1475
L1483:
	mov	x19, #0
L1484:
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
	beq	L1486
	mov	x1, x23
	b	L1487
L1486:
	mov	x1, #16
	mov	x21, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #9
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str101@page+8
	add	x2, x2, _str101@pageoff+8
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
	bne	L1717
L1487:
	cmp	x19, #0
	cmp	x20, #2
	beq	L1496
	cmp	x20, #3
	bne	L1503
	cmp	x19, #0
	bne	L1491
	mov	x19, #1
L1491:
	adrp	x2, _str103@page+8
	add	x2, x2, _str103@pageoff+8
	mov	x21, x1
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L1495
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1494
	mov	x1, x21
	b	L1503
L1494:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1503
L1495:
	mov	x1, x21
	b	L1503
L1496:
	cmp	x19, #0
	bne	L1498
	mov	x19, #2
L1498:
	adrp	x2, _str102@page+8
	add	x2, x2, _str102@pageoff+8
	mov	x21, x1
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L1502
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1501
	mov	x1, x21
	b	L1503
L1501:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1503
L1502:
	mov	x1, x21
L1503:
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
	bne	L1505
	mov	x1, x21
	b	L1506
L1505:
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x20
	mov	x2, #9
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str104@page+8
	add	x2, x2, _str104@pageoff+8
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
	bne	L1713
L1506:
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
	bge	L1508
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #9
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str105@page+8
	add	x2, x2, _str105@pageoff+8
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
	bne	L1708
L1508:
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
	adrp	x23, _str106@page+8
	add	x23, x23, _str106@pageoff+8
	mov	x22, #0
	mov	x24, #0
L1510:
	str	x22, [x29, 136]
	cmp	x24, x28
	bge	L1702
	cmp	x24, #0
	mov	x25, x1
	cset	w1, lt
	cmp	x24, x19
	mov	x26, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	x23, #0
	cmp	w1, #0
	bne	L1513
	mov	x1, x25
	mov	x2, x26
	b	L1514
L1513:
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
	adrp	x2, _str107@page+8
	add	x2, x2, _str107@pageoff+8
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
	bne	L1694
L1514:
	cmp	w20, #0
	bne	L1517
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
	b	L1518
L1517:
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
L1518:
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
	bne	L1686
	cmp	x1, #0
	beq	L1523
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1522
	mov	x1, x25
	mov	x2, x26
	b	L1524
L1522:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	b	L1524
L1523:
	mov	x1, x25
L1524:
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
	bne	L1526
	mov	x1, x25
	mov	x2, x26
	b	L1527
L1526:
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
	adrp	x2, _str108@page+8
	add	x2, x2, _str108@pageoff+8
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
	bne	L1678
L1527:
	cmp	w20, #0
	bne	L1530
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
	b	L1531
L1530:
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
L1531:
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
	bne	L1670
	cmp	x1, #0
	beq	L1536
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1535
	mov	x1, x25
	mov	x2, x26
	b	L1537
L1535:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	b	L1537
L1536:
	mov	x1, x25
L1537:
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
	bne	L1539
	mov	x1, x25
	mov	x2, x26
	b	L1540
L1539:
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
	adrp	x2, _str109@page+8
	add	x2, x2, _str109@pageoff+8
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
	bne	L1662
L1540:
	cmp	w20, #0
	bne	L1543
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
	b	L1544
L1543:
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
L1544:
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
	bne	L1654
	cmp	x1, #0
	beq	L1549
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1548
	mov	x1, x25
	mov	x2, x26
	b	L1550
L1548:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	b	L1550
L1549:
	mov	x1, x25
L1550:
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
	bne	L1552
	mov	x1, x25
	mov	x2, x26
	b	L1553
L1552:
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
	adrp	x2, _str110@page+8
	add	x2, x2, _str110@pageoff+8
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
	bne	L1646
L1553:
	cmp	w20, #0
	bne	L1556
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
	b	L1557
L1556:
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
L1557:
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
	bne	L1638
	cmp	x1, #0
	beq	L1562
	mov	x7, #8
	sub	x7, x1, x7
	mov	x26, x2
	ldr	x2, [x7]
	mov	x8, #1
	sub	x2, x2, x8
	str	x2, [x7]
	cmp	x2, #0
	ble	L1561
	mov	x1, x25
	mov	x2, x26
	b	L1563
L1561:
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
	b	L1563
L1562:
	mov	x1, x25
L1563:
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
	blt	L1565
	mov	x1, x3
	mov	x26, x2
	b	L1580
L1565:
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
	bne	L1630
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
	beq	L1572
	mov	x4, #8
	sub	x5, x1, x4
	ldr	x4, [x5]
	mov	x6, #1
	sub	x4, x4, x6
	str	x4, [x5]
	cmp	x4, #0
	ble	L1571
	mov	x1, x3
	mov	x17, x25
	mov	x25, x1
	mov	x1, x17
	b	L1573
L1571:
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
	b	L1573
L1572:
	mov	x1, x25
	mov	x25, x3
L1573:
	cmp	x23, #0
	beq	L1578
	mov	x3, #8
	sub	x3, x23, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x23, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L1577
	mov	x23, x2
	mov	x17, x1
	mov	x1, x25
	mov	x25, x17
	mov	x2, x26
	b	L1579
L1577:
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
	b	L1579
L1578:
	mov	x23, x2
	mov	x17, x1
	mov	x1, x25
	mov	x25, x17
	mov	x2, x26
L1579:
	mov	x26, x2
	mov	x2, #1
	add	x22, x22, x2
L1580:
	cmp	x22, x27
	blt	L1582
	mov	x21, x27
	mov	x2, x26
	mov	x26, x1
	b	L1596
L1582:
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
	bne	L1622
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
	beq	L1588
	mov	x3, #8
	sub	x4, x1, x3
	ldr	x3, [x4]
	mov	x5, #1
	sub	x3, x3, x5
	str	x3, [x4]
	cmp	x3, #0
	ble	L1587
	mov	x1, x2
	mov	x2, x26
	mov	x26, x21
	mov	x21, x23
	mov	x23, x1
	mov	x1, x25
	b	L1589
L1587:
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
	b	L1589
L1588:
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
L1589:
	cmp	x21, #0
	beq	L1594
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
	ble	L1593
	mov	x21, x27
	mov	x2, x25
	b	L1595
L1593:
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
	b	L1595
L1594:
	mov	x21, x27
L1595:
	mov	x25, x1
	mov	x1, #1
	add	x22, x22, x1
L1596:
	cmp	x22, x21
	blt	L1598
	mov	x1, x25
	mov	x25, x28
	b	L1612
L1598:
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
	bne	L1614
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
	beq	L1604
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1603
	mov	x1, x25
	mov	x25, x28
	mov	x2, x26
	b	L1605
L1603:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	ldr	x27, [x29, 16]
	ldr	x21, [x29, 32]
	ldr	x25, [x29, 24]
	b	L1605
L1604:
	mov	x1, x25
	mov	x25, x28
L1605:
	cmp	x23, #0
	beq	L1610
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
	ble	L1609
	mov	x23, x27
	mov	x2, x26
	b	L1611
L1609:
	mov	x25, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	ldr	x23, [x29, 16]
	ldr	x25, [x29, 24]
	b	L1611
L1610:
	mov	x23, x27
L1611:
	mov	x3, #1
	add	x22, x22, x3
L1612:
	mov	x3, #4
	add	x24, x24, x3
	mov	x28, x25
	b	L1510
L1614:
	mov	x1, x25
	cmp	x1, #0
	beq	L1618
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1618
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1618:
	cmp	x23, #0
	beq	L1621
	mov	x1, #8
	sub	x1, x23, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x23, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1621
	mov	x1, x23
	bl	_nox_str_free_now
L1621:
	mov	x0, #0
	b	L1721
L1622:
	mov	x1, x25
	cmp	x1, #0
	beq	L1626
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1626
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1626:
	cmp	x23, #0
	beq	L1629
	mov	x1, #8
	sub	x1, x23, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x23, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1629
	mov	x1, x23
	bl	_nox_str_free_now
L1629:
	mov	x0, #0
	b	L1721
L1630:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L1634
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1634
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1634:
	cmp	x19, #0
	beq	L1637
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1637
	mov	x1, x19
	bl	_nox_str_free_now
L1637:
	mov	x0, #0
	b	L1721
L1638:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L1642
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1642
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1642:
	cmp	x19, #0
	beq	L1645
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1645
	mov	x1, x19
	bl	_nox_str_free_now
L1645:
	mov	x0, #0
	b	L1721
L1646:
	mov	x19, x23
	cmp	x1, #0
	beq	L1650
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1650
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1650:
	cmp	x19, #0
	beq	L1653
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1653
	mov	x1, x19
	bl	_nox_str_free_now
L1653:
	mov	x0, #0
	b	L1721
L1654:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L1658
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1658
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1658:
	cmp	x19, #0
	beq	L1661
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1661
	mov	x1, x19
	bl	_nox_str_free_now
L1661:
	mov	x0, #0
	b	L1721
L1662:
	mov	x19, x23
	cmp	x1, #0
	beq	L1666
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1666
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1666:
	cmp	x19, #0
	beq	L1669
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1669
	mov	x1, x19
	bl	_nox_str_free_now
L1669:
	mov	x0, #0
	b	L1721
L1670:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L1674
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1674
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1674:
	cmp	x19, #0
	beq	L1677
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1677
	mov	x1, x19
	bl	_nox_str_free_now
L1677:
	mov	x0, #0
	b	L1721
L1678:
	mov	x19, x23
	cmp	x1, #0
	beq	L1682
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1682
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1682:
	cmp	x19, #0
	beq	L1685
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1685
	mov	x1, x19
	bl	_nox_str_free_now
L1685:
	mov	x0, #0
	b	L1721
L1686:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L1690
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1690
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1690:
	cmp	x19, #0
	beq	L1693
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1693
	mov	x1, x19
	bl	_nox_str_free_now
L1693:
	mov	x0, #0
	b	L1721
L1694:
	mov	x19, x23
	cmp	x1, #0
	beq	L1698
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1698
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1698:
	cmp	x19, #0
	beq	L1701
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1701
	mov	x1, x19
	bl	_nox_str_free_now
L1701:
	mov	x0, #0
	b	L1721
L1702:
	mov	x19, x23
	cmp	x1, #0
	beq	L1707
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1706
	mov	x0, x19
	b	L1721
L1706:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1721
L1707:
	mov	x0, x19
	b	L1721
L1708:
	mov	x1, x21
	cmp	x1, #0
	beq	L1712
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1712
	bl	_nox_str_free_now
L1712:
	mov	x0, #0
	b	L1721
L1713:
	cmp	x1, #0
	beq	L1716
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1716
	bl	_nox_str_free_now
L1716:
	mov	x0, #0
	b	L1721
L1717:
	cmp	x1, #0
	beq	L1720
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1720
	bl	_nox_str_free_now
L1720:
	mov	x0, #0
L1721:
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
	adrp	x2, _str111@page+8
	add	x2, x2, _str111@pageoff+8
	mov	x19, x0
	bl	_web_base64__decode_to_ascii_impl
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str111@page+8
	add	x2, x2, _str111@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L1728
	adrp	x1, _str111@page+8
	add	x1, x1, _str111@pageoff+8
	cmp	x1, #0
	beq	L1727
	adrp	x1, _str111@page
	add	x1, x1, _str111@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str111@page
	add	x2, x2, _str111@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L1726
	mov	x0, x19
	b	L1729
L1726:
	adrp	x1, _str111@page+8
	add	x1, x1, _str111@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1729
L1727:
	mov	x0, x19
	b	L1729
L1728:
	mov	x0, #0
L1729:
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
	adrp	x2, _str112@page+8
	add	x2, x2, _str112@pageoff+8
	mov	x19, x0
	bl	_web_base64__decode_to_ascii_impl
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str112@page+8
	add	x2, x2, _str112@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L1736
	adrp	x1, _str112@page+8
	add	x1, x1, _str112@pageoff+8
	cmp	x1, #0
	beq	L1735
	adrp	x1, _str112@page
	add	x1, x1, _str112@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str112@page
	add	x2, x2, _str112@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L1734
	mov	x0, x19
	b	L1737
L1734:
	adrp	x1, _str112@page+8
	add	x1, x1, _str112@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1737
L1735:
	mov	x0, x19
	b	L1737
L1736:
	mov	x0, #0
L1737:
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	w19, w0
	bl	_nox_runtime_init
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_nox_os_init
	mov	x0, x19
	adrp	x1, _str113@page+8
	add	x1, x1, _str113@pageoff+8
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
	bne	L1822
	adrp	x3, _str115@page+8
	add	x3, x3, _str115@pageoff+8
	adrp	x2, _str114@page+8
	add	x2, x2, _str114@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1821
	cmp	x1, #0
	beq	L1743
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1743
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1743:
	adrp	x1, _str116@page+8
	add	x1, x1, _str116@pageoff+8
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
	bne	L1820
	adrp	x3, _str118@page+8
	add	x3, x3, _str118@pageoff+8
	adrp	x2, _str117@page+8
	add	x2, x2, _str117@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1819
	cmp	x1, #0
	beq	L1748
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1748
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1748:
	adrp	x1, _str119@page+8
	add	x1, x1, _str119@pageoff+8
	mov	x19, x0
	bl	_web_base64_encode_url
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1818
	adrp	x3, _str121@page+8
	add	x3, x3, _str121@pageoff+8
	adrp	x2, _str120@page+8
	add	x2, x2, _str120@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1817
	cmp	x1, #0
	beq	L1753
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1753
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1753:
	adrp	x1, _str122@page+8
	add	x1, x1, _str122@pageoff+8
	mov	x19, x0
	bl	_web_base64_decode_url
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1816
	adrp	x3, _str124@page+8
	add	x3, x3, _str124@pageoff+8
	adrp	x2, _str123@page+8
	add	x2, x2, _str123@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1815
	cmp	x1, #0
	beq	L1758
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1758
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1758:
	adrp	x1, _str125@page+8
	add	x1, x1, _str125@pageoff+8
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
	bne	L1814
	adrp	x3, _str127@page+8
	add	x3, x3, _str127@pageoff+8
	adrp	x2, _str126@page+8
	add	x2, x2, _str126@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1813
	cmp	x1, #0
	beq	L1763
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1763
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1763:
	adrp	x1, _str128@page+8
	add	x1, x1, _str128@pageoff+8
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
	bne	L1812
	adrp	x3, _str130@page+8
	add	x3, x3, _str130@pageoff+8
	adrp	x2, _str129@page+8
	add	x2, x2, _str129@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1811
	cmp	x1, #0
	beq	L1768
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1768
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1768:
	adrp	x1, _str131@page+8
	add	x1, x1, _str131@pageoff+8
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
	bne	L1810
	adrp	x3, _str133@page+8
	add	x3, x3, _str133@pageoff+8
	adrp	x2, _str132@page+8
	add	x2, x2, _str132@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1809
	cmp	x1, #0
	beq	L1773
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1773
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1773:
	adrp	x1, _str134@page+8
	add	x1, x1, _str134@pageoff+8
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
	bne	L1808
	adrp	x3, _str136@page+8
	add	x3, x3, _str136@pageoff+8
	adrp	x2, _str135@page+8
	add	x2, x2, _str135@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1807
	cmp	x1, #0
	beq	L1778
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1778
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1778:
	adrp	x1, _str137@page+8
	add	x1, x1, _str137@pageoff+8
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
	bne	L1806
	adrp	x3, _str139@page+8
	add	x3, x3, _str139@pageoff+8
	adrp	x2, _str138@page+8
	add	x2, x2, _str138@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1805
	cmp	x1, #0
	beq	L1783
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1783
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1783:
	adrp	x1, _str140@page+8
	add	x1, x1, _str140@pageoff+8
	mov	x19, x0
	bl	_web_base64_encode_url
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1804
	adrp	x3, _str142@page+8
	add	x3, x3, _str142@pageoff+8
	adrp	x2, _str141@page+8
	add	x2, x2, _str141@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1803
	cmp	x1, #0
	beq	L1788
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1788
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1788:
	adrp	x1, _str143@page+8
	add	x1, x1, _str143@pageoff+8
	mov	x19, x0
	bl	_web_base64_decode_url
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1802
	adrp	x3, _str145@page+8
	add	x3, x3, _str145@pageoff+8
	adrp	x2, _str144@page+8
	add	x2, x2, _str144@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1801
	cmp	x1, #0
	beq	L1793
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1793
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1793:
	adrp	x1, _str146@page+8
	add	x1, x1, _str146@pageoff+8
	mov	x19, x0
	bl	_web_base64_encode_hex_url
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1800
	adrp	x3, _str148@page+8
	add	x3, x3, _str148@pageoff+8
	adrp	x2, _str147@page+8
	add	x2, x2, _str147@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1799
	cmp	x1, #0
	beq	L1798
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1798
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1798:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, #0
	add	x2, sp, x1
	adrp	x1, _str149@page+8
	add	x1, x1, _str149@pageoff+8
	str	x1, [x2]
	mov	x19, x0
	adrp	x0, _fmt_str@page
	add	x0, x0, _fmt_str@pageoff
	bl	_printf
	mov	x0, x19
	mov	x1, #16
	add	sp, sp, x1
	bl	_nox_runtime_deinit
	mov	w0, #0
	b	L1823
L1799:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1800:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1801:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1802:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1803:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1804:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1805:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1806:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1807:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1808:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1809:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1810:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1811:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1812:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1813:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1814:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1815:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1816:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1817:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1818:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1819:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1820:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1821:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1823
L1822:
	bl	_nox_unhandled_exception
	mov	w0, #0
L1823:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
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
	bgt	L1833
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
L1827:
	cmp	x19, x21
	bge	L1832
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1830
	mov	x23, x0
	bl	_nox_str_release
	mov	x1, x24
	mov	x0, x23
	b	L1831
L1830:
	mov	x1, x24
L1831:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L1827
L1832:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L1833:
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
	bgt	L1843
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
L1837:
	cmp	x19, x21
	bge	L1842
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1840
	mov	x23, x0
	bl	_JsonValue_release
	mov	x1, x24
	mov	x0, x23
	b	L1841
L1840:
	mov	x1, x24
L1841:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L1837
L1842:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L1843:
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
	bne	L1851
	mov	x19, #0
L1846:
	cmp	x19, x20
	bge	L1850
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
	bne	L1851
	mov	x0, #1
	add	x19, x19, x0
	mov	x22, x2
	b	L1846
L1850:
	mov	w0, #1
	b	L1852
L1851:
	mov	w0, #0
L1852:
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
	bne	L1862
	mov	x19, #0
L1855:
	cmp	x19, x20
	bge	L1861
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
	bne	L1858
	mov	x21, x0
	bl	_JsonValue_eq
	mov	x2, x23
	mov	x1, x22
	mov	w3, w0
	mov	x0, x21
	cmp	w3, #0
	beq	L1862
	b	L1860
L1858:
	mov	x2, x23
	mov	x1, x22
	and	w3, w3, w4
	cmp	w3, #0
	beq	L1862
L1860:
	mov	x3, #1
	add	x19, x19, x3
	b	L1855
L1861:
	mov	w0, #1
	b	L1863
L1862:
	mov	w0, #0
L1863:
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
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str1:
	.quad 1073741824
	.ascii "&"
	.byte 0
/* end data */

.data
.balign 8
_str2:
	.quad 1073741824
	.ascii "&amp;"
	.byte 0
/* end data */

.data
.balign 8
_str3:
	.quad 1073741824
	.ascii "<"
	.byte 0
/* end data */

.data
.balign 8
_str4:
	.quad 1073741824
	.ascii "&lt;"
	.byte 0
/* end data */

.data
.balign 8
_str5:
	.quad 1073741824
	.ascii ">"
	.byte 0
/* end data */

.data
.balign 8
_str6:
	.quad 1073741824
	.ascii "&gt;"
	.byte 0
/* end data */

.data
.balign 8
_str7:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str8:
	.quad 1073741824
	.ascii "&quot;"
	.byte 0
/* end data */

.data
.balign 8
_str9:
	.quad 1073741824
	.ascii "  <testcase name=\""
	.byte 0
/* end data */

.data
.balign 8
_str10:
	.quad 1073741824
	.ascii "\"/>\n"
	.byte 0
/* end data */

.data
.balign 8
_str11:
	.quad 1073741824
	.ascii "  <testcase name=\""
	.byte 0
/* end data */

.data
.balign 8
_str12:
	.quad 1073741824
	.ascii "\">\n    <failure message=\""
	.byte 0
/* end data */

.data
.balign 8
_str13:
	.quad 1073741824
	.ascii "&"
	.byte 0
/* end data */

.data
.balign 8
_str14:
	.quad 1073741824
	.ascii "&amp;"
	.byte 0
/* end data */

.data
.balign 8
_str15:
	.quad 1073741824
	.ascii "<"
	.byte 0
/* end data */

.data
.balign 8
_str16:
	.quad 1073741824
	.ascii "&lt;"
	.byte 0
/* end data */

.data
.balign 8
_str17:
	.quad 1073741824
	.ascii ">"
	.byte 0
/* end data */

.data
.balign 8
_str18:
	.quad 1073741824
	.ascii "&gt;"
	.byte 0
/* end data */

.data
.balign 8
_str19:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str20:
	.quad 1073741824
	.ascii "&quot;"
	.byte 0
/* end data */

.data
.balign 8
_str21:
	.quad 1073741824
	.ascii "\"/>\n  </testcase>\n"
	.byte 0
/* end data */

.data
.balign 8
_str22:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str23:
	.quad 1073741824
	.ascii ": beklenen "
	.byte 0
/* end data */

.data
.balign 8
_str24:
	.quad 1073741824
	.ascii ", alinan "
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
	.ascii ": beklenen \""
	.byte 0
/* end data */

.data
.balign 8
_str27:
	.quad 1073741824
	.ascii "\", alinan \""
	.byte 0
/* end data */

.data
.balign 8
_str28:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str29:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str30:
	.quad 1073741824
	.ascii ": beklenen "
	.byte 0
/* end data */

.data
.balign 8
_str31:
	.quad 1073741824
	.ascii ", alinan "
	.byte 0
/* end data */

.data
.balign 8
_str32:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str33:
	.quad 1073741824
	.ascii ": kosul False"
	.byte 0
/* end data */

.data
.balign 8
_str34:
	.quad 1073741824
	.ascii "dosya okunamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str35:
	.quad 1073741824
	.ascii "dosya yazilamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str36:
	.quad 1073741824
	.ascii "dosyaya eklenemedi: "
	.byte 0
/* end data */

.data
.balign 8
_str37:
	.quad 1073741824
	.ascii "meta veri okunamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str38:
	.quad 1073741824
	.ascii "dizin okunamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str39:
	.quad 1073741824
	.ascii "kopyalanamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str40:
	.quad 1073741824
	.ascii " -> "
	.byte 0
/* end data */

.data
.balign 8
_str41:
	.quad 1073741824
	.ascii "yeniden adlandirilamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str42:
	.quad 1073741824
	.ascii " -> "
	.byte 0
/* end data */

.data
.balign 8
_str43:
	.quad 1073741824
	.ascii "silinemedi: "
	.byte 0
/* end data */

.data
.balign 8
_str44:
	.quad 1073741824
	.ascii "dizin olusturulamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str45:
	.quad 1073741824
	.ascii ": beklenen "
	.byte 0
/* end data */

.data
.balign 8
_str46:
	.quad 1073741824
	.ascii ", alinan "
	.byte 0
/* end data */

.data
.balign 8
_str47:
	.quad 1073741824
	.ascii ": beklenen \""
	.byte 0
/* end data */

.data
.balign 8
_str48:
	.quad 1073741824
	.ascii "\", alinan \""
	.byte 0
/* end data */

.data
.balign 8
_str49:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str50:
	.quad 1073741824
	.ascii ": beklenen "
	.byte 0
/* end data */

.data
.balign 8
_str51:
	.quad 1073741824
	.ascii ", alinan "
	.byte 0
/* end data */

.data
.balign 8
_str52:
	.quad 1073741824
	.ascii "&"
	.byte 0
/* end data */

.data
.balign 8
_str53:
	.quad 1073741824
	.ascii "&amp;"
	.byte 0
/* end data */

.data
.balign 8
_str54:
	.quad 1073741824
	.ascii "<"
	.byte 0
/* end data */

.data
.balign 8
_str55:
	.quad 1073741824
	.ascii "&lt;"
	.byte 0
/* end data */

.data
.balign 8
_str56:
	.quad 1073741824
	.ascii ">"
	.byte 0
/* end data */

.data
.balign 8
_str57:
	.quad 1073741824
	.ascii "&gt;"
	.byte 0
/* end data */

.data
.balign 8
_str58:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str59:
	.quad 1073741824
	.ascii "&quot;"
	.byte 0
/* end data */

.data
.balign 8
_str60:
	.quad 1073741824
	.ascii "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<testsuite name=\""
	.byte 0
/* end data */

.data
.balign 8
_str61:
	.quad 1073741824
	.ascii "&"
	.byte 0
/* end data */

.data
.balign 8
_str62:
	.quad 1073741824
	.ascii "&amp;"
	.byte 0
/* end data */

.data
.balign 8
_str63:
	.quad 1073741824
	.ascii "<"
	.byte 0
/* end data */

.data
.balign 8
_str64:
	.quad 1073741824
	.ascii "&lt;"
	.byte 0
/* end data */

.data
.balign 8
_str65:
	.quad 1073741824
	.ascii ">"
	.byte 0
/* end data */

.data
.balign 8
_str66:
	.quad 1073741824
	.ascii "&gt;"
	.byte 0
/* end data */

.data
.balign 8
_str67:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str68:
	.quad 1073741824
	.ascii "&quot;"
	.byte 0
/* end data */

.data
.balign 8
_str69:
	.quad 1073741824
	.ascii "\" tests=\""
	.byte 0
/* end data */

.data
.balign 8
_str70:
	.quad 1073741824
	.ascii "\" failures=\""
	.byte 0
/* end data */

.data
.balign 8
_str71:
	.quad 1073741824
	.ascii "\">\n"
	.byte 0
/* end data */

.data
.balign 8
_str72:
	.quad 1073741824
	.ascii "</testsuite>\n"
	.byte 0
/* end data */

.data
.balign 8
_str73:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.byte 0
/* end data */

.data
.balign 8
_str74:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.quad 1073741824
	.ascii " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
	.byte 0
/* end data */

.data
.balign 8
_str76:
	.quad 1073741824
	.ascii "gecersiz base64 indeksi"
	.byte 0
/* end data */

.data
.balign 8
_str77:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str78:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str79:
	.quad 1073741824
	.ascii "gecersiz base64 karakteri"
	.byte 0
/* end data */

.data
.balign 8
_str80:
	.quad 1073741824
	.ascii "decode yalnizca ASCII (0..127) destekler"
	.byte 0
/* end data */

.data
.balign 8
_str81:
	.quad 1073741824
	.ascii "\t"
	.byte 0
/* end data */

.data
.balign 8
_str82:
	.quad 1073741824
	.ascii "\n"
	.byte 0
/* end data */

.data
.balign 8
_str83:
	.quad 1073741824
	.ascii "decode kontrol karakteri desteklenmiyor: "
	.byte 0
/* end data */

.data
.balign 8
_str84:
	.quad 1073741824
	.ascii "decode DEL desteklenmiyor"
	.byte 0
/* end data */

.data
.balign 8
_str85:
	.quad 1073741824
	.ascii " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
	.byte 0
/* end data */

.data
.balign 8
_str86:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str87:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str88:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str89:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str90:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str91:
	.quad 1073741824
	.ascii "=="
	.byte 0
/* end data */

.data
.balign 8
_str92:
	.quad 1073741824
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str93:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.byte 0
/* end data */

.data
.balign 8
_str94:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str95:
	.quad 1073741824
	.ascii "gecersiz hex karakteri"
	.byte 0
/* end data */

.data
.balign 8
_str96:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str97:
	.quad 1073741824
	.ascii "hex uzunlugu cift olmali"
	.byte 0
/* end data */

.data
.balign 8
_str98:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str99:
	.quad 1073741824
	.ascii "gecersiz hex kalani"
	.byte 0
/* end data */

.data
.balign 8
_str100:
	.quad 1073741824
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str101:
	.quad 1073741824
	.ascii "gecersiz base64 uzunlugu"
	.byte 0
/* end data */

.data
.balign 8
_str102:
	.quad 1073741824
	.ascii "AA"
	.byte 0
/* end data */

.data
.balign 8
_str103:
	.quad 1073741824
	.ascii "A"
	.byte 0
/* end data */

.data
.balign 8
_str104:
	.quad 1073741824
	.ascii "gecersiz base64 uzunlugu"
	.byte 0
/* end data */

.data
.balign 8
_str105:
	.quad 1073741824
	.ascii "gecersiz base64 padding"
	.byte 0
/* end data */

.data
.balign 8
_str106:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str107:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str108:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str109:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str110:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str111:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.byte 0
/* end data */

.data
.balign 8
_str112:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str113:
	.quad 1073741824
	.ascii "hello"
	.byte 0
/* end data */

.data
.balign 8
_str114:
	.quad 1073741824
	.ascii "aGVsbG8="
	.byte 0
/* end data */

.data
.balign 8
_str115:
	.quad 1073741824
	.ascii "encode hello"
	.byte 0
/* end data */

.data
.balign 8
_str116:
	.quad 1073741824
	.ascii "aGVsbG8="
	.byte 0
/* end data */

.data
.balign 8
_str117:
	.quad 1073741824
	.ascii "hello"
	.byte 0
/* end data */

.data
.balign 8
_str118:
	.quad 1073741824
	.ascii "decode hello"
	.byte 0
/* end data */

.data
.balign 8
_str119:
	.quad 1073741824
	.ascii "hello"
	.byte 0
/* end data */

.data
.balign 8
_str120:
	.quad 1073741824
	.ascii "aGVsbG8"
	.byte 0
/* end data */

.data
.balign 8
_str121:
	.quad 1073741824
	.ascii "encode_url hello"
	.byte 0
/* end data */

.data
.balign 8
_str122:
	.quad 1073741824
	.ascii "aGVsbG8"
	.byte 0
/* end data */

.data
.balign 8
_str123:
	.quad 1073741824
	.ascii "hello"
	.byte 0
/* end data */

.data
.balign 8
_str124:
	.quad 1073741824
	.ascii "decode_url hello"
	.byte 0
/* end data */

.data
.balign 8
_str125:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str126:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str127:
	.quad 1073741824
	.ascii "encode empty"
	.byte 0
/* end data */

.data
.balign 8
_str128:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str129:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str130:
	.quad 1073741824
	.ascii "decode empty"
	.byte 0
/* end data */

.data
.balign 8
_str131:
	.quad 1073741824
	.ascii "f"
	.byte 0
/* end data */

.data
.balign 8
_str132:
	.quad 1073741824
	.ascii "Zg=="
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.quad 1073741824
	.ascii "encode f"
	.byte 0
/* end data */

.data
.balign 8
_str134:
	.quad 1073741824
	.ascii "fo"
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.quad 1073741824
	.ascii "Zm8="
	.byte 0
/* end data */

.data
.balign 8
_str136:
	.quad 1073741824
	.ascii "encode fo"
	.byte 0
/* end data */

.data
.balign 8
_str137:
	.quad 1073741824
	.ascii "foo"
	.byte 0
/* end data */

.data
.balign 8
_str138:
	.quad 1073741824
	.ascii "Zm9v"
	.byte 0
/* end data */

.data
.balign 8
_str139:
	.quad 1073741824
	.ascii "encode foo"
	.byte 0
/* end data */

.data
.balign 8
_str140:
	.quad 1073741824
	.ascii "{}"
	.byte 0
/* end data */

.data
.balign 8
_str141:
	.quad 1073741824
	.ascii "e30"
	.byte 0
/* end data */

.data
.balign 8
_str142:
	.quad 1073741824
	.ascii "encode_url empty object"
	.byte 0
/* end data */

.data
.balign 8
_str143:
	.quad 1073741824
	.ascii "e30"
	.byte 0
/* end data */

.data
.balign 8
_str144:
	.quad 1073741824
	.ascii "{}"
	.byte 0
/* end data */

.data
.balign 8
_str145:
	.quad 1073741824
	.ascii "decode_url empty object"
	.byte 0
/* end data */

.data
.balign 8
_str146:
	.quad 1073741824
	.ascii "4d616e"
	.byte 0
/* end data */

.data
.balign 8
_str147:
	.quad 1073741824
	.ascii "TWFu"
	.byte 0
/* end data */

.data
.balign 8
_str148:
	.quad 1073741824
	.ascii "encode_hex_url Man"
	.byte 0
/* end data */

.data
.balign 8
_str149:
	.quad 1073741824
	.ascii "base64_test ok"
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

