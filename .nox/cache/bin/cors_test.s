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
.globl _nox_http_HttpError___init__
_nox_http_HttpError___init__:
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
/* end function nox_http_HttpError___init__ */

.text
.balign 4
.globl _nox_http_HttpError_release
_nox_http_HttpError_release:
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
/* end function nox_http_HttpError_release */

.text
.balign 4
.globl _nox_http_HttpError_eq
_nox_http_HttpError_eq:
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
/* end function nox_http_HttpError_eq */

.text
.balign 4
.globl _nox_http_HttpError_trace
_nox_http_HttpError_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_http_HttpError_trace */

.text
.balign 4
.globl _nox_http_HttpError_gc_free
_nox_http_HttpError_gc_free:
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
/* end function nox_http_HttpError_gc_free */

.text
.balign 4
.globl _nox_http_HttpResponse___init__
_nox_http_HttpResponse___init__:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x5, #8
	add	x5, x1, x5
	str	x2, [x5]
	cmp	x3, #0
	beq	L479
	mov	x2, #8
	sub	x5, x3, x2
	ldr	x2, [x5]
	mov	x6, #1
	add	x2, x2, x6
	str	x2, [x5]
L479:
	mov	x2, #16
	add	x2, x1, x2
	mov	x20, x1
	ldr	x1, [x2]
	str	x3, [x2]
	cmp	x1, #0
	beq	L483
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x21, x4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L482
	mov	x4, x21
	mov	x1, x20
	b	L484
L482:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x4, x21
	mov	x1, x20
	mov	x0, x19
	b	L484
L483:
	mov	x1, x20
L484:
	cmp	x4, #0
	beq	L486
	mov	x2, #8
	sub	x3, x4, x2
	ldr	x2, [x3]
	mov	x5, #1
	add	x2, x2, x5
	str	x2, [x3]
L486:
	mov	x2, #24
	add	x2, x1, x2
	ldr	x1, [x2]
	str	x4, [x2]
	cmp	x1, #0
	beq	L488
	mov	w3, #1
	mov	w2, #1
	bl	_nox_dict_release
L488:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_http_HttpResponse___init__ */

.text
.balign 4
.globl _nox_http_HttpResponse_release
_nox_http_HttpResponse_release:
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
	bgt	L499
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L494
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L493
	mov	x1, x20
	b	L495
L493:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L495
L494:
	mov	x1, x20
L495:
	mov	x20, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L497
	mov	w3, #1
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L498
L497:
	mov	x1, x20
L498:
	mov	x2, #32
	bl	_nox_rc_free_payload
L499:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_http_HttpResponse_release */

.text
.balign 4
.globl _nox_http_HttpResponse_eq
_nox_http_HttpResponse_eq:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x0, #8
	add	x0, x1, x0
	mov	x20, x2
	mov	x2, #8
	add	x2, x20, x2
	ldr	x0, [x0]
	ldr	x2, [x2]
	cmp	x0, x2
	bne	L507
	mov	x0, #16
	add	x0, x1, x0
	mov	x19, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	mov	x2, x20
	mov	x1, x19
	cmp	w0, #0
	bne	L507
	mov	x0, #24
	add	x0, x1, x0
	mov	x1, #24
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	cmp	x0, #0
	cset	w2, eq
	cmp	x1, #0
	cset	w3, eq
	orr	w4, w2, w3
	cmp	w4, #0
	bne	L504
	cmp	x0, x1
	bne	L507
	b	L506
L504:
	mov	w1, w3
	mov	w0, w2
	and	w0, w0, w1
	cmp	w0, #0
	beq	L507
L506:
	mov	w0, #1
	b	L508
L507:
	mov	w0, #0
L508:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_http_HttpResponse_eq */

.text
.balign 4
.globl _nox_http_HttpResponse_trace
_nox_http_HttpResponse_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_http_HttpResponse_trace */

.text
.balign 4
.globl _nox_http_HttpResponse_gc_free
_nox_http_HttpResponse_gc_free:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L515
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L514
	mov	x1, x20
	b	L516
L514:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L516
L515:
	mov	x1, x20
L516:
	mov	x20, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L518
	mov	w3, #1
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L519
L518:
	mov	x1, x20
L519:
	mov	x2, #32
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_http_HttpResponse_gc_free */

.text
.balign 4
.globl _nox_http_HttpRequest___init__
_nox_http_HttpRequest___init__:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	cmp	x2, #0
	beq	L523
	mov	x6, #8
	sub	x7, x2, x6
	ldr	x6, [x7]
	mov	x8, #1
	add	x6, x6, x8
	str	x6, [x7]
L523:
	mov	x23, x5
	mov	x5, #8
	add	x5, x1, x5
	mov	x20, x1
	ldr	x1, [x5]
	str	x2, [x5]
	cmp	x1, #0
	beq	L527
	mov	x2, #8
	mov	x21, x3
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x22, x4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L526
	mov	x5, x23
	mov	x4, x22
	mov	x3, x21
	mov	x1, x20
	b	L528
L526:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x5, x23
	mov	x4, x22
	mov	x3, x21
	mov	x1, x20
	mov	x0, x19
	b	L528
L527:
	mov	x5, x23
	mov	x1, x20
L528:
	cmp	x3, #0
	beq	L530
	mov	x2, #8
	mov	x22, x5
	sub	x5, x3, x2
	ldr	x2, [x5]
	mov	x6, #1
	add	x2, x2, x6
	str	x2, [x5]
	b	L531
L530:
	mov	x22, x5
L531:
	mov	x2, #16
	add	x2, x1, x2
	mov	x20, x1
	ldr	x1, [x2]
	str	x3, [x2]
	cmp	x1, #0
	beq	L535
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x21, x4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L534
	mov	x5, x22
	mov	x4, x21
	mov	x1, x20
	b	L536
L534:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x5, x22
	mov	x4, x21
	mov	x1, x20
	mov	x0, x19
	b	L536
L535:
	mov	x5, x22
	mov	x1, x20
L536:
	cmp	x4, #0
	beq	L538
	mov	x2, #8
	sub	x3, x4, x2
	ldr	x2, [x3]
	mov	x21, x5
	mov	x5, #1
	add	x2, x2, x5
	str	x2, [x3]
	b	L539
L538:
	mov	x21, x5
L539:
	mov	x2, #24
	add	x2, x1, x2
	mov	x20, x1
	ldr	x1, [x2]
	str	x4, [x2]
	cmp	x1, #0
	beq	L543
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L542
	mov	x5, x21
	mov	x1, x20
	b	L544
L542:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x5, x21
	mov	x1, x20
	mov	x0, x19
	b	L544
L543:
	mov	x5, x21
	mov	x1, x20
L544:
	cmp	x5, #0
	beq	L546
	mov	x2, #8
	sub	x3, x5, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L546:
	mov	x2, #32
	add	x2, x1, x2
	ldr	x1, [x2]
	str	x5, [x2]
	cmp	x1, #0
	beq	L548
	mov	w3, #1
	mov	w2, #1
	bl	_nox_dict_release
L548:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function nox_http_HttpRequest___init__ */

.text
.balign 4
.globl _nox_http_HttpRequest_release
_nox_http_HttpRequest_release:
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
	bgt	L569
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L554
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L553
	mov	x1, x20
	b	L555
L553:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L555
L554:
	mov	x1, x20
L555:
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L559
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L558
	mov	x1, x20
	b	L560
L558:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L560
L559:
	mov	x1, x20
L560:
	mov	x20, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L564
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L563
	mov	x1, x20
	b	L565
L563:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L565
L564:
	mov	x1, x20
L565:
	mov	x20, x1
	mov	x1, #32
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L567
	mov	w3, #1
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L568
L567:
	mov	x1, x20
L568:
	mov	x2, #40
	bl	_nox_rc_free_payload
L569:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_http_HttpRequest_release */

.text
.balign 4
.globl _nox_http_HttpRequest_eq
_nox_http_HttpRequest_eq:
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
	mov	x1, x19
	cmp	w0, #0
	bne	L578
	mov	x0, #16
	add	x0, x1, x0
	mov	x19, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	mov	x1, x19
	cmp	w0, #0
	bne	L578
	mov	x0, #24
	add	x0, x1, x0
	mov	x19, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	mov	x2, x20
	mov	x1, x19
	cmp	w0, #0
	bne	L578
	mov	x0, #32
	add	x0, x1, x0
	mov	x1, #32
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	cmp	x0, #0
	cset	w2, eq
	cmp	x1, #0
	cset	w3, eq
	orr	w4, w2, w3
	cmp	w4, #0
	bne	L575
	cmp	x0, x1
	bne	L578
	b	L577
L575:
	mov	w1, w3
	mov	w0, w2
	and	w0, w0, w1
	cmp	w0, #0
	beq	L578
L577:
	mov	w0, #1
	b	L579
L578:
	mov	w0, #0
L579:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_http_HttpRequest_eq */

.text
.balign 4
.globl _nox_http_HttpRequest_trace
_nox_http_HttpRequest_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_http_HttpRequest_trace */

.text
.balign 4
.globl _nox_http_HttpRequest_gc_free
_nox_http_HttpRequest_gc_free:
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
	beq	L586
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L585
	mov	x1, x20
	b	L587
L585:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L587
L586:
	mov	x1, x20
L587:
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L591
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L590
	mov	x1, x20
	b	L592
L590:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L592
L591:
	mov	x1, x20
L592:
	mov	x20, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L596
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L595
	mov	x1, x20
	b	L597
L595:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L597
L596:
	mov	x1, x20
L597:
	mov	x20, x1
	mov	x1, #32
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L599
	mov	w3, #1
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L600
L599:
	mov	x1, x20
L600:
	mov	x2, #40
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_http_HttpRequest_gc_free */

.text
.balign 4
.globl _nox_router_Context___init__
_nox_router_Context___init__:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	cmp	x2, #0
	beq	L604
	mov	x4, #8
	sub	x5, x2, x4
	ldr	x4, [x5]
	mov	x6, #1
	add	x4, x4, x6
	str	x4, [x5]
L604:
	mov	x21, x3
	mov	x3, #8
	add	x3, x1, x3
	mov	x20, x1
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L606
	mov	x19, x0
	bl	_nox_http_HttpRequest_release
	mov	x3, x21
	mov	x1, x20
	mov	x0, x19
	b	L607
L606:
	mov	x3, x21
	mov	x1, x20
L607:
	cmp	x3, #0
	beq	L609
	mov	x2, #8
	sub	x4, x3, x2
	ldr	x2, [x4]
	mov	x5, #1
	add	x2, x2, x5
	str	x2, [x4]
L609:
	mov	x2, #16
	add	x2, x1, x2
	ldr	x1, [x2]
	str	x3, [x2]
	cmp	x1, #0
	beq	L611
	mov	w3, #1
	mov	w2, #1
	bl	_nox_dict_release
L611:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_router_Context___init__ */

.text
.balign 4
.globl _nox_router_Context_param
_nox_router_Context_param:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x21, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x21
	mov	x20, x1
	mov	w1, #1
	mov	x19, x0
	mov	x0, x20
	bl	_nox_dict_contains
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L615
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x3, x21
	mov	x1, x0
	mov	x0, x19
	mov	x2, #3
	str	x2, [x1]
	mov	x2, #8
	mov	x21, x3
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str34@page+8
	add	x2, x2, _str34@pageoff+8
	mov	x22, x1
	mov	x19, x0
	bl	_KeyError___init__
	mov	x1, x22
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x3, x21
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	beq	L616
	mov	x0, #0
	b	L618
L615:
	mov	x1, x20
	mov	x3, x21
L616:
	mov	w2, #1
	bl	_nox_dict_get
	cmp	x0, #0
	beq	L618
	mov	x1, #8
	sub	x2, x0, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
L618:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_router_Context_param */

.text
.balign 4
.globl _nox_router_Context_release
_nox_router_Context_release:
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
	ble	L621
	bl	_nox_cycle_possible_root
	b	L628
L621:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_cycle_forget
	mov	x1, x20
	mov	x0, x19
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L623
	mov	x19, x0
	bl	_nox_http_HttpRequest_release
	mov	x1, x20
	mov	x0, x19
	b	L624
L623:
	mov	x1, x20
L624:
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L626
	mov	w3, #1
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L627
L626:
	mov	x1, x20
L627:
	mov	x2, #24
	bl	_nox_rc_free_payload
L628:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Context_release */

.text
.balign 4
.globl _nox_router_Context_eq
_nox_router_Context_eq:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x1
	mov	x1, #8
	add	x1, x19, x1
	mov	x20, x2
	mov	x2, #8
	add	x2, x20, x2
	ldr	x1, [x1]
	ldr	x2, [x2]
	cmp	x1, #0
	mov	x4, x0
	cset	w0, eq
	cmp	x2, #0
	cset	w3, eq
	orr	w5, w0, w3
	cmp	w5, #0
	bne	L632
	mov	x0, x4
	bl	_nox_http_HttpRequest_eq
	mov	x2, x20
	mov	x1, x19
	cmp	w0, #0
	beq	L638
	b	L634
L632:
	mov	x2, x20
	mov	x1, x19
	and	w0, w0, w3
	cmp	w0, #0
	beq	L638
L634:
	mov	x0, #16
	add	x0, x1, x0
	mov	x1, #16
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	cmp	x0, #0
	cset	w2, eq
	cmp	x1, #0
	cset	w3, eq
	orr	w4, w2, w3
	cmp	w4, #0
	bne	L636
	cmp	x0, x1
	bne	L638
	b	L639
L636:
	mov	w1, w3
	mov	w0, w2
	and	w0, w0, w1
	cmp	w0, #0
	bne	L639
L638:
	mov	w0, #0
	b	L640
L639:
	mov	w0, #1
L640:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Context_eq */

.text
.balign 4
.globl _nox_router_Context_trace
_nox_router_Context_trace:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	mov	x1, #16
	bl	_nox_alloc
	mov	x1, x19
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Context_trace */

.text
.balign 4
.globl _nox_router_Context_gc_free
_nox_router_Context_gc_free:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L645
	mov	w3, #1
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L646
L645:
	mov	x1, x20
L646:
	mov	x2, #24
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Context_gc_free */

.text
.balign 4
.globl _nox_router_Route___init__
_nox_router_Route___init__:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	cmp	x2, #0
	beq	L650
	mov	x5, #8
	sub	x6, x2, x5
	ldr	x5, [x6]
	mov	x7, #1
	add	x5, x5, x7
	str	x5, [x6]
L650:
	mov	x5, #8
	add	x5, x1, x5
	mov	x20, x1
	ldr	x1, [x5]
	str	x2, [x5]
	cmp	x1, #0
	beq	L654
	mov	x2, #8
	mov	x21, x3
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x22, x4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L653
	mov	x4, x22
	mov	x3, x21
	mov	x1, x20
	b	L655
L653:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x4, x22
	mov	x3, x21
	mov	x1, x20
	mov	x0, x19
	b	L655
L654:
	mov	x1, x20
L655:
	cmp	x3, #0
	beq	L657
	mov	x2, #8
	sub	x5, x3, x2
	ldr	x2, [x5]
	mov	x6, #1
	add	x2, x2, x6
	str	x2, [x5]
L657:
	mov	x2, #16
	add	x2, x1, x2
	mov	x20, x1
	ldr	x1, [x2]
	str	x3, [x2]
	cmp	x1, #0
	beq	L661
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x21, x4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L660
	mov	x4, x21
	mov	x1, x20
	b	L662
L660:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x4, x21
	mov	x1, x20
	mov	x0, x19
	b	L662
L661:
	mov	x1, x20
L662:
	cmp	x4, #0
	beq	L664
	mov	x2, #8
	sub	x3, x4, x2
	ldr	x2, [x3]
	mov	x5, #1
	add	x2, x2, x5
	str	x2, [x3]
L664:
	mov	x2, #24
	add	x2, x1, x2
	ldr	x1, [x2]
	str	x4, [x2]
	cmp	x1, #0
	beq	L666
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	blr	x2
L666:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_router_Route___init__ */

.text
.balign 4
.globl _nox_router_Route_release
_nox_router_Route_release:
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
	bgt	L682
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L672
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L671
	mov	x1, x20
	b	L673
L671:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L673
L672:
	mov	x1, x20
L673:
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L677
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L676
	mov	x1, x20
	b	L678
L676:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L678
L677:
	mov	x1, x20
L678:
	mov	x20, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L680
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x19, x0
	blr	x2
	mov	x1, x20
	mov	x0, x19
	b	L681
L680:
	mov	x1, x20
L681:
	mov	x2, #32
	bl	_nox_rc_free_payload
L682:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Route_release */

.text
.balign 4
.globl _nox_router_Route_eq
_nox_router_Route_eq:
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
	mov	x1, x19
	cmp	w0, #0
	bne	L690
	mov	x0, #16
	add	x0, x1, x0
	mov	x19, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	mov	x2, x20
	mov	x1, x19
	cmp	w0, #0
	bne	L690
	mov	x0, #24
	add	x0, x1, x0
	mov	x1, #24
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	cmp	x0, #0
	cset	w2, eq
	cmp	x1, #0
	cset	w3, eq
	orr	w4, w2, w3
	cmp	w4, #0
	bne	L687
	cmp	x0, x1
	bne	L690
	b	L689
L687:
	mov	w1, w3
	mov	w0, w2
	and	w0, w0, w1
	cmp	w0, #0
	beq	L690
L689:
	mov	w0, #1
	b	L691
L690:
	mov	w0, #0
L691:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Route_eq */

.text
.balign 4
.globl _nox_router_Route_trace
_nox_router_Route_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_router_Route_trace */

.text
.balign 4
.globl _nox_router_Route_gc_free
_nox_router_Route_gc_free:
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
	beq	L698
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L697
	mov	x1, x20
	b	L699
L697:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L699
L698:
	mov	x1, x20
L699:
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L703
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L702
	mov	x1, x20
	b	L704
L702:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L704
L703:
	mov	x1, x20
L704:
	mov	x20, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L706
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x19, x0
	blr	x2
	mov	x1, x20
	mov	x0, x19
	b	L707
L706:
	mov	x1, x20
L707:
	mov	x2, #32
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Route_gc_free */

.text
.balign 4
.globl _nox_router_Router___init__
_nox_router_Router___init__:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #0
	str	x3, [x2]
	mov	x3, #8
	add	x4, x2, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #8
	add	x3, x1, x3
	mov	x20, x1
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L711
	mov	x19, x0
	bl	_List_nox_router_Route_release
	mov	x1, x20
	mov	x0, x19
	b	L712
L711:
	mov	x1, x20
L712:
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #0
	str	x3, [x2]
	mov	x3, #8
	add	x4, x2, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #16
	add	x3, x1, x3
	mov	x20, x1
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L714
	mov	x19, x0
	bl	_List_closure_release
	mov	x1, x20
	mov	x0, x19
	b	L715
L714:
	mov	x1, x20
L715:
	mov	x20, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #0
	str	x3, [x2]
	mov	x3, #8
	add	x4, x2, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #24
	add	x3, x1, x3
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L717
	bl	_List_closure_release
L717:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Router___init__ */

.text
.balign 4
.globl _nox_router_Router_add
_nox_router_Router_add:
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
	mov	x19, x1
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L720
	mov	x22, x2
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x24, x4
	mov	x4, #1
	add	x2, x2, x4
	mov	x23, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	b	L721
L720:
	mov	x24, x4
	mov	x23, x3
	mov	x22, x2
L721:
	mov	x21, x1
	mov	x1, #32
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x4, x24
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x23, x0
	mov	x0, x20
	mov	x5, #13
	str	x5, [x23]
	mov	x5, #8
	add	x6, x23, x5
	mov	x5, #0
	str	x5, [x6]
	mov	x5, #16
	add	x6, x23, x5
	mov	x5, #0
	str	x5, [x6]
	mov	x5, #24
	add	x6, x23, x5
	mov	x5, #0
	str	x5, [x6]
	mov	x21, x1
	mov	x1, x23
	mov	x20, x0
	bl	_nox_router_Route___init__
	mov	x1, x21
	mov	x0, x20
	ldr	x20, [x1]
	mov	x2, #8
	add	x2, x1, x2
	ldr	x22, [x2]
	mov	x2, #8
	mul	x2, x20, x2
	mov	x3, #16
	add	x24, x2, x3
	mov	x2, #1
	add	x4, x20, x2
	str	x4, [x29, 16]
	cmp	x20, x22
	blt	L744
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x22, #0
	beq	L724
	mov	x2, #2
	mul	x25, x22, x2
	str	x25, [x3]
	b	L726
L724:
	mov	x2, #1
	str	x2, [x3]
	mov	x25, #1
L726:
	mov	x2, #8
	mul	x2, x25, x2
	mov	x3, #16
	add	x3, x2, x3
	mov	x2, x24
	mov	x26, x1
	mov	x21, x0
	bl	_nox_list_grow
	mov	x1, x26
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	ldr	x4, [x29, 16]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	mov	x2, #0
	str	x2, [x3]
	mov	x17, x1
	mov	x1, x19
	mov	x19, x17
	mov	x2, #0
L728:
	cmp	x2, x20
	bge	L732
	mov	x5, #8
	mul	x5, x2, x5
	mov	x6, #16
	add	x5, x5, x6
	add	x5, x5, x21
	ldr	x5, [x5]
	cmp	x5, #0
	beq	L731
	mov	x6, #8
	sub	x6, x5, x6
	ldr	x5, [x6]
	mov	x7, #1
	add	x5, x5, x7
	str	x5, [x6]
L731:
	mov	x5, #1
	add	x2, x2, x5
	str	x2, [x3]
	b	L728
L732:
	mov	x17, x19
	mov	x19, x1
	mov	x1, x17
	add	x2, x24, x21
	str	x23, [x2]
	str	x4, [x21]
	mov	x2, #8
	add	x2, x21, x2
	str	x25, [x2]
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L735
	mov	x20, x19
	b	L743
L735:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	mov	x2, #0
	str	x2, [x3]
	mov	x17, x1
	mov	x1, x19
	mov	x19, x17
	mov	x2, #0
L737:
	cmp	x2, x20
	bge	L741
	mov	x4, #8
	mul	x4, x2, x4
	mov	x5, #16
	add	x4, x4, x5
	add	x4, x19, x4
	ldr	x4, [x4]
	cmp	x4, #0
	beq	L740
	mov	x5, #8
	sub	x5, x4, x5
	ldr	x4, [x5]
	mov	x6, #1
	sub	x4, x4, x6
	str	x4, [x5]
L740:
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
	b	L737
L741:
	mov	x20, x1
	mov	x1, x19
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	mov	x19, x0
	bl	_nox_rc_free_payload
	mov	x0, x19
L743:
	mov	x1, x21
	b	L747
L744:
	mov	x20, x19
	mov	x19, x1
	add	x1, x1, x24
	str	x23, [x1]
	str	x4, [x19]
	mov	x1, x19
L747:
	mov	x19, x20
	cmp	x1, #0
	beq	L749
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L749:
	mov	x20, x1
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #8
	add	x2, x19, x2
	str	x20, [x2]
	cmp	x1, #0
	beq	L751
	mov	x19, x0
	bl	_List_nox_router_Route_release
	mov	x1, x20
	mov	x0, x19
	b	L752
L751:
	mov	x1, x20
L752:
	cmp	x1, #0
	beq	L754
	bl	_List_nox_router_Route_release
L754:
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	mov sp, x29
	ldp	x29, x30, [sp], 96
	ret
/* end function nox_router_Router_add */

.text
.balign 4
.globl _nox_router_Router_get
_nox_router_Router_get:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x4, x3
	mov	x3, x2
	adrp	x2, _str35@page+8
	add	x2, x2, _str35@pageoff+8
	mov	x19, x0
	bl	_nox_router_Router_add
	mov	x0, x19
	bl	_nox_exception_pending
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Router_get */

.text
.balign 4
.globl _nox_router_Router_post
_nox_router_Router_post:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x4, x3
	mov	x3, x2
	adrp	x2, _str36@page+8
	add	x2, x2, _str36@pageoff+8
	mov	x19, x0
	bl	_nox_router_Router_add
	mov	x0, x19
	bl	_nox_exception_pending
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Router_post */

.text
.balign 4
.globl _nox_router_Router_put
_nox_router_Router_put:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x4, x3
	mov	x3, x2
	adrp	x2, _str37@page+8
	add	x2, x2, _str37@pageoff+8
	mov	x19, x0
	bl	_nox_router_Router_add
	mov	x0, x19
	bl	_nox_exception_pending
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Router_put */

.text
.balign 4
.globl _nox_router_Router_delete
_nox_router_Router_delete:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x4, x3
	mov	x3, x2
	adrp	x2, _str38@page+8
	add	x2, x2, _str38@pageoff+8
	mov	x19, x0
	bl	_nox_router_Router_add
	mov	x0, x19
	bl	_nox_exception_pending
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Router_delete */

.text
.balign 4
.globl _nox_router_Router_use_before
_nox_router_Router_use_before:
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
	mov	x19, x1
	mov	x1, #16
	add	x1, x19, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L765
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	add	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
L765:
	cmp	x2, #0
	beq	L767
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L767:
	ldr	x20, [x1]
	mov	x3, #8
	add	x3, x1, x3
	ldr	x22, [x3]
	mov	x3, #8
	mul	x3, x20, x3
	mov	x4, #16
	add	x23, x3, x4
	mov	x3, #1
	add	x5, x20, x3
	str	x5, [x29, 16]
	cmp	x20, x22
	blt	L790
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x22, #0
	beq	L770
	mov	x3, #2
	mul	x24, x22, x3
	str	x24, [x4]
	b	L772
L770:
	mov	x3, #1
	str	x3, [x4]
	mov	x24, #1
L772:
	mov	x3, #8
	mul	x3, x24, x3
	mov	x4, #16
	add	x3, x3, x4
	mov	x26, x2
	mov	x2, x23
	mov	x25, x1
	mov	x21, x0
	bl	_nox_list_grow
	mov	x2, x26
	mov	x1, x25
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	ldr	x5, [x29, 16]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	mov	x3, #0
	str	x3, [x4]
	mov	x17, x1
	mov	x1, x19
	mov	x19, x17
	mov	x3, #0
L774:
	cmp	x3, x20
	bge	L778
	mov	x6, #8
	mul	x6, x3, x6
	mov	x7, #16
	add	x6, x6, x7
	add	x6, x6, x21
	ldr	x6, [x6]
	cmp	x6, #0
	beq	L777
	mov	x7, #8
	sub	x7, x6, x7
	ldr	x6, [x7]
	mov	x8, #1
	add	x6, x6, x8
	str	x6, [x7]
L777:
	mov	x6, #1
	add	x3, x3, x6
	str	x3, [x4]
	b	L774
L778:
	mov	x17, x19
	mov	x19, x1
	mov	x1, x17
	add	x3, x23, x21
	str	x2, [x3]
	str	x5, [x21]
	mov	x2, #8
	add	x2, x21, x2
	str	x24, [x2]
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L781
	mov	x20, x19
	b	L789
L781:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	mov	x2, #0
	str	x2, [x3]
	mov	x17, x1
	mov	x1, x19
	mov	x19, x17
	mov	x2, #0
L783:
	cmp	x2, x20
	bge	L787
	mov	x4, #8
	mul	x4, x2, x4
	mov	x5, #16
	add	x4, x4, x5
	add	x4, x19, x4
	ldr	x4, [x4]
	cmp	x4, #0
	beq	L786
	mov	x5, #8
	sub	x5, x4, x5
	ldr	x4, [x5]
	mov	x6, #1
	sub	x4, x4, x6
	str	x4, [x5]
L786:
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
	b	L783
L787:
	mov	x20, x1
	mov	x1, x19
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	mov	x19, x0
	bl	_nox_rc_free_payload
	mov	x0, x19
L789:
	mov	x1, x21
	b	L793
L790:
	mov	x20, x19
	mov	x19, x1
	add	x1, x1, x23
	str	x2, [x1]
	str	x5, [x19]
	mov	x1, x19
L793:
	mov	x19, x20
	cmp	x1, #0
	beq	L795
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L795:
	mov	x20, x1
	mov	x1, #16
	add	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x2, x19, x2
	str	x20, [x2]
	cmp	x1, #0
	beq	L797
	mov	x19, x0
	bl	_List_closure_release
	mov	x1, x20
	mov	x0, x19
	b	L798
L797:
	mov	x1, x20
L798:
	cmp	x1, #0
	beq	L800
	bl	_List_closure_release
L800:
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	mov sp, x29
	ldp	x29, x30, [sp], 96
	ret
/* end function nox_router_Router_use_before */

.text
.balign 4
.globl _nox_router_Router_use_after
_nox_router_Router_use_after:
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
	mov	x19, x1
	mov	x1, #24
	add	x1, x19, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L803
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	add	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
L803:
	cmp	x2, #0
	beq	L805
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L805:
	ldr	x20, [x1]
	mov	x3, #8
	add	x3, x1, x3
	ldr	x22, [x3]
	mov	x3, #8
	mul	x3, x20, x3
	mov	x4, #16
	add	x23, x3, x4
	mov	x3, #1
	add	x5, x20, x3
	str	x5, [x29, 16]
	cmp	x20, x22
	blt	L828
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x22, #0
	beq	L808
	mov	x3, #2
	mul	x24, x22, x3
	str	x24, [x4]
	b	L810
L808:
	mov	x3, #1
	str	x3, [x4]
	mov	x24, #1
L810:
	mov	x3, #8
	mul	x3, x24, x3
	mov	x4, #16
	add	x3, x3, x4
	mov	x26, x2
	mov	x2, x23
	mov	x25, x1
	mov	x21, x0
	bl	_nox_list_grow
	mov	x2, x26
	mov	x1, x25
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	ldr	x5, [x29, 16]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	mov	x3, #0
	str	x3, [x4]
	mov	x17, x1
	mov	x1, x19
	mov	x19, x17
	mov	x3, #0
L812:
	cmp	x3, x20
	bge	L816
	mov	x6, #8
	mul	x6, x3, x6
	mov	x7, #16
	add	x6, x6, x7
	add	x6, x6, x21
	ldr	x6, [x6]
	cmp	x6, #0
	beq	L815
	mov	x7, #8
	sub	x7, x6, x7
	ldr	x6, [x7]
	mov	x8, #1
	add	x6, x6, x8
	str	x6, [x7]
L815:
	mov	x6, #1
	add	x3, x3, x6
	str	x3, [x4]
	b	L812
L816:
	mov	x17, x19
	mov	x19, x1
	mov	x1, x17
	add	x3, x23, x21
	str	x2, [x3]
	str	x5, [x21]
	mov	x2, #8
	add	x2, x21, x2
	str	x24, [x2]
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L819
	mov	x20, x19
	b	L827
L819:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	mov	x2, #0
	str	x2, [x3]
	mov	x17, x1
	mov	x1, x19
	mov	x19, x17
	mov	x2, #0
L821:
	cmp	x2, x20
	bge	L825
	mov	x4, #8
	mul	x4, x2, x4
	mov	x5, #16
	add	x4, x4, x5
	add	x4, x19, x4
	ldr	x4, [x4]
	cmp	x4, #0
	beq	L824
	mov	x5, #8
	sub	x5, x4, x5
	ldr	x4, [x5]
	mov	x6, #1
	sub	x4, x4, x6
	str	x4, [x5]
L824:
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
	b	L821
L825:
	mov	x20, x1
	mov	x1, x19
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	mov	x19, x0
	bl	_nox_rc_free_payload
	mov	x0, x19
L827:
	mov	x1, x21
	b	L831
L828:
	mov	x20, x19
	mov	x19, x1
	add	x1, x1, x23
	str	x2, [x1]
	str	x5, [x19]
	mov	x1, x19
L831:
	mov	x19, x20
	cmp	x1, #0
	beq	L833
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L833:
	mov	x20, x1
	mov	x1, #24
	add	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #24
	add	x2, x19, x2
	str	x20, [x2]
	cmp	x1, #0
	beq	L835
	mov	x19, x0
	bl	_List_closure_release
	mov	x1, x20
	mov	x0, x19
	b	L836
L835:
	mov	x1, x20
L836:
	cmp	x1, #0
	beq	L838
	bl	_List_closure_release
L838:
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	mov sp, x29
	ldp	x29, x30, [sp], 96
	ret
/* end function nox_router_Router_use_after */

.text
.balign 4
.globl _nox_router_Router_dispatch
_nox_router_Router_dispatch:
	hint	#34
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [x29, 152]
	str	x20, [x29, 144]
	str	x21, [x29, 136]
	str	x22, [x29, 128]
	str	x23, [x29, 120]
	str	x24, [x29, 112]
	str	x25, [x29, 104]
	str	x26, [x29, 96]
	mov	x20, x2
	mov	x19, x1
	str	x20, [x29, 64]
	str	x19, [x29, 72]
	mov	w1, #1
	mov	x21, x0
	bl	_nox_dict_new
	mov	x1, x0
	mov	x0, x21
	mov	x2, x20
	mov	x22, #0
	mov	x20, x1
	mov	x1, x19
	mov	w23, #0
	mov	x24, #0
	mov	x21, #0
	mov	x19, #0
L841:
	str	x22, [x29, 16]
	str	x20, [x29, 56]
	str	x21, [x29, 32]
	str	x19, [x29, 24]
	mov	x3, #8
	add	x3, x1, x3
	ldr	x25, [x3]
	str	x25, [x29, 80]
	ldr	x3, [x25]
	cmp	x24, x3
	cset	w3, lt
	mov	w4, #1
	eor	w4, w23, w4
	and	w3, w3, w4
	cmp	x20, #0
	cmp	x19, #0
	cmp	x21, #0
	cmp	w3, #0
	beq	L879
	ldr	x4, [x25]
	cmp	x24, #0
	cset	w3, lt
	cmp	x24, x4
	cset	w4, ge
	orr	w3, w3, w4
	cmp	x22, #0
	cmp	w3, #0
	bne	L844
	mov	x17, x19
	mov	x19, x25
	mov	x25, x17
	b	L845
L844:
	mov	x1, #16
	mov	x25, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x25
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str39@page+8
	add	x2, x2, _str39@pageoff+8
	mov	x26, x1
	mov	x25, x0
	bl	_IndexError___init__
	mov	x1, x26
	mov	x0, x25
	mov	x25, x19
	ldr	x19, [x29, 80]
	mov	x26, x0
	bl	_nox_raise
	mov	x0, x26
	mov	x26, x0
	bl	_nox_exception_pending
	mov	w3, w0
	mov	x0, x26
	ldr	x2, [x29, 64]
	ldr	x1, [x29, 72]
	cmp	w3, #0
	bne	L866
L845:
	mov	x3, #8
	mul	x3, x24, x3
	mov	x4, #16
	add	x3, x3, x4
	add	x3, x19, x3
	mov	x19, x21
	ldr	x21, [x3]
	cmp	x21, #0
	beq	L847
	mov	x3, #8
	sub	x3, x21, x3
	ldr	x3, [x3]
	mov	x4, #1
	add	x3, x3, x4
	mov	x4, #8
	sub	x4, x21, x4
	str	x3, [x4]
L847:
	cmp	x19, #0
	beq	L849
	mov	x26, x1
	mov	x1, x19
	mov	x19, x0
	bl	_nox_router_Route_release
	mov	x1, x26
	mov	x0, x19
	ldr	x2, [x29, 64]
L849:
	mov	x19, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x26, x1
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	bl	_strcmp
	mov	x1, x26
	mov	w3, w0
	mov	x0, x19
	ldr	x2, [x29, 64]
	cmp	w3, #0
	beq	L851
	mov	x17, x22
	mov	x22, x23
	mov	x23, x17
	mov	x19, x25
	b	L864
L851:
	mov	x26, x1
	mov	x1, #16
	add	x1, x21, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x2, [x2]
	mov	x19, x0
	bl	_nox_router__match_path
	mov	x1, x26
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	ldr	x2, [x29, 64]
	cmp	x25, #0
	beq	L853
	mov	w3, #1
	mov	w2, #1
	mov	x26, x1
	mov	x1, x25
	mov	x25, x0
	bl	_nox_dict_release
	mov	x1, x26
	mov	x0, x25
	ldr	x2, [x29, 64]
L853:
	cmp	x19, #0
	bne	L855
	mov	x17, x22
	mov	x22, x23
	mov	x23, x17
	b	L864
L855:
	cmp	x21, #0
	beq	L857
	mov	x25, x2
	mov	x2, #8
	sub	x2, x21, x2
	ldr	x2, [x2]
	mov	x3, #1
	add	x2, x2, x3
	mov	x3, #8
	sub	x3, x21, x3
	str	x2, [x3]
	b	L858
L857:
	mov	x25, x2
L858:
	cmp	x22, #0
	beq	L860
	mov	x23, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_router_Route_release
	mov	x2, x25
	mov	x1, x23
	mov	x0, x22
	b	L861
L860:
	mov	x2, x25
L861:
	mov	x3, #8
	sub	x4, x19, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
	cmp	x20, #0
	beq	L863
	mov	w3, #1
	mov	x23, x2
	mov	w2, #1
	mov	x22, x1
	mov	x1, x20
	mov	x20, x0
	bl	_nox_dict_release
	mov	x2, x23
	mov	x1, x22
	mov	x0, x20
L863:
	mov	x23, x21
	mov	x20, x19
	mov	w22, #1
L864:
	mov	x3, #1
	add	x24, x24, x3
	mov	x17, x23
	mov	x23, x22
	mov	x22, x17
	b	L841
L866:
	mov	x1, x20
	mov	x20, x21
	mov	x21, x25
	cmp	x1, #0
	beq	L869
	mov	w3, #1
	mov	w2, #1
	mov	x23, x1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x22
	mov	x0, x19
	b	L870
L869:
	mov	x1, x22
L870:
	cmp	x1, #0
	beq	L872
	mov	x19, x0
	bl	_nox_router_Route_release
	mov	x1, x21
	mov	x0, x19
	b	L873
L872:
	mov	x1, x21
L873:
	cmp	x1, #0
	beq	L875
	mov	w3, #1
	mov	w2, #1
	mov	x22, x1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L876
L875:
	mov	x1, x20
L876:
	cmp	x1, #0
	beq	L878
	mov	x21, x1
	bl	_nox_router_Route_release
L878:
	mov	x0, #0
	b	L1035
L879:
	mov	x23, x20
	mov	x20, x2
	mov	x17, x22
	mov	x22, x1
	mov	x1, x17
	mov	x17, x19
	mov	x19, x22
	mov	x22, x17
	cmp	x1, #0
	bne	L893
	mov	w1, #1
	mov	x19, x0
	bl	_nox_dict_new
	mov	x1, x0
	mov	x0, x19
	mov	x20, x1
	mov	x1, #32
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x2, #10
	str	x2, [x19]
	mov	x2, #8
	add	x3, x19, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #16
	add	x3, x19, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #24
	add	x3, x19, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x4, x1
	adrp	x3, _str42@page+8
	add	x3, x3, _str42@pageoff+8
	mov	x2, #404
	mov	x24, x1
	mov	x1, x19
	mov	x20, x0
	bl	_nox_http_HttpResponse___init__
	mov	x1, x24
	mov	x0, x20
	cmp	x1, #0
	beq	L883
	mov	w3, #1
	mov	w2, #1
	mov	x20, x0
	bl	_nox_dict_release
	mov	x1, x23
	mov	x0, x20
	b	L884
L883:
	mov	x1, x23
L884:
	cmp	x1, #0
	beq	L886
	mov	w3, #1
	mov	w2, #1
	mov	x20, x0
	bl	_nox_dict_release
	mov	x1, x22
	mov	x0, x20
	b	L887
L886:
	mov	x1, x22
L887:
	cmp	x1, #0
	beq	L889
	mov	w3, #1
	mov	w2, #1
	mov	x20, x0
	bl	_nox_dict_release
	mov	x1, x21
	mov	x0, x20
	b	L890
L889:
	mov	x1, x21
L890:
	cmp	x1, #0
	beq	L892
	mov	x20, x1
	bl	_nox_router_Route_release
	mov	x0, x19
	b	L1035
L892:
	mov	x0, x19
	b	L1035
L893:
	mov	x1, x23
	mov	x23, x19
	mov	x25, x1
	mov	x1, #24
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x3, #12
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #16
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x3, x25
	mov	x20, x1
	mov	x19, x0
	bl	_nox_router_Context___init__
	mov	x1, x20
	mov	x0, x19
	cmp	x1, #0
	mov	x20, x1
	mov	x1, x23
	mov	x22, #0
	mov	x21, #0
	mov	x19, #0
L896:
	str	x19, [x29, 40]
	mov	x2, #16
	add	x2, x1, x2
	mov	x23, x19
	ldr	x19, [x2]
	ldr	x2, [x19]
	cmp	x22, x2
	cset	w2, lt
	cmp	x21, #0
	cset	w3, eq
	and	w2, w2, w3
	cmp	x23, #0
	cmp	w2, #0
	beq	L942
	ldr	x2, [x19]
	cmp	x22, #0
	mov	x25, x1
	cset	w1, lt
	cmp	x22, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L899
	mov	x1, x25
	b	L900
L899:
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
	adrp	x2, _str40@page+8
	add	x2, x2, _str40@pageoff+8
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
	bne	L925
L900:
	mov	x25, x1
	mov	x1, #8
	mul	x1, x22, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x3, [x1]
	mov	x2, x20
	mov	x19, x0
	blr	x3
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x24, x0
	bl	_nox_exception_pending
	mov	x1, x25
	mov	w2, w0
	mov	x0, x24
	cmp	w2, #0
	bne	L908
	cmp	x23, #0
	beq	L903
	mov	x24, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x24
	mov	x0, x23
L903:
	cmp	x19, #0
	beq	L907
	mov	x2, #8
	sub	x3, x19, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
	cmp	x21, #0
	beq	L906
	mov	x23, x1
	mov	x1, x21
	mov	x21, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x23
	mov	x0, x21
L906:
	mov	x21, x19
L907:
	mov	x2, #1
	add	x22, x22, x2
	b	L896
L908:
	mov	x22, x21
	mov	x19, x23
	mov	x1, x20
	ldr	x23, [x29, 16]
	ldr	x25, [x29, 56]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	cmp	x1, #0
	beq	L911
	mov	x24, x0
	bl	_nox_router_Context_release
	mov	x1, x25
	mov	x0, x24
	b	L912
L911:
	mov	x1, x25
L912:
	cmp	x22, #0
	beq	L914
	mov	x24, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x24
	mov	x0, x22
L914:
	cmp	x1, #0
	beq	L916
	mov	w3, #1
	mov	w2, #1
	mov	x25, x1
	mov	x22, x0
	bl	_nox_dict_release
	mov	x1, x23
	mov	x0, x22
	b	L917
L916:
	mov	x1, x23
L917:
	cmp	x19, #0
	beq	L919
	mov	x22, x1
	mov	x1, x19
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x22
	mov	x0, x19
L919:
	mov	x23, x1
	mov	x19, x0
	bl	_nox_router_Route_release
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L921
	mov	w3, #1
	mov	w2, #1
	mov	x21, x1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L922
L921:
	mov	x1, x20
L922:
	cmp	x1, #0
	beq	L924
	mov	x20, x1
	bl	_nox_router_Route_release
L924:
	mov	x0, #0
	b	L1035
L925:
	mov	x22, x21
	mov	x19, x23
	mov	x1, x20
	ldr	x23, [x29, 16]
	ldr	x25, [x29, 56]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	cmp	x1, #0
	beq	L928
	mov	x24, x0
	bl	_nox_router_Context_release
	mov	x1, x25
	mov	x0, x24
	b	L929
L928:
	mov	x1, x25
L929:
	cmp	x22, #0
	beq	L931
	mov	x24, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x24
	mov	x0, x22
L931:
	cmp	x1, #0
	beq	L933
	mov	w3, #1
	mov	w2, #1
	mov	x25, x1
	mov	x22, x0
	bl	_nox_dict_release
	mov	x1, x23
	mov	x0, x22
	b	L934
L933:
	mov	x1, x23
L934:
	cmp	x19, #0
	beq	L936
	mov	x22, x1
	mov	x1, x19
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x22
	mov	x0, x19
L936:
	mov	x24, x1
	mov	x19, x0
	bl	_nox_router_Route_release
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L938
	mov	w3, #1
	mov	w2, #1
	mov	x21, x1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L939
L938:
	mov	x1, x20
L939:
	cmp	x1, #0
	beq	L941
	mov	x20, x1
	bl	_nox_router_Route_release
L941:
	mov	x0, #0
	b	L1035
L942:
	mov	x19, x21
	mov	x22, x23
	ldr	x24, [x29, 16]
	ldr	x25, [x29, 56]
	ldr	x21, [x29, 24]
	mov	x23, x1
	mov	x1, x20
	ldr	x20, [x29, 32]
	cmp	x19, #0
	bne	L1020
	mov	x19, x23
	mov	x26, x1
	mov	x1, #24
	add	x1, x24, x1
	ldr	x1, [x1]
	ldr	x3, [x1]
	mov	x2, x26
	mov	x23, x0
	blr	x3
	str	x0, [x29, 48]
	mov	x0, x23
	mov	x23, x0
	bl	_nox_exception_pending
	mov	x1, x26
	mov	w2, w0
	mov	x0, x23
	ldr	x23, [x29, 48]
	cmp	w2, #0
	bne	L1005
	mov	x20, x23
	mov	x22, x20
	mov	x20, x1
	mov	x1, x19
	mov	x19, x25
	mov	x21, #0
L948:
	mov	x2, #24
	add	x2, x1, x2
	mov	x23, x22
	ldr	x22, [x2]
	ldr	x2, [x22]
	cmp	x21, x2
	bge	L990
	ldr	x2, [x22]
	cmp	x21, #0
	mov	x25, x1
	cset	w1, lt
	cmp	x21, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	x23, #0
	cmp	w1, #0
	bne	L951
	mov	x1, x25
	b	L952
L951:
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
	adrp	x2, _str41@page+8
	add	x2, x2, _str41@pageoff+8
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
	bne	L973
L952:
	mov	x25, x1
	mov	x1, #8
	mul	x1, x21, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x22, x1
	ldr	x1, [x1]
	ldr	x4, [x1]
	mov	x3, x23
	mov	x2, x20
	mov	x22, x0
	blr	x4
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x24, x0
	bl	_nox_exception_pending
	mov	x1, x25
	mov	w2, w0
	mov	x0, x24
	cmp	w2, #0
	bne	L956
	cmp	x23, #0
	beq	L955
	mov	x24, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x24
	mov	x0, x23
L955:
	mov	x2, #1
	add	x21, x21, x2
	b	L948
L956:
	ldr	x22, [x29, 40]
	mov	x1, x20
	ldr	x24, [x29, 16]
	mov	x25, x19
	mov	x19, x23
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	cmp	x1, #0
	beq	L959
	mov	x23, x0
	bl	_nox_router_Context_release
	mov	x1, x25
	mov	x0, x23
	b	L960
L959:
	mov	x1, x25
L960:
	cmp	x1, #0
	beq	L962
	mov	w3, #1
	mov	w2, #1
	mov	x25, x1
	mov	x23, x0
	bl	_nox_dict_release
	mov	x1, x24
	mov	x0, x23
	b	L963
L962:
	mov	x1, x24
L963:
	cmp	x22, #0
	beq	L965
	mov	x23, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x23
	mov	x0, x22
L965:
	cmp	x19, #0
	beq	L967
	mov	x22, x1
	mov	x1, x19
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x22
	mov	x0, x19
L967:
	mov	x24, x1
	mov	x19, x0
	bl	_nox_router_Route_release
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L969
	mov	w3, #1
	mov	w2, #1
	mov	x21, x1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L970
L969:
	mov	x1, x20
L970:
	cmp	x1, #0
	beq	L972
	mov	x20, x1
	bl	_nox_router_Route_release
L972:
	mov	x0, #0
	b	L1035
L973:
	ldr	x22, [x29, 40]
	mov	x1, x20
	ldr	x24, [x29, 16]
	mov	x25, x19
	mov	x19, x23
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	cmp	x1, #0
	beq	L976
	mov	x23, x0
	bl	_nox_router_Context_release
	mov	x1, x25
	mov	x0, x23
	b	L977
L976:
	mov	x1, x25
L977:
	cmp	x1, #0
	beq	L979
	mov	w3, #1
	mov	w2, #1
	mov	x25, x1
	mov	x23, x0
	bl	_nox_dict_release
	mov	x1, x24
	mov	x0, x23
	b	L980
L979:
	mov	x1, x24
L980:
	cmp	x22, #0
	beq	L982
	mov	x23, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x23
	mov	x0, x22
L982:
	cmp	x19, #0
	beq	L984
	mov	x22, x1
	mov	x1, x19
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x22
	mov	x0, x19
L984:
	mov	x24, x1
	mov	x19, x0
	bl	_nox_router_Route_release
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L986
	mov	w3, #1
	mov	w2, #1
	mov	x22, x1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L987
L986:
	mov	x1, x20
L987:
	cmp	x1, #0
	beq	L989
	mov	x21, x1
	bl	_nox_router_Route_release
L989:
	mov	x0, #0
	b	L1035
L990:
	mov	x1, x20
	ldr	x20, [x29, 40]
	ldr	x24, [x29, 16]
	mov	x25, x19
	mov	x19, x23
	ldr	x21, [x29, 32]
	ldr	x22, [x29, 24]
	cmp	x1, #0
	beq	L993
	mov	x23, x0
	bl	_nox_router_Context_release
	mov	x1, x25
	mov	x0, x23
	b	L994
L993:
	mov	x1, x25
L994:
	cmp	x1, #0
	beq	L996
	mov	w3, #1
	mov	w2, #1
	mov	x23, x0
	bl	_nox_dict_release
	mov	x1, x24
	mov	x0, x23
	b	L997
L996:
	mov	x1, x24
L997:
	cmp	x20, #0
	beq	L999
	mov	x23, x1
	mov	x1, x20
	mov	x20, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x23
	mov	x0, x20
L999:
	mov	x23, x1
	mov	x20, x0
	bl	_nox_router_Route_release
	mov	x1, x22
	mov	x0, x20
	cmp	x1, #0
	beq	L1001
	mov	w3, #1
	mov	w2, #1
	mov	x20, x0
	bl	_nox_dict_release
	mov	x1, x21
	mov	x0, x20
	b	L1002
L1001:
	mov	x1, x21
L1002:
	cmp	x1, #0
	beq	L1004
	mov	x20, x1
	bl	_nox_router_Route_release
	mov	x0, x19
	b	L1035
L1004:
	mov	x0, x19
	b	L1035
L1005:
	mov	x19, x22
	mov	x23, x24
	mov	x24, x25
	cmp	x1, #0
	beq	L1008
	mov	x22, x0
	bl	_nox_router_Context_release
	mov	x1, x24
	mov	x0, x22
	b	L1009
L1008:
	mov	x1, x24
L1009:
	cmp	x1, #0
	beq	L1011
	mov	w3, #1
	mov	w2, #1
	mov	x25, x1
	mov	x22, x0
	bl	_nox_dict_release
	mov	x1, x23
	mov	x0, x22
	b	L1012
L1011:
	mov	x1, x23
L1012:
	cmp	x19, #0
	beq	L1014
	mov	x22, x1
	mov	x1, x19
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x22
	mov	x0, x19
L1014:
	mov	x24, x1
	mov	x19, x0
	bl	_nox_router_Route_release
	mov	x1, x21
	mov	x0, x19
	cmp	x1, #0
	beq	L1016
	mov	w3, #1
	mov	w2, #1
	mov	x22, x1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x20
	mov	x0, x19
	b	L1017
L1016:
	mov	x1, x20
L1017:
	cmp	x1, #0
	beq	L1019
	mov	x21, x1
	bl	_nox_router_Route_release
L1019:
	mov	x0, #0
	b	L1035
L1020:
	mov	x17, x20
	mov	x20, x21
	mov	x21, x17
	mov	x17, x22
	mov	x22, x20
	mov	x20, x17
	cmp	x1, #0
	beq	L1023
	mov	x23, x0
	bl	_nox_router_Context_release
	mov	x1, x25
	mov	x0, x23
	b	L1024
L1023:
	mov	x1, x25
L1024:
	cmp	x1, #0
	beq	L1026
	mov	w3, #1
	mov	w2, #1
	mov	x23, x0
	bl	_nox_dict_release
	mov	x1, x24
	mov	x0, x23
	b	L1027
L1026:
	mov	x1, x24
L1027:
	cmp	x20, #0
	beq	L1029
	mov	x23, x1
	mov	x1, x20
	mov	x20, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x23
	mov	x0, x20
L1029:
	mov	x20, x0
	bl	_nox_router_Route_release
	mov	x1, x22
	mov	x0, x20
	cmp	x1, #0
	beq	L1031
	mov	w3, #1
	mov	w2, #1
	mov	x20, x0
	bl	_nox_dict_release
	mov	x1, x21
	mov	x0, x20
	b	L1032
L1031:
	mov	x1, x21
L1032:
	cmp	x1, #0
	beq	L1034
	bl	_nox_router_Route_release
	mov	x0, x19
	b	L1035
L1034:
	mov	x0, x19
L1035:
	ldr	x19, [x29, 152]
	ldr	x20, [x29, 144]
	ldr	x21, [x29, 136]
	ldr	x22, [x29, 128]
	ldr	x23, [x29, 120]
	ldr	x24, [x29, 112]
	ldr	x25, [x29, 104]
	ldr	x26, [x29, 96]
	ldp	x29, x30, [sp], 160
	ret
/* end function nox_router_Router_dispatch */

.text
.balign 4
.globl _nox_router_Router_release
_nox_router_Router_release:
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
	bgt	L1047
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1039
	mov	x19, x0
	bl	_List_nox_router_Route_release
	mov	x1, x20
	mov	x0, x19
	b	L1040
L1039:
	mov	x1, x20
L1040:
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1042
	mov	x19, x0
	bl	_List_closure_release
	mov	x1, x20
	mov	x0, x19
	b	L1043
L1042:
	mov	x1, x20
L1043:
	mov	x20, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1045
	mov	x19, x0
	bl	_List_closure_release
	mov	x1, x20
	mov	x0, x19
	b	L1046
L1045:
	mov	x1, x20
L1046:
	mov	x2, #32
	bl	_nox_rc_free_payload
L1047:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Router_release */

.text
.balign 4
.globl _nox_router_Router_eq
_nox_router_Router_eq:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	mov	x21, x2
	mov	x2, #8
	add	x2, x21, x2
	ldr	x1, [x1]
	ldr	x2, [x2]
	cmp	x1, #0
	cset	w3, eq
	cmp	x2, #0
	cset	w4, eq
	orr	w5, w3, w4
	cmp	w5, #0
	bne	L1050
	mov	x19, x0
	bl	_List_nox_router_Route_eq
	mov	x2, x21
	mov	x1, x20
	mov	w3, w0
	mov	x0, x19
	cmp	w3, #0
	beq	L1060
	b	L1052
L1050:
	mov	x2, x21
	mov	x1, x20
	and	w3, w3, w4
	cmp	w3, #0
	beq	L1060
L1052:
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	mov	x21, x2
	mov	x2, #16
	add	x2, x21, x2
	ldr	x1, [x1]
	ldr	x2, [x2]
	cmp	x1, #0
	cset	w3, eq
	cmp	x2, #0
	cset	w4, eq
	orr	w5, w3, w4
	cmp	w5, #0
	bne	L1054
	mov	x19, x0
	bl	_List_closure_eq
	mov	x2, x21
	mov	x1, x20
	mov	w3, w0
	mov	x0, x19
	cmp	w3, #0
	beq	L1060
	b	L1056
L1054:
	mov	x2, x21
	mov	x1, x20
	and	w3, w3, w4
	cmp	w3, #0
	beq	L1060
L1056:
	mov	x3, #24
	add	x1, x1, x3
	mov	x3, #24
	add	x2, x2, x3
	ldr	x1, [x1]
	ldr	x2, [x2]
	cmp	x1, #0
	cset	w3, eq
	cmp	x2, #0
	cset	w4, eq
	orr	w5, w3, w4
	cmp	w5, #0
	bne	L1058
	bl	_List_closure_eq
	cmp	w0, #0
	beq	L1060
	b	L1061
L1058:
	mov	w1, w4
	mov	w0, w3
	and	w0, w0, w1
	cmp	w0, #0
	bne	L1061
L1060:
	mov	w0, #0
	b	L1062
L1061:
	mov	w0, #1
L1062:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_router_Router_eq */

.text
.balign 4
.globl _nox_router_Router_trace
_nox_router_Router_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_router_Router_trace */

.text
.balign 4
.globl _nox_router_Router_gc_free
_nox_router_Router_gc_free:
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
	beq	L1067
	mov	x19, x0
	bl	_List_nox_router_Route_release
	mov	x1, x20
	mov	x0, x19
	b	L1068
L1067:
	mov	x1, x20
L1068:
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1070
	mov	x19, x0
	bl	_List_closure_release
	mov	x1, x20
	mov	x0, x19
	b	L1071
L1070:
	mov	x1, x20
L1071:
	mov	x20, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1073
	mov	x19, x0
	bl	_List_closure_release
	mov	x1, x20
	mov	x0, x19
	b	L1074
L1073:
	mov	x1, x20
L1074:
	mov	x2, #32
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_router_Router_gc_free */

.text
.balign 4
.globl _web_cors_CorsConfig___init__
_web_cors_CorsConfig___init__:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	cmp	x2, #0
	beq	L1078
	mov	x6, #8
	sub	x7, x2, x6
	ldr	x6, [x7]
	mov	x8, #1
	add	x6, x6, x8
	str	x6, [x7]
L1078:
	mov	w23, w5
	mov	x5, #8
	add	x5, x1, x5
	mov	x20, x1
	ldr	x1, [x5]
	str	x2, [x5]
	cmp	x1, #0
	beq	L1082
	mov	x2, #8
	mov	x21, x3
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x22, x4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1081
	mov	w5, w23
	mov	x4, x22
	mov	x3, x21
	mov	x1, x20
	b	L1083
L1081:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	w5, w23
	mov	x4, x22
	mov	x3, x21
	mov	x1, x20
	mov	x0, x19
	b	L1083
L1082:
	mov	w5, w23
	mov	x1, x20
L1083:
	cmp	x3, #0
	beq	L1085
	mov	x2, #8
	mov	w22, w5
	sub	x5, x3, x2
	ldr	x2, [x5]
	mov	x6, #1
	add	x2, x2, x6
	str	x2, [x5]
	b	L1086
L1085:
	mov	w22, w5
L1086:
	mov	x2, #16
	add	x2, x1, x2
	mov	x20, x1
	ldr	x1, [x2]
	str	x3, [x2]
	cmp	x1, #0
	beq	L1090
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x21, x4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1089
	mov	w5, w22
	mov	x4, x21
	mov	x1, x20
	b	L1091
L1089:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	w5, w22
	mov	x4, x21
	mov	x1, x20
	mov	x0, x19
	b	L1091
L1090:
	mov	w5, w22
	mov	x1, x20
L1091:
	cmp	x4, #0
	beq	L1093
	mov	x2, #8
	sub	x3, x4, x2
	ldr	x2, [x3]
	mov	w20, w5
	mov	x5, #1
	add	x2, x2, x5
	str	x2, [x3]
	b	L1094
L1093:
	mov	w20, w5
L1094:
	mov	x2, #24
	add	x2, x1, x2
	mov	x19, x1
	ldr	x1, [x2]
	str	x4, [x2]
	cmp	x1, #0
	beq	L1098
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1097
	mov	w5, w20
	mov	x1, x19
	b	L1099
L1097:
	bl	_nox_str_free_now
	mov	w5, w20
	mov	x1, x19
	b	L1099
L1098:
	mov	w5, w20
	mov	x1, x19
L1099:
	mov	x0, #32
	add	x0, x1, x0
	str	w5, [x0]
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function web_cors_CorsConfig___init__ */

.text
.balign 4
.globl _web_cors_CorsConfig_release
_web_cors_CorsConfig_release:
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
	bgt	L1118
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1106
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1105
	mov	x1, x20
	b	L1107
L1105:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1107
L1106:
	mov	x1, x20
L1107:
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1111
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1110
	mov	x1, x20
	b	L1112
L1110:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1112
L1111:
	mov	x1, x20
L1112:
	mov	x20, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1116
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1115
	mov	x1, x20
	b	L1117
L1115:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1117
L1116:
	mov	x1, x20
L1117:
	mov	x2, #40
	bl	_nox_rc_free_payload
L1118:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_cors_CorsConfig_release */

.text
.balign 4
.globl _web_cors_CorsConfig_eq
_web_cors_CorsConfig_eq:
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
	mov	x1, x19
	cmp	w0, #0
	bne	L1124
	mov	x0, #16
	add	x0, x1, x0
	mov	x19, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	mov	x1, x19
	cmp	w0, #0
	bne	L1124
	mov	x0, #24
	add	x0, x1, x0
	mov	x19, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	bl	_strcmp
	mov	x2, x20
	mov	x1, x19
	cmp	w0, #0
	bne	L1124
	mov	x0, #32
	add	x0, x1, x0
	mov	x1, #32
	add	x1, x2, x1
	ldr	w0, [x0]
	ldr	w1, [x1]
	cmp	w0, w1
	bne	L1124
	mov	w0, #1
	b	L1125
L1124:
	mov	w0, #0
L1125:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_cors_CorsConfig_eq */

.text
.balign 4
.globl _web_cors_CorsConfig_trace
_web_cors_CorsConfig_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function web_cors_CorsConfig_trace */

.text
.balign 4
.globl _web_cors_CorsConfig_gc_free
_web_cors_CorsConfig_gc_free:
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
	beq	L1132
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1131
	mov	x1, x20
	b	L1133
L1131:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1133
L1132:
	mov	x1, x20
L1133:
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1137
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1136
	mov	x1, x20
	b	L1138
L1136:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1138
L1137:
	mov	x1, x20
L1138:
	mov	x20, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1142
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1141
	mov	x1, x20
	b	L1143
L1141:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1143
L1142:
	mov	x1, x20
L1143:
	mov	x2, #40
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_cors_CorsConfig_gc_free */

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
	beq	L1175
	cmp	x2, #2
	beq	L1174
	cmp	x2, #3
	beq	L1173
	cmp	x2, #4
	beq	L1172
	cmp	x2, #5
	beq	L1171
	cmp	x2, #6
	beq	L1170
	cmp	x2, #7
	beq	L1169
	cmp	x2, #8
	beq	L1168
	cmp	x2, #9
	beq	L1167
	cmp	x2, #10
	beq	L1166
	cmp	x2, #11
	beq	L1165
	cmp	x2, #12
	beq	L1164
	cmp	x2, #13
	beq	L1163
	cmp	x2, #14
	beq	L1162
	cmp	x2, #15
	beq	L1161
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	b	L1176
L1161:
	bl	_web_cors_CorsConfig_trace
	b	L1176
L1162:
	bl	_nox_router_Router_trace
	b	L1176
L1163:
	bl	_nox_router_Route_trace
	b	L1176
L1164:
	bl	_nox_router_Context_trace
	b	L1176
L1165:
	bl	_nox_http_HttpRequest_trace
	b	L1176
L1166:
	bl	_nox_http_HttpResponse_trace
	b	L1176
L1167:
	bl	_nox_http_HttpError_trace
	b	L1176
L1168:
	bl	_nox_test_TestSuite_trace
	b	L1176
L1169:
	bl	_nox_test_AssertionError_trace
	b	L1176
L1170:
	bl	_nox_fs_FileMetadata_trace
	b	L1176
L1171:
	bl	_nox_fs_FsError_trace
	b	L1176
L1172:
	bl	_JsonValue_trace
	b	L1176
L1173:
	bl	_KeyError_trace
	b	L1176
L1174:
	bl	_IndexError_trace
	b	L1176
L1175:
	bl	_ValueError_trace
L1176:
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
	beq	L1206
	cmp	x2, #2
	beq	L1205
	cmp	x2, #3
	beq	L1204
	cmp	x2, #4
	beq	L1203
	cmp	x2, #5
	beq	L1202
	cmp	x2, #6
	beq	L1201
	cmp	x2, #7
	beq	L1200
	cmp	x2, #8
	beq	L1199
	cmp	x2, #9
	beq	L1198
	cmp	x2, #10
	beq	L1197
	cmp	x2, #11
	beq	L1196
	cmp	x2, #12
	beq	L1195
	cmp	x2, #13
	beq	L1194
	cmp	x2, #14
	beq	L1193
	cmp	x2, #15
	bne	L1207
	bl	_web_cors_CorsConfig_gc_free
	b	L1207
L1193:
	bl	_nox_router_Router_gc_free
	b	L1207
L1194:
	bl	_nox_router_Route_gc_free
	b	L1207
L1195:
	bl	_nox_router_Context_gc_free
	b	L1207
L1196:
	bl	_nox_http_HttpRequest_gc_free
	b	L1207
L1197:
	bl	_nox_http_HttpResponse_gc_free
	b	L1207
L1198:
	bl	_nox_http_HttpError_gc_free
	b	L1207
L1199:
	bl	_nox_test_TestSuite_gc_free
	b	L1207
L1200:
	bl	_nox_test_AssertionError_gc_free
	b	L1207
L1201:
	bl	_nox_fs_FileMetadata_gc_free
	b	L1207
L1202:
	bl	_nox_fs_FsError_gc_free
	b	L1207
L1203:
	bl	_JsonValue_gc_free
	b	L1207
L1204:
	bl	_KeyError_gc_free
	b	L1207
L1205:
	bl	_IndexError_gc_free
	b	L1207
L1206:
	bl	_ValueError_gc_free
L1207:
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
	bge	L1214
	adrp	x0, "Lfp1"@page
	add	x0, x0, "Lfp1"@pageoff
	ldr	d1, [x0]
	fsub	d0, d0, d1
	fcvtzs	x0, d0
	b	L1215
L1214:
	adrp	x0, "Lfp1"@page
	add	x0, x0, "Lfp1"@pageoff
	ldr	d1, [x0]
	fadd	d0, d0, d1
	fcvtzs	x0, d0
L1215:
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
L1218:
	cmp	x2, x3
	bge	L1220
	mov	x4, #8
	mul	x4, x2, x4
	mov	x5, #16
	add	x4, x4, x5
	add	x4, x1, x4
	ldr	x4, [x4]
	add	x0, x4, x0
	mov	x4, #1
	add	x2, x2, x4
	b	L1218
L1220:
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
L1223:
	cmp	x0, x2
	bge	L1225
	mov	x3, #8
	mul	x3, x0, x3
	mov	x4, #16
	add	x3, x3, x4
	add	x3, x1, x3
	ldr	d1, [x3]
	fadd	d0, d1, d0
	mov	x3, #1
	add	x0, x0, x3
	b	L1223
L1225:
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
	beq	L1228
	mov	x1, x20
	b	L1234
L1228:
	adrp	x1, _str43@page+8
	add	x1, x1, _str43@pageoff+8
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
	beq	L1232
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1231
	mov	x1, x21
	b	L1233
L1231:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1233
L1232:
	mov	x1, x21
L1233:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1235
L1234:
	mov	x0, x1
	b	L1239
L1235:
	cmp	x1, #0
	beq	L1238
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1238
	bl	_nox_str_free_now
L1238:
	mov	x0, #0
L1239:
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
	bne	L1247
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
	beq	L1245
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1244
	mov	x1, x20
	b	L1246
L1244:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1246
L1245:
	mov	x1, x20
L1246:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L1247:
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
	bne	L1255
	adrp	x1, _str45@page+8
	add	x1, x1, _str45@pageoff+8
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
	beq	L1253
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1252
	mov	x1, x20
	b	L1254
L1252:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1254
L1253:
	mov	x1, x20
L1254:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L1255:
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
	beq	L1264
	mov	x19, x0
	b	L1270
L1264:
	adrp	x1, _str46@page+8
	add	x1, x1, _str46@pageoff+8
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
	beq	L1268
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1267
	mov	x1, x20
	b	L1269
L1267:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1269
L1268:
	mov	x1, x20
L1269:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	cmp	w0, #0
	bne	L1271
L1270:
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
	b	L1272
L1271:
	mov	x0, #0
L1272:
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
	beq	L1275
	mov	x1, x20
	b	L1281
L1275:
	adrp	x1, _str47@page+8
	add	x1, x1, _str47@pageoff+8
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
	beq	L1279
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1278
	mov	x1, x21
	b	L1280
L1278:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1280
L1279:
	mov	x1, x21
L1280:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1282
L1281:
	mov	x0, x1
	b	L1285
L1282:
	cmp	x1, #0
	beq	L1284
	bl	_List_str_release
L1284:
	mov	x0, #0
L1285:
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
	bne	L1303
	adrp	x1, _str48@page+8
	add	x1, x1, _str48@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x21, x2
	adrp	x2, _str49@page+8
	add	x2, x2, _str49@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1291
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1290
	mov	x1, x20
	mov	x2, x21
	b	L1292
L1290:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L1292
L1291:
	mov	x1, x20
L1292:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1296
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1295
	mov	x1, x20
	b	L1297
L1295:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1297
L1296:
	mov	x1, x20
L1297:
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
	beq	L1301
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1300
	mov	x1, x20
	b	L1302
L1300:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1302
L1301:
	mov	x1, x20
L1302:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L1303:
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
	bne	L1321
	adrp	x1, _str50@page+8
	add	x1, x1, _str50@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x21, x2
	adrp	x2, _str51@page+8
	add	x2, x2, _str51@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1309
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1308
	mov	x1, x20
	mov	x2, x21
	b	L1310
L1308:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L1310
L1309:
	mov	x1, x20
L1310:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1314
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1313
	mov	x1, x20
	b	L1315
L1313:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1315
L1314:
	mov	x1, x20
L1315:
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
	beq	L1319
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1318
	mov	x1, x20
	b	L1320
L1318:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1320
L1319:
	mov	x1, x20
L1320:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L1321:
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
	bne	L1329
	adrp	x1, _str52@page+8
	add	x1, x1, _str52@pageoff+8
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
	beq	L1327
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1326
	mov	x1, x20
	b	L1328
L1326:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1328
L1327:
	mov	x1, x20
L1328:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L1329:
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
	bne	L1337
	adrp	x1, _str53@page+8
	add	x1, x1, _str53@pageoff+8
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
	beq	L1335
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1334
	mov	x1, x20
	b	L1336
L1334:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1336
L1335:
	mov	x1, x20
L1336:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L1337:
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
	beq	L1404
	adrp	x2, _str54@page+8
	add	x2, x2, _str54@pageoff+8
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
	beq	L1377
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1376
	mov	x1, x22
	b	L1378
L1376:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L1378
L1377:
	mov	x1, x22
L1378:
	cmp	x1, #0
	beq	L1382
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1381
	mov	x1, x20
	b	L1383
L1381:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1383
L1382:
	mov	x1, x20
L1383:
	adrp	x2, _str55@page+8
	add	x2, x2, _str55@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1387
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1386
	mov	x1, x21
	b	L1388
L1386:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1388
L1387:
	mov	x1, x21
L1388:
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
	beq	L1392
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1391
	mov	x1, x21
	b	L1393
L1391:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1393
L1392:
	mov	x1, x21
L1393:
	cmp	x1, #0
	beq	L1397
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1396
	mov	x1, x20
	b	L1398
L1396:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1398
L1397:
	mov	x1, x20
L1398:
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
	beq	L1402
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1401
	mov	x1, x20
	b	L1403
L1401:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1403
L1402:
	mov	x1, x20
L1403:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L1404:
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
	beq	L1432
	mov	x20, x2
	adrp	x2, _str56@page+8
	add	x2, x2, _str56@pageoff+8
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
	beq	L1410
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1409
	mov	x1, x20
	mov	x2, x21
	b	L1411
L1409:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L1411
L1410:
	mov	x1, x20
L1411:
	mov	x21, x2
	adrp	x2, _str57@page+8
	add	x2, x2, _str57@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1415
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1414
	mov	x1, x20
	mov	x2, x21
	b	L1416
L1414:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L1416
L1415:
	mov	x1, x20
L1416:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1420
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1419
	mov	x1, x20
	b	L1421
L1419:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1421
L1420:
	mov	x1, x20
L1421:
	adrp	x2, _str58@page+8
	add	x2, x2, _str58@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1425
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1424
	mov	x1, x20
	b	L1426
L1424:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1426
L1425:
	mov	x1, x20
L1426:
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
	beq	L1430
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1429
	mov	x1, x20
	b	L1431
L1429:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1431
L1430:
	mov	x1, x20
L1431:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L1432:
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
	beq	L1465
	adrp	x2, _str59@page+8
	add	x2, x2, _str59@pageoff+8
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
	beq	L1438
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1437
	mov	x1, x21
	b	L1439
L1437:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1439
L1438:
	mov	x1, x21
L1439:
	cmp	x1, #0
	beq	L1443
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1442
	mov	x1, x20
	b	L1444
L1442:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1444
L1443:
	mov	x1, x20
L1444:
	adrp	x2, _str60@page+8
	add	x2, x2, _str60@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1448
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1447
	fmov	d0, d8
	b	L1449
L1447:
	mov	x19, x0
	bl	_nox_str_free_now
	fmov	d0, d8
	mov	x0, x19
	b	L1449
L1448:
	fmov	d0, d8
L1449:
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
	beq	L1453
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1452
	mov	x1, x21
	b	L1454
L1452:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1454
L1453:
	mov	x1, x21
L1454:
	cmp	x1, #0
	beq	L1458
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1457
	mov	x1, x20
	b	L1459
L1457:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1459
L1458:
	mov	x1, x20
L1459:
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
	beq	L1463
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1462
	mov	x1, x20
	b	L1464
L1462:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1464
L1463:
	mov	x1, x20
L1464:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L1465:
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
	beq	L1468
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
L1468:
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
	adrp	x3, _str62@page+8
	add	x3, x3, _str62@pageoff+8
	adrp	x2, _str61@page+8
	add	x2, x2, _str61@pageoff+8
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x22, x0
	mov	x0, x19
	adrp	x3, _str64@page+8
	add	x3, x3, _str64@pageoff+8
	adrp	x2, _str63@page+8
	add	x2, x2, _str63@pageoff+8
	mov	x1, x22
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x21, x0
	mov	x0, x19
	adrp	x3, _str66@page+8
	add	x3, x3, _str66@pageoff+8
	adrp	x2, _str65@page+8
	add	x2, x2, _str65@pageoff+8
	mov	x1, x21
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x1, x0
	mov	x0, x19
	adrp	x3, _str68@page+8
	add	x3, x3, _str68@pageoff+8
	adrp	x2, _str67@page+8
	add	x2, x2, _str67@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1473
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1472
	mov	x1, x22
	b	L1474
L1472:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L1474
L1473:
	mov	x1, x22
L1474:
	cmp	x1, #0
	beq	L1478
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1477
	mov	x1, x21
	b	L1479
L1477:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1479
L1478:
	mov	x1, x21
L1479:
	cmp	x1, #0
	beq	L1483
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1482
	mov	x0, x19
	b	L1484
L1482:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1484
L1483:
	mov	x0, x19
L1484:
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
	adrp	x3, _str71@page+8
	add	x3, x3, _str71@pageoff+8
	adrp	x2, _str70@page+8
	add	x2, x2, _str70@pageoff+8
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x0
	mov	x0, x19
	adrp	x3, _str73@page+8
	add	x3, x3, _str73@pageoff+8
	adrp	x2, _str72@page+8
	add	x2, x2, _str72@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x20
	mov	x24, x0
	mov	x0, x19
	adrp	x3, _str75@page+8
	add	x3, x3, _str75@pageoff+8
	adrp	x2, _str74@page+8
	add	x2, x2, _str74@pageoff+8
	mov	x20, x1
	mov	x1, x24
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x20
	mov	x23, x0
	mov	x0, x19
	adrp	x3, _str77@page+8
	add	x3, x3, _str77@pageoff+8
	adrp	x2, _str76@page+8
	add	x2, x2, _str76@pageoff+8
	mov	x20, x1
	mov	x1, x23
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	adrp	x2, _str81@page+8
	add	x2, x2, _str81@pageoff+8
	cmp	x2, #0
	cmp	x1, #0
	beq	L1489
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1488
	mov	x1, x24
	b	L1490
L1488:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L1490
L1489:
	mov	x1, x24
L1490:
	cmp	x1, #0
	beq	L1494
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1493
	mov	x1, x23
	b	L1495
L1493:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L1495
L1494:
	mov	x1, x23
L1495:
	cmp	x1, #0
	beq	L1499
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1498
	mov	x1, x20
	b	L1500
L1498:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1500
L1499:
	mov	x1, x20
L1500:
	mov	x2, x1
	mov	x20, x1
	adrp	x1, _str69@page+8
	add	x1, x1, _str69@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1504
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1503
	mov	x1, x20
	b	L1505
L1503:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1505
L1504:
	mov	x1, x20
L1505:
	adrp	x2, _str78@page+8
	add	x2, x2, _str78@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1509
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1508
	mov	x1, x20
	b	L1510
L1508:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1510
L1509:
	mov	x1, x20
L1510:
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
	beq	L1514
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1513
	mov	x1, x23
	b	L1515
L1513:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L1515
L1514:
	mov	x1, x23
L1515:
	cmp	x1, #0
	beq	L1519
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1518
	mov	x1, x20
	b	L1520
L1518:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1520
L1519:
	mov	x1, x20
L1520:
	adrp	x2, _str79@page+8
	add	x2, x2, _str79@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1524
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1523
	mov	x1, x20
	b	L1525
L1523:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1525
L1524:
	mov	x1, x20
L1525:
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
	beq	L1529
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1528
	mov	x1, x23
	b	L1530
L1528:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L1530
L1529:
	mov	x1, x23
L1530:
	cmp	x1, #0
	beq	L1534
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1533
	mov	x1, x20
	b	L1535
L1533:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1535
L1534:
	mov	x1, x20
L1535:
	adrp	x2, _str80@page+8
	add	x2, x2, _str80@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1539
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1538
	mov	x1, x21
	b	L1540
L1538:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1540
L1539:
	mov	x1, x21
L1540:
	mov	x2, #32
	add	x1, x1, x2
	ldr	x2, [x1]
	mov	x1, x20
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _str81@page+8
	add	x2, x2, _str81@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1544
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1543
	mov	x1, x22
	b	L1545
L1543:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L1545
L1544:
	mov	x1, x22
L1545:
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
	bne	L1557
	cmp	x1, #0
	beq	L1550
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1549
	mov	x1, x20
	b	L1551
L1549:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1551
L1550:
	mov	x1, x20
L1551:
	cmp	x1, #0
	beq	L1554
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1554
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1554:
	adrp	x1, _str81@page+8
	add	x1, x1, _str81@pageoff+8
	cmp	x1, #0
	beq	L1564
	adrp	x1, _str81@page
	add	x1, x1, _str81@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str81@page
	add	x2, x2, _str81@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1564
	adrp	x1, _str81@page+8
	add	x1, x1, _str81@pageoff+8
	bl	_nox_str_free_now
	b	L1564
L1557:
	mov	x1, x20
	cmp	x1, #0
	beq	L1561
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1561
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1561:
	adrp	x1, _str81@page+8
	add	x1, x1, _str81@pageoff+8
	cmp	x1, #0
	beq	L1564
	adrp	x1, _str81@page
	add	x1, x1, _str81@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str81@page
	add	x2, x2, _str81@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1564
	adrp	x1, _str81@page+8
	add	x1, x1, _str81@pageoff+8
	bl	_nox_str_free_now
L1564:
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
.globl _nox_http_listen
_nox_http_listen:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	bl	_nox_http_listen_fd
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x19, #0
	blt	L1567
	mov	x0, x19
	b	L1579
L1567:
	mov	x20, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x20
	mov	x2, x1
	mov	x21, x1
	adrp	x1, _str82@page+8
	add	x1, x1, _str82@pageoff+8
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L1571
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1570
	mov	x1, x21
	b	L1572
L1570:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1572
L1571:
	mov	x1, x21
L1572:
	mov	x21, x1
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	mov	x2, #9
	str	x2, [x21]
	mov	x2, #8
	add	x3, x21, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x22, x1
	mov	x1, x21
	mov	x20, x0
	bl	_nox_http_HttpError___init__
	mov	x1, x22
	mov	x0, x20
	cmp	x1, #0
	beq	L1576
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1575
	mov	x1, x21
	b	L1577
L1575:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1577
L1576:
	mov	x1, x21
L1577:
	mov	x20, x0
	bl	_nox_raise
	mov	x0, x20
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	beq	L1579
	mov	x0, #0
L1579:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_http_listen */

.text
.balign 4
.globl _nox_http_get
_nox_http_get:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x21, x1
	mov	x20, x0
	mov	x1, x21
	mov	x0, x20
	bl	_nox_http_get_raw
	mov	x19, x0
	bl	_nox_http_response_ok
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	bne	L1587
	mov	x19, x0
	bl	_nox_http_response_free
	mov	x2, x21
	mov	x0, x19
	adrp	x1, _str83@page+8
	add	x1, x1, _str83@pageoff+8
	mov	x19, x0
	mov	x0, x20
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x21, x1
	mov	x1, #16
	mov	x19, x0
	mov	x0, x20
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
	mov	x0, x20
	bl	_nox_http_HttpError___init__
	mov	x1, x22
	mov	x0, x19
	cmp	x1, #0
	beq	L1585
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1584
	mov	x1, x21
	b	L1586
L1584:
	mov	x19, x0
	mov	x0, x20
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1586
L1585:
	mov	x1, x21
L1586:
	mov	x19, x0
	mov	x0, x20
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L1594
L1587:
	mov	x19, x0
	bl	_nox_http_response_status
	mov	x23, x0
	mov	x0, x19
	mov	x1, x0
	mov	x19, x0
	mov	x0, x20
	bl	_nox_http_response_body
	mov	x21, x0
	mov	x0, x19
	mov	x1, x0
	mov	x19, x0
	mov	x0, x20
	bl	_nox_http_response_headers
	mov	x1, x0
	mov	x0, x19
	mov	x22, x1
	mov	x1, #32
	mov	x19, x0
	mov	x0, x20
	bl	_nox_rc_alloc
	mov	x2, x23
	mov	x1, x22
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x3, #10
	str	x3, [x19]
	mov	x3, #8
	add	x4, x19, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #16
	add	x4, x19, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #24
	add	x4, x19, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x4, x1
	mov	x3, x21
	mov	x23, x1
	mov	x1, x19
	mov	x22, x0
	mov	x0, x20
	bl	_nox_http_HttpResponse___init__
	mov	x1, x23
	mov	x0, x22
	cmp	x1, #0
	beq	L1589
	mov	w3, #1
	mov	w2, #1
	mov	x22, x0
	mov	x0, x20
	bl	_nox_dict_release
	mov	x0, x22
L1589:
	bl	_nox_http_response_free
	mov	x1, x21
	mov	x0, x20
	cmp	x1, #0
	beq	L1593
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1592
	mov	x0, x19
	b	L1595
L1592:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1595
L1593:
	mov	x0, x19
	b	L1595
L1594:
	mov	x0, #0
L1595:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function nox_http_get */

.text
.balign 4
.globl _nox_http_post
_nox_http_post:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x21, x1
	mov	x20, x0
	mov	x1, x21
	mov	x0, x20
	bl	_nox_http_post_raw
	mov	x19, x0
	bl	_nox_http_response_ok
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	bne	L1603
	mov	x19, x0
	bl	_nox_http_response_free
	mov	x2, x21
	mov	x0, x19
	adrp	x1, _str84@page+8
	add	x1, x1, _str84@pageoff+8
	mov	x19, x0
	mov	x0, x20
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x21, x1
	mov	x1, #16
	mov	x19, x0
	mov	x0, x20
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
	mov	x0, x20
	bl	_nox_http_HttpError___init__
	mov	x1, x22
	mov	x0, x19
	cmp	x1, #0
	beq	L1601
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1600
	mov	x1, x21
	b	L1602
L1600:
	mov	x19, x0
	mov	x0, x20
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1602
L1601:
	mov	x1, x21
L1602:
	mov	x19, x0
	mov	x0, x20
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L1610
L1603:
	mov	x19, x0
	bl	_nox_http_response_status
	mov	x23, x0
	mov	x0, x19
	mov	x1, x0
	mov	x19, x0
	mov	x0, x20
	bl	_nox_http_response_body
	mov	x21, x0
	mov	x0, x19
	mov	x1, x0
	mov	x19, x0
	mov	x0, x20
	bl	_nox_http_response_headers
	mov	x1, x0
	mov	x0, x19
	mov	x22, x1
	mov	x1, #32
	mov	x19, x0
	mov	x0, x20
	bl	_nox_rc_alloc
	mov	x2, x23
	mov	x1, x22
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x3, #10
	str	x3, [x19]
	mov	x3, #8
	add	x4, x19, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #16
	add	x4, x19, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #24
	add	x4, x19, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x4, x1
	mov	x3, x21
	mov	x23, x1
	mov	x1, x19
	mov	x22, x0
	mov	x0, x20
	bl	_nox_http_HttpResponse___init__
	mov	x1, x23
	mov	x0, x22
	cmp	x1, #0
	beq	L1605
	mov	w3, #1
	mov	w2, #1
	mov	x22, x0
	mov	x0, x20
	bl	_nox_dict_release
	mov	x0, x22
L1605:
	bl	_nox_http_response_free
	mov	x1, x21
	mov	x0, x20
	cmp	x1, #0
	beq	L1609
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1608
	mov	x0, x19
	b	L1611
L1608:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1611
L1609:
	mov	x0, x19
	b	L1611
L1610:
	mov	x0, #0
L1611:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function nox_http_post */

.text
.balign 4
.globl _nox_router__drop_first_char
_nox_router__drop_first_char:
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
	mov	x24, x1
	mov	x19, x0
	mov	x0, x24
	bl	_nox_str_char_count
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x24
	bl	_nox_str_is_ascii
	mov	x22, x0
	mov	x0, x19
	adrp	x20, _str85@page+8
	add	x20, x20, _str85@pageoff+8
	mov	x19, #1
L1614:
	mov	x23, x0
	mov	x0, x24
	bl	_nox_str_char_count
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	cmp	x19, x2
	bge	L1637
	cmp	x19, #0
	mov	x24, x1
	cset	w1, lt
	cmp	x19, x21
	cset	w2, ge
	orr	w1, w1, w2
	cmp	x20, #0
	cmp	w1, #0
	bne	L1617
	mov	x1, x24
	b	L1618
L1617:
	mov	x1, #16
	mov	x23, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str86@page+8
	add	x2, x2, _str86@pageoff+8
	mov	x25, x1
	mov	x23, x0
	bl	_IndexError___init__
	mov	x1, x25
	mov	x0, x23
	mov	x23, x0
	bl	_nox_raise
	mov	x0, x23
	mov	x23, x0
	bl	_nox_exception_pending
	mov	x1, x24
	mov	w2, w0
	mov	x0, x23
	cmp	w2, #0
	bne	L1632
L1618:
	cmp	w22, #0
	bne	L1621
	mov	x2, x19
	mov	x24, x1
	mov	x23, x0
	bl	_nox_str_char_at
	mov	x1, x24
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	mov	x25, x1
	mov	x1, x23
	mov	x23, x20
	b	L1622
L1621:
	add	x2, x1, x19
	mov	x23, x20
	ldrb	w20, [x2]
	mov	x25, x1
	mov	x1, #2
	mov	x24, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x24
	strb	w20, [x1]
	mov	x2, #1
	add	x3, x1, x2
	mov	w2, #0
	strb	w2, [x3]
L1622:
	mov	x2, x1
	mov	x24, x1
	mov	x1, x23
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x1, #0
	beq	L1626
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1625
	mov	x1, x25
	b	L1627
L1625:
	mov	x24, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x24
	b	L1627
L1626:
	mov	x1, x25
L1627:
	cmp	x23, #0
	beq	L1630
	mov	x2, #8
	sub	x2, x23, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x23, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1630
	mov	x24, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x23
L1630:
	mov	x2, #1
	add	x19, x19, x2
	mov	x24, x1
	b	L1614
L1632:
	mov	x19, x20
	cmp	x19, #0
	beq	L1636
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1636
	mov	x1, x19
	bl	_nox_str_free_now
L1636:
	mov	x0, #0
	b	L1638
L1637:
	mov	x0, x20
L1638:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function nox_router__drop_first_char */

.text
.balign 4
.globl _nox_router__match_path
_nox_router__match_path:
	hint	#34
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [x29, 104]
	str	x20, [x29, 96]
	str	x21, [x29, 88]
	str	x22, [x29, 80]
	str	x23, [x29, 72]
	str	x24, [x29, 64]
	str	x25, [x29, 56]
	str	x26, [x29, 48]
	str	x27, [x29, 40]
	mov	x20, x2
	adrp	x2, _str87@page+8
	add	x2, x2, _str87@pageoff+8
	mov	x19, x0
	bl	_nox_strings_split_raw
	mov	x1, x20
	mov	x22, x0
	mov	x0, x19
	adrp	x2, _str88@page+8
	add	x2, x2, _str88@pageoff+8
	mov	x19, x0
	bl	_nox_strings_split_raw
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x22]
	ldr	x3, [x1]
	cmp	x22, #0
	cmp	x1, #0
	cmp	x2, x3
	bne	L1739
	mov	x21, x1
	mov	w1, #1
	mov	x19, x0
	bl	_nox_dict_new
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	str	x19, [x29, 16]
	cmp	x19, #0
	mov	x27, x19
	mov	x17, x21
	mov	x21, x22
	mov	x22, x17
	mov	x24, #0
	mov	x20, #0
	mov	x19, #0
	mov	x23, #0
L1642:
	ldr	x1, [x21]
	cmp	x19, #0
	cmp	x20, #0
	cmp	x23, #0
	cmp	x24, x1
	bge	L1717
	mov	x1, #8
	mul	x1, x24, x1
	mov	x2, #16
	add	x26, x1, x2
	str	x26, [x29, 24]
	add	x1, x21, x26
	mov	x25, x20
	ldr	x20, [x1]
	cmp	x20, #0
	beq	L1645
	mov	x1, #8
	sub	x1, x20, x1
	ldr	x1, [x1]
	mov	x2, #1
	add	x1, x1, x2
	mov	x2, #8
	sub	x2, x20, x2
	str	x1, [x2]
L1645:
	cmp	x25, #0
	beq	L1649
	mov	x1, #8
	sub	x1, x25, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x25, x2
	str	x1, [x2]
	cmp	x1, #0
	ble	L1648
	mov	x25, x27
	b	L1650
L1648:
	mov	x1, x25
	mov	x25, x0
	bl	_nox_str_free_now
	mov	x0, x25
	ldr	x25, [x29, 16]
	b	L1650
L1649:
	mov	x25, x27
L1650:
	ldr	x2, [x22]
	cmp	x24, #0
	cset	w1, lt
	cmp	x24, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L1652
	mov	x17, x23
	mov	x23, x26
	mov	x26, x17
	b	L1653
L1652:
	mov	x1, #16
	mov	x25, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x25
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str89@page+8
	add	x2, x2, _str89@pageoff+8
	mov	x26, x1
	mov	x25, x0
	bl	_IndexError___init__
	mov	x1, x26
	mov	x0, x25
	mov	x26, x23
	ldr	x23, [x29, 24]
	mov	x25, x0
	bl	_nox_raise
	mov	x0, x25
	mov	x25, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x25
	ldr	x25, [x29, 16]
	cmp	w1, #0
	bne	L1694
L1653:
	add	x1, x22, x23
	mov	x23, x19
	ldr	x19, [x1]
	cmp	x19, #0
	beq	L1655
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	add	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
L1655:
	cmp	x23, #0
	beq	L1658
	mov	x1, #8
	sub	x1, x23, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x23, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1658
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x0, x23
L1658:
	adrp	x1, _str90@page+8
	add	x1, x1, _str90@pageoff+8
	mov	x23, x0
	mov	x0, x20
	bl	_nox_strings_starts_with_raw
	mov	x1, x0
	mov	x0, x23
	cmp	x1, #0
	bne	L1684
	mov	x1, x19
	mov	x23, x0
	mov	x0, x20
	bl	_strcmp
	mov	w1, w0
	mov	x0, x23
	cmp	w1, #0
	bne	L1661
	mov	x23, x26
	b	L1692
L1661:
	mov	x1, x19
	mov	x23, x20
	mov	x20, x26
	mov	x19, x25
	mov	x17, x22
	mov	x22, x21
	mov	x21, x17
	cmp	x19, #0
	beq	L1664
	mov	w3, #1
	mov	w2, #1
	mov	x24, x1
	mov	x1, x19
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x24
	mov	x0, x19
L1664:
	cmp	x1, #0
	beq	L1668
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1667
	mov	x1, x23
	b	L1669
L1667:
	mov	x19, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L1669
L1668:
	mov	x1, x23
L1669:
	cmp	x1, #0
	beq	L1673
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1672
	mov	x1, x22
	b	L1674
L1672:
	mov	x23, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L1674
L1673:
	mov	x1, x22
L1674:
	cmp	x1, #0
	beq	L1676
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L1677
L1676:
	mov	x1, x21
L1677:
	cmp	x1, #0
	beq	L1679
	mov	x21, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x20
	mov	x0, x19
	b	L1680
L1679:
	mov	x1, x20
L1680:
	cmp	x1, #0
	beq	L1683
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1683
	mov	x20, x1
	bl	_nox_str_free_now
L1683:
	mov	x0, #0
	b	L1746
L1684:
	mov	x1, x20
	mov	x23, x0
	bl	_nox_router__drop_first_char
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	cmp	x26, #0
	beq	L1687
	mov	x1, #8
	sub	x1, x26, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x26, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1687
	mov	x1, x26
	mov	x26, x0
	bl	_nox_str_free_now
	mov	x0, x26
L1687:
	cmp	x23, #0
	beq	L1689
	mov	x1, #8
	sub	x2, x23, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
L1689:
	cmp	x19, #0
	beq	L1691
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	add	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
L1691:
	mov	x5, x19
	mov	x4, x23
	mov	w3, #1
	mov	w2, #1
	mov	x1, x25
	mov	x26, x0
	bl	_nox_dict_set
	mov	x0, x26
L1692:
	mov	x1, #1
	add	x24, x24, x1
	mov	x27, x25
	b	L1642
L1694:
	mov	x23, x20
	mov	x1, x19
	mov	x20, x26
	mov	x19, x25
	mov	x17, x22
	mov	x22, x21
	mov	x21, x17
	cmp	x19, #0
	beq	L1697
	mov	w3, #1
	mov	w2, #1
	mov	x24, x1
	mov	x1, x19
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x24
	mov	x0, x19
L1697:
	cmp	x1, #0
	beq	L1701
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1700
	mov	x1, x23
	b	L1702
L1700:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L1702
L1701:
	mov	x1, x23
L1702:
	cmp	x1, #0
	beq	L1706
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1705
	mov	x1, x22
	b	L1707
L1705:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L1707
L1706:
	mov	x1, x22
L1707:
	cmp	x1, #0
	beq	L1709
	mov	x23, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L1710
L1709:
	mov	x1, x21
L1710:
	cmp	x1, #0
	beq	L1712
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x20
	mov	x0, x19
	b	L1713
L1712:
	mov	x1, x20
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
	mov	x21, x1
	bl	_nox_str_free_now
L1716:
	mov	x0, #0
	b	L1746
L1717:
	mov	x24, x20
	mov	x1, x19
	mov	x19, x27
	mov	x17, x23
	mov	x23, x21
	mov	x21, x17
	cmp	x1, #0
	beq	L1722
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1721
	mov	x1, x24
	b	L1723
L1721:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x20
	b	L1723
L1722:
	mov	x1, x24
L1723:
	cmp	x1, #0
	beq	L1727
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1726
	mov	x1, x23
	b	L1728
L1726:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x20
	b	L1728
L1727:
	mov	x1, x23
L1728:
	cmp	x1, #0
	beq	L1730
	mov	x20, x0
	bl	_List_str_release
	mov	x1, x22
	mov	x0, x20
	b	L1731
L1730:
	mov	x1, x22
L1731:
	cmp	x1, #0
	beq	L1733
	mov	x20, x1
	mov	x20, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x20
	b	L1734
L1733:
	mov	x1, x21
L1734:
	cmp	x1, #0
	beq	L1738
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1737
	mov	x0, x19
	b	L1746
L1737:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1746
L1738:
	mov	x0, x19
	b	L1746
L1739:
	mov	x20, x1
	mov	x1, x22
	cmp	x1, #0
	beq	L1742
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x20
	mov	x0, x19
	b	L1743
L1742:
	mov	x1, x20
L1743:
	cmp	x1, #0
	beq	L1745
	bl	_List_str_release
L1745:
	mov	x0, #0
L1746:
	ldr	x19, [x29, 104]
	ldr	x20, [x29, 96]
	ldr	x21, [x29, 88]
	ldr	x22, [x29, 80]
	ldr	x23, [x29, 72]
	ldr	x24, [x29, 64]
	ldr	x25, [x29, 56]
	ldr	x26, [x29, 48]
	ldr	x27, [x29, 40]
	ldp	x29, x30, [sp], 112
	ret
/* end function nox_router__match_path */

.text
.balign 4
.globl _web_response_json
_web_response_json:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x21, x2
	mov	x20, x1
	mov	w1, #1
	mov	x19, x0
	bl	_nox_dict_new
	mov	x3, x21
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	adrp	x5, _str92@page+8
	add	x5, x5, _str92@pageoff+8
	adrp	x4, _str91@page+8
	add	x4, x4, _str91@pageoff+8
	mov	x22, x3
	mov	w3, #1
	mov	x21, x2
	mov	w2, #1
	mov	x20, x1
	mov	x19, x0
	bl	_nox_dict_set
	mov	x1, x20
	mov	x0, x19
	mov	x20, x1
	mov	x1, #32
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x4, #10
	str	x4, [x19]
	mov	x4, #8
	add	x5, x19, x4
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #16
	add	x5, x19, x4
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #24
	add	x5, x19, x4
	mov	x4, #0
	str	x4, [x5]
	mov	x4, x1
	mov	x21, x1
	mov	x1, x19
	mov	x20, x0
	bl	_nox_http_HttpResponse___init__
	mov	x1, x21
	mov	x0, x20
	cmp	x1, #0
	beq	L1749
	mov	w3, #1
	mov	w2, #1
	bl	_nox_dict_release
	mov	x0, x19
	b	L1750
L1749:
	mov	x0, x19
L1750:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function web_response_json */

.text
.balign 4
.globl _web_response_text
_web_response_text:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x21, x2
	mov	x20, x1
	mov	w1, #1
	mov	x19, x0
	bl	_nox_dict_new
	mov	x3, x21
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	adrp	x5, _str94@page+8
	add	x5, x5, _str94@pageoff+8
	adrp	x4, _str93@page+8
	add	x4, x4, _str93@pageoff+8
	mov	x22, x3
	mov	w3, #1
	mov	x21, x2
	mov	w2, #1
	mov	x20, x1
	mov	x19, x0
	bl	_nox_dict_set
	mov	x1, x20
	mov	x0, x19
	mov	x20, x1
	mov	x1, #32
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x4, #10
	str	x4, [x19]
	mov	x4, #8
	add	x5, x19, x4
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #16
	add	x5, x19, x4
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #24
	add	x5, x19, x4
	mov	x4, #0
	str	x4, [x5]
	mov	x4, x1
	mov	x21, x1
	mov	x1, x19
	mov	x20, x0
	bl	_nox_http_HttpResponse___init__
	mov	x1, x21
	mov	x0, x20
	cmp	x1, #0
	beq	L1753
	mov	w3, #1
	mov	w2, #1
	bl	_nox_dict_release
	mov	x0, x19
	b	L1754
L1753:
	mov	x0, x19
L1754:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function web_response_text */

.text
.balign 4
.globl _web_response_redirect
_web_response_redirect:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x2
	mov	x21, x1
	mov	w1, #1
	mov	x19, x0
	bl	_nox_dict_new
	mov	x5, x21
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	cmp	x5, #0
	beq	L1757
	mov	x3, #8
	sub	x4, x5, x3
	ldr	x3, [x4]
	mov	x6, #1
	add	x3, x3, x6
	str	x3, [x4]
L1757:
	adrp	x4, _str95@page+8
	add	x4, x4, _str95@pageoff+8
	mov	w3, #1
	mov	x21, x2
	mov	w2, #1
	mov	x20, x1
	mov	x19, x0
	bl	_nox_dict_set
	mov	x1, x20
	mov	x0, x19
	mov	x20, x1
	mov	x1, #32
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x2, x21
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x3, #10
	str	x3, [x19]
	mov	x3, #8
	add	x4, x19, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #16
	add	x4, x19, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #24
	add	x4, x19, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x4, x1
	adrp	x3, _str96@page+8
	add	x3, x3, _str96@pageoff+8
	mov	x21, x1
	mov	x1, x19
	mov	x20, x0
	bl	_nox_http_HttpResponse___init__
	mov	x1, x21
	mov	x0, x20
	cmp	x1, #0
	beq	L1759
	mov	w3, #1
	mov	w2, #1
	bl	_nox_dict_release
	mov	x0, x19
	b	L1760
L1759:
	mov	x0, x19
L1760:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function web_response_redirect */

.text
.balign 4
.globl _web_response__try_copy
_web_response__try_copy:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x4, x3
	mov	x22, x2
	cmp	x4, #0
	beq	L1763
	mov	x2, #8
	sub	x3, x4, x2
	ldr	x2, [x3]
	mov	x21, x4
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
	b	L1764
L1763:
	mov	x21, x4
L1764:
	mov	x2, x21
	mov	x20, x1
	mov	w1, #1
	mov	x19, x0
	mov	x0, x22
	bl	_nox_dict_contains
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L1768
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #3
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str97@page+8
	add	x2, x2, _str97@pageoff+8
	mov	x23, x1
	mov	x19, x0
	bl	_KeyError___init__
	mov	x1, x23
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	beq	L1769
	mov	x19, x0
	bl	_nox_exception_take
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #3
	beq	L1772
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
	b	L1772
L1768:
	mov	x1, x22
L1769:
	mov	x3, x21
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_get
	mov	x4, x21
	mov	x1, x20
	mov	x5, x0
	mov	x0, x19
	cmp	x5, #0
	beq	L1771
	mov	x2, #8
	sub	x3, x5, x2
	ldr	x2, [x3]
	mov	x6, #1
	add	x2, x2, x6
	str	x2, [x3]
L1771:
	mov	w3, #1
	mov	w2, #1
	bl	_nox_dict_set
L1772:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function web_response__try_copy */

.text
.balign 4
.globl _web_response_with_header
_web_response_with_header:
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
	mov	x22, x2
	mov	x19, x1
	mov	w1, #1
	mov	x20, x0
	bl	_nox_dict_new
	mov	x1, x0
	mov	x0, x20
	mov	x2, #24
	add	x20, x19, x2
	ldr	x2, [x20]
	adrp	x3, _str98@page+8
	add	x3, x3, _str98@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_response__try_copy
	mov	x1, x24
	mov	x0, x21
	ldr	x2, [x20]
	adrp	x3, _str99@page+8
	add	x3, x3, _str99@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_response__try_copy
	mov	x1, x24
	mov	x0, x21
	ldr	x2, [x20]
	adrp	x3, _str100@page+8
	add	x3, x3, _str100@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_response__try_copy
	mov	x1, x24
	mov	x0, x21
	ldr	x2, [x20]
	adrp	x3, _str101@page+8
	add	x3, x3, _str101@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_response__try_copy
	mov	x1, x24
	mov	x0, x21
	ldr	x2, [x20]
	adrp	x3, _str102@page+8
	add	x3, x3, _str102@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_response__try_copy
	mov	x1, x24
	mov	x0, x21
	ldr	x2, [x20]
	adrp	x3, _str103@page+8
	add	x3, x3, _str103@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_response__try_copy
	mov	x1, x24
	mov	x0, x21
	ldr	x2, [x20]
	adrp	x3, _str104@page+8
	add	x3, x3, _str104@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_response__try_copy
	mov	x1, x24
	mov	x0, x21
	ldr	x2, [x20]
	adrp	x3, _str105@page+8
	add	x3, x3, _str105@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_response__try_copy
	mov	x1, x24
	mov	x0, x21
	ldr	x2, [x20]
	adrp	x3, _str106@page+8
	add	x3, x3, _str106@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_response__try_copy
	mov	x1, x24
	mov	x0, x21
	ldr	x2, [x20]
	adrp	x3, _str107@page+8
	add	x3, x3, _str107@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_response__try_copy
	mov	x1, x24
	mov	x0, x21
	ldr	x2, [x20]
	adrp	x3, _str108@page+8
	add	x3, x3, _str108@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_response__try_copy
	mov	x1, x24
	mov	x0, x21
	ldr	x2, [x20]
	adrp	x3, _str109@page+8
	add	x3, x3, _str109@pageoff+8
	mov	x21, x1
	mov	x20, x0
	bl	_web_response__try_copy
	mov	x5, x23
	mov	x4, x22
	mov	x1, x21
	mov	x0, x20
	cmp	x4, #0
	beq	L1775
	mov	x2, #8
	sub	x3, x4, x2
	ldr	x2, [x3]
	mov	x6, #1
	add	x2, x2, x6
	str	x2, [x3]
L1775:
	cmp	x5, #0
	beq	L1777
	mov	x2, #8
	sub	x3, x5, x2
	ldr	x2, [x3]
	mov	x6, #1
	add	x2, x2, x6
	str	x2, [x3]
L1777:
	mov	w3, #1
	mov	w2, #1
	mov	x21, x1
	mov	x20, x0
	bl	_nox_dict_set
	mov	x1, x21
	mov	x0, x20
	mov	x2, #8
	add	x2, x19, x2
	ldr	x2, [x2]
	mov	x21, x2
	mov	x2, #16
	add	x2, x19, x2
	ldr	x22, [x2]
	mov	x20, x1
	mov	x1, #32
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x4, #10
	str	x4, [x19]
	mov	x4, #8
	add	x5, x19, x4
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #16
	add	x5, x19, x4
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #24
	add	x5, x19, x4
	mov	x4, #0
	str	x4, [x5]
	mov	x4, x1
	mov	x21, x1
	mov	x1, x19
	mov	x20, x0
	bl	_nox_http_HttpResponse___init__
	mov	x1, x21
	mov	x0, x20
	cmp	x1, #0
	beq	L1779
	mov	w3, #1
	mov	w2, #1
	bl	_nox_dict_release
	mov	x0, x19
	b	L1780
L1779:
	mov	x0, x19
L1780:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
/* end function web_response_with_header */

.text
.balign 4
.globl _web_response_with_status_body_headers
_web_response_with_status_body_headers:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x1, #32
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x4, x22
	mov	x3, x21
	mov	x2, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #10
	str	x1, [x19]
	mov	x1, #8
	add	x5, x19, x1
	mov	x1, #0
	str	x1, [x5]
	mov	x1, #16
	add	x5, x19, x1
	mov	x1, #0
	str	x1, [x5]
	mov	x1, #24
	add	x5, x19, x1
	mov	x1, #0
	str	x1, [x5]
	mov	x1, x19
	bl	_nox_http_HttpResponse___init__
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function web_response_with_status_body_headers */

.text
.balign 4
.globl _web_cors_default_config
_web_cors_default_config:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, #40
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #15
	str	x1, [x19]
	mov	x1, #8
	add	x2, x19, x1
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #16
	add	x2, x19, x1
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #24
	add	x2, x19, x1
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #32
	add	x2, x19, x1
	mov	x1, #0
	str	x1, [x2]
	mov	w5, #0
	adrp	x4, _str112@page+8
	add	x4, x4, _str112@pageoff+8
	adrp	x3, _str111@page+8
	add	x3, x3, _str111@pageoff+8
	adrp	x2, _str110@page+8
	add	x2, x2, _str110@pageoff+8
	mov	x1, x19
	bl	_web_cors_CorsConfig___init__
	mov	x0, x19
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_cors_default_config */

.text
.balign 4
.globl _web_cors__apply_cors_headers
_web_cors__apply_cors_headers:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x19, x1
	mov	x1, x2
	mov	x2, #8
	add	x2, x19, x2
	ldr	x3, [x2]
	adrp	x2, _str113@page+8
	add	x2, x2, _str113@pageoff+8
	mov	x20, x0
	bl	_web_response_with_header
	mov	x21, x0
	mov	x0, x20
	mov	x1, #16
	add	x1, x19, x1
	ldr	x3, [x1]
	adrp	x2, _str114@page+8
	add	x2, x2, _str114@pageoff+8
	mov	x1, x21
	mov	x20, x0
	bl	_web_response_with_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, #24
	add	x1, x19, x1
	ldr	x3, [x1]
	adrp	x2, _str115@page+8
	add	x2, x2, _str115@pageoff+8
	mov	x1, x20
	mov	x22, x0
	bl	_web_response_with_header
	mov	x1, x0
	mov	x0, x22
	adrp	x3, _str117@page+8
	add	x3, x3, _str117@pageoff+8
	adrp	x2, _str116@page+8
	add	x2, x2, _str116@pageoff+8
	mov	x23, x1
	mov	x22, x0
	bl	_web_response_with_header
	mov	x1, x23
	mov	x23, x0
	mov	x0, x22
	mov	x2, #32
	add	x2, x19, x2
	ldr	w2, [x2]
	cmp	x1, #0
	cmp	x21, #0
	cmp	x20, #0
	cmp	w2, #0
	bne	L1795
	cmp	x1, #0
	beq	L1788
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x21
	mov	x0, x19
	b	L1789
L1788:
	mov	x1, x21
L1789:
	cmp	x1, #0
	beq	L1791
	mov	x22, x1
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x20
	mov	x0, x19
	b	L1792
L1791:
	mov	x1, x20
L1792:
	cmp	x1, #0
	beq	L1794
	mov	x21, x1
	bl	_nox_http_HttpResponse_release
L1794:
	mov	x0, x23
	b	L1808
L1795:
	mov	x22, x21
	mov	x21, x20
	adrp	x3, _str119@page+8
	add	x3, x3, _str119@pageoff+8
	adrp	x2, _str118@page+8
	add	x2, x2, _str118@pageoff+8
	mov	x20, x1
	mov	x1, x23
	mov	x19, x0
	bl	_web_response_with_header
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1798
	mov	x20, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x23
	mov	x0, x20
	b	L1799
L1798:
	mov	x1, x23
L1799:
	cmp	x1, #0
	beq	L1801
	mov	x20, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x22
	mov	x0, x20
	b	L1802
L1801:
	mov	x1, x22
L1802:
	cmp	x1, #0
	beq	L1804
	mov	x20, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x21
	mov	x0, x20
	b	L1805
L1804:
	mov	x1, x21
L1805:
	cmp	x1, #0
	beq	L1807
	bl	_nox_http_HttpResponse_release
	mov	x0, x19
	b	L1808
L1807:
	mov	x0, x19
L1808:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function web_cors__apply_cors_headers */

.text
.balign 4
.globl _web_cors_before_handler
_web_cors_before_handler:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	mov	x1, #24
	bl	_nox_rc_alloc
	mov	x1, x19
	adrp	x2, _closure_web_cors_before_handler_handler@page
	add	x2, x2, _closure_web_cors_before_handler_handler@pageoff
	str	x2, [x0]
	mov	x2, #8
	add	x3, x0, x2
	adrp	x2, _closure_web_cors_before_handler_handler_release@page
	add	x2, x2, _closure_web_cors_before_handler_handler_release@pageoff
	str	x2, [x3]
	cmp	x1, #0
	beq	L1811
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L1811:
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_cors_before_handler */

.text
.balign 4
.globl _web_cors_after_handler
_web_cors_after_handler:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	mov	x1, #24
	bl	_nox_rc_alloc
	mov	x1, x19
	adrp	x2, _closure_web_cors_after_handler_handler@page
	add	x2, x2, _closure_web_cors_after_handler_handler@pageoff
	str	x2, [x0]
	mov	x2, #8
	add	x3, x0, x2
	adrp	x2, _closure_web_cors_after_handler_handler_release@page
	add	x2, x2, _closure_web_cors_after_handler_handler_release@pageoff
	str	x2, [x3]
	cmp	x1, #0
	beq	L1815
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L1815:
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_cors_after_handler */

.text
.balign 4
.globl _main
_main:
	hint	#34
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [x29, 152]
	str	x20, [x29, 144]
	str	x21, [x29, 136]
	str	x22, [x29, 128]
	str	x23, [x29, 120]
	str	x24, [x29, 112]
	str	x25, [x29, 104]
	str	x26, [x29, 96]
	str	x27, [x29, 88]
	str	x28, [x29, 80]
	mov	x20, x1
	mov	w19, w0
	bl	_nox_runtime_init
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_nox_os_init
	mov	x0, x19
	mov	x1, #40
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #15
	str	x2, [x1]
	mov	x2, #8
	add	x19, x1, x2
	mov	x2, #0
	str	x2, [x19]
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
	mov	x2, #0
	str	x2, [x3]
	mov	w5, #0
	adrp	x4, _str122@page+8
	add	x4, x4, _str122@pageoff+8
	adrp	x3, _str121@page+8
	add	x3, x3, _str121@pageoff+8
	adrp	x2, _str120@page+8
	add	x2, x2, _str120@pageoff+8
	mov	x21, x1
	mov	x20, x0
	bl	_web_cors_CorsConfig___init__
	mov	x1, x21
	mov	x0, x20
	mov	x21, x1
	ldr	x1, [x19]
	adrp	x3, _str124@page+8
	add	x3, x3, _str124@pageoff+8
	adrp	x2, _str123@page+8
	add	x2, x2, _str123@pageoff+8
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L1887
	mov	x1, x21
	mov	x19, x0
	bl	_web_cors_before_handler
	mov	x22, x0
	mov	x0, x19
	mov	w1, #1
	mov	x19, x0
	bl	_nox_dict_new
	mov	x23, x0
	mov	x0, x19
	str	x23, [x29, 24]
	mov	x1, #40
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x20, x0
	mov	x0, x19
	mov	x1, #11
	str	x1, [x20]
	mov	x1, #8
	add	x2, x20, x1
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #16
	add	x2, x20, x1
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #24
	add	x2, x20, x1
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #32
	add	x2, x20, x1
	mov	x1, #0
	str	x1, [x2]
	mov	x5, x23
	adrp	x4, _str127@page+8
	add	x4, x4, _str127@pageoff+8
	adrp	x3, _str126@page+8
	add	x3, x3, _str126@pageoff+8
	adrp	x2, _str125@page+8
	add	x2, x2, _str125@pageoff+8
	mov	x1, x20
	mov	x19, x0
	bl	_nox_http_HttpRequest___init__
	mov	x0, x19
	mov	w1, #1
	mov	x19, x0
	bl	_nox_dict_new
	mov	x1, x0
	mov	x0, x19
	mov	x24, x1
	mov	x1, #24
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x24
	mov	x26, x0
	mov	x0, x19
	mov	x2, #12
	str	x2, [x26]
	mov	x2, #8
	add	x3, x26, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #16
	add	x3, x26, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x3, x1
	mov	x2, x20
	mov	x24, x1
	mov	x1, x26
	mov	x19, x0
	bl	_nox_router_Context___init__
	mov	x1, x24
	mov	x0, x19
	cmp	x1, #0
	beq	L1820
	mov	w3, #1
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x0, x19
L1820:
	ldr	x3, [x22]
	mov	x2, x26
	mov	x1, x22
	mov	x19, x0
	blr	x3
	mov	x24, x0
	mov	x0, x19
	str	x24, [x29, 40]
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x24
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1886
	cmp	x1, #0
	mov	x24, x1
	cset	w1, ne
	adrp	x2, _str128@page+8
	add	x2, x2, _str128@pageoff+8
	mov	x19, x0
	bl	_nox_test_assert_true
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x24
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1885
	cmp	x1, #0
	bne	L1824
	mov	x1, x23
	b	L1830
L1824:
	mov	x24, x1
	mov	x1, #8
	add	x1, x24, x1
	ldr	x1, [x1]
	adrp	x3, _str129@page+8
	add	x3, x3, _str129@pageoff+8
	mov	x2, #204
	mov	x19, x0
	bl	_nox_test_assert_eq_int
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x24
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1884
	mov	x25, x1
	mov	x1, #24
	add	x1, x25, x1
	ldr	x1, [x1]
	adrp	x2, _str130@page+8
	add	x2, x2, _str130@pageoff+8
	mov	x24, x1
	mov	w1, #1
	mov	x19, x0
	mov	x0, x24
	bl	_nox_dict_contains
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L1828
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #3
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str131@page+8
	add	x2, x2, _str131@pageoff+8
	mov	x25, x1
	mov	x19, x0
	bl	_KeyError___init__
	mov	x1, x25
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x24
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	beq	L1829
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1888
L1828:
	mov	x1, x24
L1829:
	adrp	x3, _str130@page+8
	add	x3, x3, _str130@pageoff+8
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_get
	mov	x1, x0
	mov	x0, x19
	adrp	x3, _str133@page+8
	add	x3, x3, _str133@pageoff+8
	adrp	x2, _str132@page+8
	add	x2, x2, _str132@pageoff+8
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x23
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1883
L1830:
	mov	x23, x1
	mov	x1, #40
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x23
	mov	x24, x0
	mov	x0, x19
	mov	x2, #11
	str	x2, [x24]
	mov	x2, #8
	add	x3, x24, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #16
	add	x3, x24, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #24
	add	x3, x24, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #32
	add	x2, x24, x2
	mov	x27, x1
	mov	x1, #0
	str	x1, [x2]
	mov	x5, x27
	adrp	x4, _str136@page+8
	add	x4, x4, _str136@pageoff+8
	adrp	x3, _str135@page+8
	add	x3, x3, _str135@pageoff+8
	adrp	x2, _str134@page+8
	add	x2, x2, _str134@pageoff+8
	mov	x1, x24
	mov	x19, x0
	bl	_nox_http_HttpRequest___init__
	mov	x0, x19
	mov	w1, #1
	mov	x19, x0
	bl	_nox_dict_new
	mov	x1, x0
	mov	x0, x19
	mov	x23, x1
	mov	x1, #24
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x23
	mov	x25, x0
	mov	x0, x19
	mov	x2, #12
	str	x2, [x25]
	mov	x2, #8
	add	x3, x25, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #16
	add	x3, x25, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x3, x1
	mov	x2, x24
	mov	x23, x1
	mov	x1, x25
	mov	x19, x0
	bl	_nox_router_Context___init__
	mov	x1, x23
	mov	x0, x19
	cmp	x1, #0
	beq	L1832
	mov	w3, #1
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x0, x19
L1832:
	ldr	x3, [x22]
	mov	x2, x25
	mov	x1, x22
	mov	x19, x0
	blr	x3
	mov	x23, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x23
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1882
	cmp	x1, #0
	cset	w23, eq
	cmp	w23, #0
	bne	L1835
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	w1, w23
	mov	x0, x19
	b	L1836
L1835:
	mov	w1, w23
L1836:
	adrp	x2, _str137@page+8
	add	x2, x2, _str137@pageoff+8
	mov	x19, x0
	bl	_nox_test_assert_true
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L1881
	mov	x1, x21
	mov	x19, x0
	bl	_web_cors_after_handler
	str	x0, [x29, 32]
	mov	x0, x19
	mov	w1, #1
	mov	x19, x0
	bl	_nox_dict_new
	mov	x1, x0
	mov	x0, x19
	str	x1, [x29, 64]
	mov	x23, x1
	mov	x1, #32
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x23
	mov	x23, x0
	mov	x0, x19
	mov	x2, #10
	str	x2, [x23]
	mov	x2, #8
	add	x3, x23, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #16
	add	x3, x23, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #24
	add	x3, x23, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x4, x1
	adrp	x3, _str138@page+8
	add	x3, x3, _str138@pageoff+8
	mov	x2, #200
	mov	x1, x23
	mov	x19, x0
	bl	_nox_http_HttpResponse___init__
	mov	x0, x19
	ldr	x1, [x29, 64]
	mov	x19, x1
	ldr	x1, [x29, 32]
	cmp	x19, #0
	beq	L1840
	mov	x1, x19
	mov	w3, #1
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x26
	mov	x0, x19
	mov	x26, x1
	ldr	x1, [x29, 32]
L1840:
	ldr	x4, [x1]
	mov	x3, x23
	mov	x2, x25
	mov	x28, x1
	mov	x19, x0
	blr	x4
	str	x0, [x29, 16]
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x26
	mov	w2, w0
	mov	x0, x19
	mov	x26, x1
	ldr	x1, [x29, 16]
	cmp	w2, #0
	bne	L1880
	mov	x19, x1
	mov	x1, #24
	add	x1, x19, x1
	ldr	x1, [x1]
	str	x1, [x29, 48]
	adrp	x2, _str139@page+8
	add	x2, x2, _str139@pageoff+8
	mov	x4, x1
	mov	w1, #1
	mov	x19, x0
	mov	x0, x4
	bl	_nox_dict_contains
	mov	x1, x26
	mov	w2, w0
	mov	x0, x19
	ldr	x4, [x29, 48]
	cmp	w2, #0
	bne	L1844
	mov	x26, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	str	x1, [x29, 56]
	mov	x2, #3
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str140@page+8
	add	x2, x2, _str140@pageoff+8
	mov	x19, x0
	bl	_KeyError___init__
	mov	x1, x26
	mov	x0, x19
	mov	x26, x1
	ldr	x1, [x29, 56]
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x26
	mov	w2, w0
	mov	x0, x19
	mov	x26, x1
	ldr	x1, [x29, 48]
	cmp	w2, #0
	beq	L1845
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1888
L1844:
	mov	x26, x1
	mov	x1, x4
L1845:
	adrp	x3, _str139@page+8
	add	x3, x3, _str139@pageoff+8
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_get
	mov	x1, x0
	mov	x0, x19
	adrp	x3, _str142@page+8
	add	x3, x3, _str142@pageoff+8
	adrp	x2, _str141@page+8
	add	x2, x2, _str141@pageoff+8
	mov	x19, x0
	bl	_nox_test_assert_eq_str
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x25
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1879
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, #0
	add	x2, sp, x2
	mov	x25, x1
	adrp	x1, _str143@page+8
	add	x1, x1, _str143@pageoff+8
	str	x1, [x2]
	mov	x19, x0
	adrp	x0, _fmt_str@page
	add	x0, x0, _fmt_str@pageoff
	bl	_printf
	mov	x1, x25
	mov	x0, x19
	ldr	x19, [x29, 16]
	ldr	x28, [x29, 32]
	ldr	x25, [x29, 40]
	ldr	x27, [x29, 24]
	mov	x2, #16
	add	sp, sp, x2
	cmp	x1, #0
	beq	L1848
	mov	x19, x0
	bl	_nox_router_Context_release
	mov	x1, x25
	mov	x0, x19
	ldr	x19, [x29, 16]
	ldr	x25, [x29, 32]
	ldr	x27, [x29, 24]
	b	L1849
L1848:
	mov	x1, x25
	mov	x25, x28
L1849:
	cmp	x1, #0
	beq	L1851
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x24
	mov	x0, x19
	ldr	x19, [x29, 16]
	ldr	x24, [x29, 24]
	b	L1852
L1851:
	mov	x1, x24
	mov	x24, x27
L1852:
	cmp	x1, #0
	beq	L1854
	mov	x19, x0
	bl	_nox_http_HttpRequest_release
	mov	x1, x22
	mov	x0, x19
	ldr	x22, [x29, 16]
	b	L1855
L1854:
	mov	x1, x22
	mov	x22, x19
L1855:
	cmp	x1, #0
	beq	L1857
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x19, x0
	blr	x2
	mov	x1, x26
	mov	x0, x19
	b	L1858
L1857:
	mov	x1, x26
L1858:
	cmp	x1, #0
	beq	L1860
	mov	x19, x0
	bl	_nox_router_Context_release
	mov	x1, x25
	mov	x0, x19
	b	L1861
L1860:
	mov	x1, x25
L1861:
	cmp	x1, #0
	beq	L1863
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x19, x0
	blr	x2
	mov	x1, x24
	mov	x0, x19
	b	L1864
L1863:
	mov	x1, x24
L1864:
	cmp	x1, #0
	beq	L1866
	mov	w3, #1
	mov	w2, #1
	mov	x19, x0
	bl	_nox_dict_release
	mov	x1, x23
	mov	x0, x19
	b	L1867
L1866:
	mov	x1, x23
L1867:
	cmp	x1, #0
	beq	L1869
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x22
	mov	x0, x19
	b	L1870
L1869:
	mov	x1, x22
L1870:
	cmp	x1, #0
	beq	L1872
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x21
	mov	x0, x19
	b	L1873
L1872:
	mov	x1, x21
L1873:
	cmp	x1, #0
	beq	L1875
	mov	x19, x0
	bl	_web_cors_CorsConfig_release
	mov	x1, x20
	mov	x0, x19
	b	L1876
L1875:
	mov	x1, x20
L1876:
	cmp	x1, #0
	beq	L1878
	mov	x19, x0
	bl	_nox_http_HttpRequest_release
	mov	x0, x19
L1878:
	bl	_nox_runtime_deinit
	mov	w0, #0
	b	L1888
L1879:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1888
L1880:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1888
L1881:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1888
L1882:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1888
L1883:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1888
L1884:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1888
L1885:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1888
L1886:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L1888
L1887:
	bl	_nox_unhandled_exception
	mov	w0, #0
L1888:
	ldr	x19, [x29, 152]
	ldr	x20, [x29, 144]
	ldr	x21, [x29, 136]
	ldr	x22, [x29, 128]
	ldr	x23, [x29, 120]
	ldr	x24, [x29, 112]
	ldr	x25, [x29, 104]
	ldr	x26, [x29, 96]
	ldr	x27, [x29, 88]
	ldr	x28, [x29, 80]
	ldp	x29, x30, [sp], 160
	ret
/* end function main */

.text
.balign 4
.globl _List_closure_release
_List_closure_release:
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
	bgt	L1898
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
L1892:
	cmp	x19, x21
	bge	L1897
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1895
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x23, x0
	blr	x2
	mov	x1, x24
	mov	x0, x23
	b	L1896
L1895:
	mov	x1, x24
L1896:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L1892
L1897:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L1898:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function List_closure_release */

.text
.balign 4
.globl _List_nox_router_Route_release
_List_nox_router_Route_release:
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
	bgt	L1908
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
L1902:
	cmp	x19, x21
	bge	L1907
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1905
	mov	x23, x0
	bl	_nox_router_Route_release
	mov	x1, x24
	mov	x0, x23
	b	L1906
L1905:
	mov	x1, x24
L1906:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L1902
L1907:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L1908:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function List_nox_router_Route_release */

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
	bgt	L1918
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
L1912:
	cmp	x19, x21
	bge	L1917
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1915
	mov	x23, x0
	bl	_nox_str_release
	mov	x1, x24
	mov	x0, x23
	b	L1916
L1915:
	mov	x1, x24
L1916:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L1912
L1917:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L1918:
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
	bgt	L1928
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
L1922:
	cmp	x19, x21
	bge	L1927
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1925
	mov	x23, x0
	bl	_JsonValue_release
	mov	x1, x24
	mov	x0, x23
	b	L1926
L1925:
	mov	x1, x24
L1926:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L1922
L1927:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L1928:
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
.globl _List_closure_eq
_List_closure_eq:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x3, [x1]
	ldr	x0, [x2]
	cmp	x3, x0
	bne	L1938
	mov	x0, #0
L1931:
	cmp	x0, x3
	bge	L1937
	mov	x4, #8
	mul	x4, x0, x4
	mov	x5, #16
	add	x5, x4, x5
	add	x4, x1, x5
	add	x5, x2, x5
	ldr	x4, [x4]
	ldr	x5, [x5]
	cmp	x4, #0
	cset	w6, eq
	cmp	x5, #0
	cset	w7, eq
	orr	w8, w6, w7
	cmp	w8, #0
	bne	L1934
	cmp	x4, x5
	bne	L1938
	b	L1936
L1934:
	mov	w5, w7
	mov	w4, w6
	and	w4, w4, w5
	cmp	w4, #0
	beq	L1938
L1936:
	mov	x4, #1
	add	x0, x0, x4
	b	L1931
L1937:
	mov	w0, #1
	b	L1939
L1938:
	mov	w0, #0
L1939:
	ldp	x29, x30, [sp], 16
	ret
/* end function List_closure_eq */

.text
.balign 4
.globl _List_nox_router_Route_eq
_List_nox_router_Route_eq:
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
	bne	L1949
	mov	x19, #0
L1942:
	cmp	x19, x20
	bge	L1948
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
	bne	L1945
	mov	x21, x0
	bl	_nox_router_Route_eq
	mov	x2, x23
	mov	x1, x22
	mov	w3, w0
	mov	x0, x21
	cmp	w3, #0
	beq	L1949
	b	L1947
L1945:
	mov	x2, x23
	mov	x1, x22
	and	w3, w3, w4
	cmp	w3, #0
	beq	L1949
L1947:
	mov	x3, #1
	add	x19, x19, x3
	b	L1942
L1948:
	mov	w0, #1
	b	L1950
L1949:
	mov	w0, #0
L1950:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function List_nox_router_Route_eq */

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
	bne	L1958
	mov	x19, #0
L1953:
	cmp	x19, x20
	bge	L1957
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
	bne	L1958
	mov	x0, #1
	add	x19, x19, x0
	mov	x22, x2
	b	L1953
L1957:
	mov	w0, #1
	b	L1959
L1958:
	mov	w0, #0
L1959:
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
	bne	L1969
	mov	x19, #0
L1962:
	cmp	x19, x20
	bge	L1968
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
	bne	L1965
	mov	x21, x0
	bl	_JsonValue_eq
	mov	x2, x23
	mov	x1, x22
	mov	w3, w0
	mov	x0, x21
	cmp	w3, #0
	beq	L1969
	b	L1967
L1965:
	mov	x2, x23
	mov	x1, x22
	and	w3, w3, w4
	cmp	w3, #0
	beq	L1969
L1967:
	mov	x3, #1
	add	x19, x19, x3
	b	L1962
L1968:
	mov	w0, #1
	b	L1970
L1969:
	mov	w0, #0
L1970:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function List_JsonValue_eq */

.text
.balign 4
.globl _closure_web_cors_after_handler_handler
_closure_web_cors_after_handler_handler:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x2, x1
	mov	x1, x3
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x2, #8
	add	x2, x19, x2
	ldr	x3, [x2]
	adrp	x2, _str144@page+8
	add	x2, x2, _str144@pageoff+8
	mov	x20, x0
	bl	_web_response_with_header
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	add	x2, x19, x2
	ldr	x3, [x2]
	adrp	x2, _str145@page+8
	add	x2, x2, _str145@pageoff+8
	mov	x21, x1
	mov	x20, x0
	bl	_web_response_with_header
	mov	x1, x21
	mov	x22, x0
	mov	x0, x20
	mov	x2, #24
	add	x2, x19, x2
	ldr	x3, [x2]
	adrp	x2, _str146@page+8
	add	x2, x2, _str146@pageoff+8
	mov	x21, x1
	mov	x1, x22
	mov	x20, x0
	bl	_web_response_with_header
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	adrp	x3, _str148@page+8
	add	x3, x3, _str148@pageoff+8
	adrp	x2, _str147@page+8
	add	x2, x2, _str147@pageoff+8
	mov	x23, x1
	mov	x1, x21
	mov	x20, x0
	bl	_web_response_with_header
	mov	x1, x23
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x2, #32
	add	x2, x19, x2
	ldr	w2, [x2]
	cmp	x1, #0
	cmp	x22, #0
	cmp	x21, #0
	cmp	w2, #0
	bne	L1981
	cmp	x1, #0
	beq	L1974
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x22
	mov	x0, x19
	b	L1975
L1974:
	mov	x1, x22
L1975:
	cmp	x1, #0
	beq	L1977
	mov	x23, x1
	mov	x19, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x21
	mov	x0, x19
	b	L1978
L1977:
	mov	x1, x21
L1978:
	cmp	x1, #0
	beq	L1980
	mov	x22, x1
	bl	_nox_http_HttpResponse_release
L1980:
	mov	x0, x20
	b	L1993
L1981:
	mov	x23, x22
	mov	x22, x21
	adrp	x3, _str150@page+8
	add	x3, x3, _str150@pageoff+8
	adrp	x2, _str149@page+8
	add	x2, x2, _str149@pageoff+8
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	_web_response_with_header
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1984
	mov	x21, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x23
	mov	x0, x21
	b	L1985
L1984:
	mov	x1, x23
L1985:
	cmp	x1, #0
	beq	L1987
	mov	x21, x0
	bl	_nox_http_HttpResponse_release
	mov	x1, x22
	mov	x0, x21
	b	L1988
L1987:
	mov	x1, x22
L1988:
	cmp	x1, #0
	beq	L1990
	mov	x21, x0
	bl	_nox_http_HttpResponse_release
	mov	x0, x21
L1990:
	cmp	x20, #0
	beq	L1992
	mov	x1, x20
	bl	_nox_http_HttpResponse_release
	mov	x0, x19
	b	L1993
L1992:
	mov	x0, x19
L1993:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function closure_web_cors_after_handler_handler */

.text
.balign 4
.globl _closure_web_cors_after_handler_handler_release
_closure_web_cors_after_handler_handler_release:
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
	bgt	L1999
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1997
	mov	x19, x0
	bl	_web_cors_CorsConfig_release
	mov	x1, x20
	mov	x0, x19
	b	L1998
L1997:
	mov	x1, x20
L1998:
	mov	x2, #24
	bl	_nox_rc_free_payload
L1999:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function closure_web_cors_after_handler_handler_release */

.text
.balign 4
.globl _closure_web_cors_before_handler_handler
_closure_web_cors_before_handler_handler:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x19, [x1]
	mov	x20, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _str151@page+8
	add	x1, x1, _str151@pageoff+8
	bl	_strcmp
	mov	w1, w0
	mov	x0, x20
	cmp	w1, #0
	beq	L2002
	mov	x0, #0
	b	L2013
L2002:
	mov	w1, #1
	mov	x20, x0
	bl	_nox_dict_new
	mov	x1, x0
	mov	x0, x20
	mov	x2, #8
	add	x2, x19, x2
	ldr	x5, [x2]
	cmp	x5, #0
	beq	L2004
	mov	x2, #8
	sub	x3, x5, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L2004:
	adrp	x4, _str152@page+8
	add	x4, x4, _str152@pageoff+8
	mov	w3, #1
	mov	w2, #1
	mov	x21, x1
	mov	x20, x0
	bl	_nox_dict_set
	mov	x1, x21
	mov	x0, x20
	mov	x2, #16
	add	x2, x19, x2
	ldr	x5, [x2]
	cmp	x5, #0
	beq	L2006
	mov	x2, #8
	sub	x3, x5, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L2006:
	adrp	x4, _str153@page+8
	add	x4, x4, _str153@pageoff+8
	mov	w3, #1
	mov	w2, #1
	mov	x21, x1
	mov	x20, x0
	bl	_nox_dict_set
	mov	x1, x21
	mov	x0, x20
	mov	x2, #24
	add	x2, x19, x2
	ldr	x5, [x2]
	cmp	x5, #0
	beq	L2008
	mov	x2, #8
	sub	x3, x5, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L2008:
	adrp	x4, _str154@page+8
	add	x4, x4, _str154@pageoff+8
	mov	w3, #1
	mov	w2, #1
	mov	x21, x1
	mov	x20, x0
	bl	_nox_dict_set
	mov	x1, x21
	mov	x0, x20
	adrp	x5, _str156@page+8
	add	x5, x5, _str156@pageoff+8
	adrp	x4, _str155@page+8
	add	x4, x4, _str155@pageoff+8
	mov	w3, #1
	mov	w2, #1
	mov	x21, x1
	mov	x20, x0
	bl	_nox_dict_set
	mov	x1, x21
	mov	x0, x20
	adrp	x5, _str158@page+8
	add	x5, x5, _str158@pageoff+8
	adrp	x4, _str157@page+8
	add	x4, x4, _str157@pageoff+8
	mov	w3, #1
	mov	w2, #1
	mov	x21, x1
	mov	x20, x0
	bl	_nox_dict_set
	mov	x1, x21
	mov	x0, x20
	mov	x2, #32
	add	x2, x19, x2
	ldr	w2, [x2]
	cmp	w2, #0
	beq	L2010
	adrp	x5, _str160@page+8
	add	x5, x5, _str160@pageoff+8
	adrp	x4, _str159@page+8
	add	x4, x4, _str159@pageoff+8
	mov	w3, #1
	mov	w2, #1
	mov	x20, x1
	mov	x19, x0
	bl	_nox_dict_set
	mov	x1, x20
	mov	x0, x19
L2010:
	mov	x20, x1
	mov	x1, #32
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x2, #10
	str	x2, [x19]
	mov	x2, #8
	add	x3, x19, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #16
	add	x3, x19, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #24
	add	x3, x19, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x4, x1
	adrp	x3, _str161@page+8
	add	x3, x3, _str161@pageoff+8
	mov	x2, #204
	mov	x21, x1
	mov	x1, x19
	mov	x20, x0
	bl	_nox_http_HttpResponse___init__
	mov	x1, x21
	mov	x0, x20
	cmp	x1, #0
	beq	L2012
	mov	w3, #1
	mov	w2, #1
	bl	_nox_dict_release
	mov	x0, x19
	b	L2013
L2012:
	mov	x0, x19
L2013:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function closure_web_cors_before_handler_handler */

.text
.balign 4
.globl _closure_web_cors_before_handler_handler_release
_closure_web_cors_before_handler_handler_release:
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
	bgt	L2019
	mov	x20, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L2017
	mov	x19, x0
	bl	_web_cors_CorsConfig_release
	mov	x1, x20
	mov	x0, x19
	b	L2018
L2017:
	mov	x1, x20
L2018:
	mov	x2, #24
	bl	_nox_rc_free_payload
L2019:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function closure_web_cors_before_handler_handler_release */

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
	.ascii "anahtar bulunamadi"
	.byte 0
/* end data */

.data
.balign 8
_str35:
	.quad 1073741824
	.ascii "GET"
	.byte 0
/* end data */

.data
.balign 8
_str36:
	.quad 1073741824
	.ascii "POST"
	.byte 0
/* end data */

.data
.balign 8
_str37:
	.quad 1073741824
	.ascii "PUT"
	.byte 0
/* end data */

.data
.balign 8
_str38:
	.quad 1073741824
	.ascii "DELETE"
	.byte 0
/* end data */

.data
.balign 8
_str39:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str40:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str41:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str42:
	.quad 1073741824
	.ascii "not found"
	.byte 0
/* end data */

.data
.balign 8
_str43:
	.quad 1073741824
	.ascii "dosya okunamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str44:
	.quad 1073741824
	.ascii "dosya yazilamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str45:
	.quad 1073741824
	.ascii "dosyaya eklenemedi: "
	.byte 0
/* end data */

.data
.balign 8
_str46:
	.quad 1073741824
	.ascii "meta veri okunamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str47:
	.quad 1073741824
	.ascii "dizin okunamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str48:
	.quad 1073741824
	.ascii "kopyalanamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str49:
	.quad 1073741824
	.ascii " -> "
	.byte 0
/* end data */

.data
.balign 8
_str50:
	.quad 1073741824
	.ascii "yeniden adlandirilamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str51:
	.quad 1073741824
	.ascii " -> "
	.byte 0
/* end data */

.data
.balign 8
_str52:
	.quad 1073741824
	.ascii "silinemedi: "
	.byte 0
/* end data */

.data
.balign 8
_str53:
	.quad 1073741824
	.ascii "dizin olusturulamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str54:
	.quad 1073741824
	.ascii ": beklenen "
	.byte 0
/* end data */

.data
.balign 8
_str55:
	.quad 1073741824
	.ascii ", alinan "
	.byte 0
/* end data */

.data
.balign 8
_str56:
	.quad 1073741824
	.ascii ": beklenen \""
	.byte 0
/* end data */

.data
.balign 8
_str57:
	.quad 1073741824
	.ascii "\", alinan \""
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
	.ascii ": beklenen "
	.byte 0
/* end data */

.data
.balign 8
_str60:
	.quad 1073741824
	.ascii ", alinan "
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
	.ascii "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<testsuite name=\""
	.byte 0
/* end data */

.data
.balign 8
_str70:
	.quad 1073741824
	.ascii "&"
	.byte 0
/* end data */

.data
.balign 8
_str71:
	.quad 1073741824
	.ascii "&amp;"
	.byte 0
/* end data */

.data
.balign 8
_str72:
	.quad 1073741824
	.ascii "<"
	.byte 0
/* end data */

.data
.balign 8
_str73:
	.quad 1073741824
	.ascii "&lt;"
	.byte 0
/* end data */

.data
.balign 8
_str74:
	.quad 1073741824
	.ascii ">"
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.quad 1073741824
	.ascii "&gt;"
	.byte 0
/* end data */

.data
.balign 8
_str76:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str77:
	.quad 1073741824
	.ascii "&quot;"
	.byte 0
/* end data */

.data
.balign 8
_str78:
	.quad 1073741824
	.ascii "\" tests=\""
	.byte 0
/* end data */

.data
.balign 8
_str79:
	.quad 1073741824
	.ascii "\" failures=\""
	.byte 0
/* end data */

.data
.balign 8
_str80:
	.quad 1073741824
	.ascii "\">\n"
	.byte 0
/* end data */

.data
.balign 8
_str81:
	.quad 1073741824
	.ascii "</testsuite>\n"
	.byte 0
/* end data */

.data
.balign 8
_str82:
	.quad 1073741824
	.ascii "dinleme basarisiz: port "
	.byte 0
/* end data */

.data
.balign 8
_str83:
	.quad 1073741824
	.ascii "istek basarisiz: "
	.byte 0
/* end data */

.data
.balign 8
_str84:
	.quad 1073741824
	.ascii "istek basarisiz: "
	.byte 0
/* end data */

.data
.balign 8
_str85:
	.quad 1073741824
	.ascii ""
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
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str88:
	.quad 1073741824
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str89:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str90:
	.quad 1073741824
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str91:
	.quad 1073741824
	.ascii "Content-Type"
	.byte 0
/* end data */

.data
.balign 8
_str92:
	.quad 1073741824
	.ascii "application/json; charset=utf-8"
	.byte 0
/* end data */

.data
.balign 8
_str93:
	.quad 1073741824
	.ascii "Content-Type"
	.byte 0
/* end data */

.data
.balign 8
_str94:
	.quad 1073741824
	.ascii "text/plain; charset=utf-8"
	.byte 0
/* end data */

.data
.balign 8
_str95:
	.quad 1073741824
	.ascii "Location"
	.byte 0
/* end data */

.data
.balign 8
_str96:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str97:
	.quad 1073741824
	.ascii "anahtar bulunamadi"
	.byte 0
/* end data */

.data
.balign 8
_str98:
	.quad 1073741824
	.ascii "Content-Type"
	.byte 0
/* end data */

.data
.balign 8
_str99:
	.quad 1073741824
	.ascii "Location"
	.byte 0
/* end data */

.data
.balign 8
_str100:
	.quad 1073741824
	.ascii "Set-Cookie"
	.byte 0
/* end data */

.data
.balign 8
_str101:
	.quad 1073741824
	.ascii "Cache-Control"
	.byte 0
/* end data */

.data
.balign 8
_str102:
	.quad 1073741824
	.ascii "WWW-Authenticate"
	.byte 0
/* end data */

.data
.balign 8
_str103:
	.quad 1073741824
	.ascii "Access-Control-Allow-Origin"
	.byte 0
/* end data */

.data
.balign 8
_str104:
	.quad 1073741824
	.ascii "Access-Control-Allow-Methods"
	.byte 0
/* end data */

.data
.balign 8
_str105:
	.quad 1073741824
	.ascii "Access-Control-Allow-Headers"
	.byte 0
/* end data */

.data
.balign 8
_str106:
	.quad 1073741824
	.ascii "Access-Control-Allow-Credentials"
	.byte 0
/* end data */

.data
.balign 8
_str107:
	.quad 1073741824
	.ascii "Access-Control-Max-Age"
	.byte 0
/* end data */

.data
.balign 8
_str108:
	.quad 1073741824
	.ascii "Vary"
	.byte 0
/* end data */

.data
.balign 8
_str109:
	.quad 1073741824
	.ascii "Authorization"
	.byte 0
/* end data */

.data
.balign 8
_str110:
	.quad 1073741824
	.ascii "*"
	.byte 0
/* end data */

.data
.balign 8
_str111:
	.quad 1073741824
	.ascii "GET,POST,PUT,DELETE,OPTIONS"
	.byte 0
/* end data */

.data
.balign 8
_str112:
	.quad 1073741824
	.ascii "Authorization,Content-Type"
	.byte 0
/* end data */

.data
.balign 8
_str113:
	.quad 1073741824
	.ascii "Access-Control-Allow-Origin"
	.byte 0
/* end data */

.data
.balign 8
_str114:
	.quad 1073741824
	.ascii "Access-Control-Allow-Methods"
	.byte 0
/* end data */

.data
.balign 8
_str115:
	.quad 1073741824
	.ascii "Access-Control-Allow-Headers"
	.byte 0
/* end data */

.data
.balign 8
_str116:
	.quad 1073741824
	.ascii "Vary"
	.byte 0
/* end data */

.data
.balign 8
_str117:
	.quad 1073741824
	.ascii "Origin"
	.byte 0
/* end data */

.data
.balign 8
_str118:
	.quad 1073741824
	.ascii "Access-Control-Allow-Credentials"
	.byte 0
/* end data */

.data
.balign 8
_str119:
	.quad 1073741824
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
_str120:
	.quad 1073741824
	.ascii "*"
	.byte 0
/* end data */

.data
.balign 8
_str121:
	.quad 1073741824
	.ascii "GET,POST,PUT,DELETE,OPTIONS"
	.byte 0
/* end data */

.data
.balign 8
_str122:
	.quad 1073741824
	.ascii "Authorization,Content-Type"
	.byte 0
/* end data */

.data
.balign 8
_str123:
	.quad 1073741824
	.ascii "*"
	.byte 0
/* end data */

.data
.balign 8
_str124:
	.quad 1073741824
	.ascii "default origin"
	.byte 0
/* end data */

.data
.balign 8
_str125:
	.quad 1073741824
	.ascii "OPTIONS"
	.byte 0
/* end data */

.data
.balign 8
_str126:
	.quad 1073741824
	.ascii "/x"
	.byte 0
/* end data */

.data
.balign 8
_str127:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str128:
	.quad 1073741824
	.ascii "preflight response"
	.byte 0
/* end data */

.data
.balign 8
_str129:
	.quad 1073741824
	.ascii "preflight status"
	.byte 0
/* end data */

.data
.balign 8
_str130:
	.quad 1073741824
	.ascii "Access-Control-Allow-Origin"
	.byte 0
/* end data */

.data
.balign 8
_str131:
	.quad 1073741824
	.ascii "anahtar bulunamadi"
	.byte 0
/* end data */

.data
.balign 8
_str132:
	.quad 1073741824
	.ascii "*"
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.quad 1073741824
	.ascii "preflight acao"
	.byte 0
/* end data */

.data
.balign 8
_str134:
	.quad 1073741824
	.ascii "GET"
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.quad 1073741824
	.ascii "/x"
	.byte 0
/* end data */

.data
.balign 8
_str136:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str137:
	.quad 1073741824
	.ascii "non-options passes"
	.byte 0
/* end data */

.data
.balign 8
_str138:
	.quad 1073741824
	.ascii "ok"
	.byte 0
/* end data */

.data
.balign 8
_str139:
	.quad 1073741824
	.ascii "Access-Control-Allow-Origin"
	.byte 0
/* end data */

.data
.balign 8
_str140:
	.quad 1073741824
	.ascii "anahtar bulunamadi"
	.byte 0
/* end data */

.data
.balign 8
_str141:
	.quad 1073741824
	.ascii "*"
	.byte 0
/* end data */

.data
.balign 8
_str142:
	.quad 1073741824
	.ascii "after acao"
	.byte 0
/* end data */

.data
.balign 8
_str143:
	.quad 1073741824
	.ascii "cors_test ok"
	.byte 0
/* end data */

.data
.balign 8
_str144:
	.quad 1073741824
	.ascii "Access-Control-Allow-Origin"
	.byte 0
/* end data */

.data
.balign 8
_str145:
	.quad 1073741824
	.ascii "Access-Control-Allow-Methods"
	.byte 0
/* end data */

.data
.balign 8
_str146:
	.quad 1073741824
	.ascii "Access-Control-Allow-Headers"
	.byte 0
/* end data */

.data
.balign 8
_str147:
	.quad 1073741824
	.ascii "Vary"
	.byte 0
/* end data */

.data
.balign 8
_str148:
	.quad 1073741824
	.ascii "Origin"
	.byte 0
/* end data */

.data
.balign 8
_str149:
	.quad 1073741824
	.ascii "Access-Control-Allow-Credentials"
	.byte 0
/* end data */

.data
.balign 8
_str150:
	.quad 1073741824
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
_str151:
	.quad 1073741824
	.ascii "OPTIONS"
	.byte 0
/* end data */

.data
.balign 8
_str152:
	.quad 1073741824
	.ascii "Access-Control-Allow-Origin"
	.byte 0
/* end data */

.data
.balign 8
_str153:
	.quad 1073741824
	.ascii "Access-Control-Allow-Methods"
	.byte 0
/* end data */

.data
.balign 8
_str154:
	.quad 1073741824
	.ascii "Access-Control-Allow-Headers"
	.byte 0
/* end data */

.data
.balign 8
_str155:
	.quad 1073741824
	.ascii "Access-Control-Max-Age"
	.byte 0
/* end data */

.data
.balign 8
_str156:
	.quad 1073741824
	.ascii "86400"
	.byte 0
/* end data */

.data
.balign 8
_str157:
	.quad 1073741824
	.ascii "Vary"
	.byte 0
/* end data */

.data
.balign 8
_str158:
	.quad 1073741824
	.ascii "Origin"
	.byte 0
/* end data */

.data
.balign 8
_str159:
	.quad 1073741824
	.ascii "Access-Control-Allow-Credentials"
	.byte 0
/* end data */

.data
.balign 8
_str160:
	.quad 1073741824
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
_str161:
	.quad 1073741824
	.ascii ""
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

