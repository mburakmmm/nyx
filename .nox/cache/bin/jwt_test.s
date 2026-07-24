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
.globl _nox_time_DateTime___init__
_nox_time_DateTime___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	str	x2, [x0]
	mov	x0, #16
	add	x0, x1, x0
	str	x3, [x0]
	mov	x0, #24
	add	x0, x1, x0
	str	x4, [x0]
	mov	x0, #32
	add	x0, x1, x0
	str	x5, [x0]
	mov	x0, #40
	add	x0, x1, x0
	str	x6, [x0]
	mov	x0, #48
	add	x0, x1, x0
	str	x7, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_DateTime___init__ */

.text
.balign 4
.globl _nox_time_DateTime_to_str
_nox_time_DateTime_to_str:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _str34@page+8
	add	x2, x2, _str34@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L456
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L455
	mov	x1, x21
	b	L457
L455:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L457
L456:
	mov	x1, x21
L457:
	mov	x22, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #10
	blt	L460
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x17, x22
	mov	x22, x1
	mov	x1, x17
	b	L466
L460:
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x2, x1
	mov	x21, x1
	adrp	x1, _str35@page+8
	add	x1, x1, _str35@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L464
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L463
	mov	x1, x22
	b	L465
L463:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x21
	b	L465
L464:
	mov	x1, x22
L465:
	mov	x22, x19
L466:
	mov	x2, x22
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L470
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L469
	mov	x1, x22
	b	L471
L469:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L471
L470:
	mov	x1, x22
L471:
	cmp	x1, #0
	beq	L475
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L474
	mov	x1, x21
	b	L476
L474:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L476
L475:
	mov	x1, x21
L476:
	adrp	x2, _str36@page+8
	add	x2, x2, _str36@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L480
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L479
	mov	x1, x21
	b	L481
L479:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L481
L480:
	mov	x1, x21
L481:
	mov	x22, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #10
	blt	L484
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x17, x22
	mov	x22, x1
	mov	x1, x17
	b	L490
L484:
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x2, x1
	mov	x21, x1
	adrp	x1, _str37@page+8
	add	x1, x1, _str37@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L488
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L487
	mov	x1, x22
	b	L489
L487:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x21
	b	L489
L488:
	mov	x1, x22
L489:
	mov	x22, x19
L490:
	mov	x2, x22
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
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
	mov	x1, x22
	b	L495
L493:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L495
L494:
	mov	x1, x22
L495:
	cmp	x1, #0
	beq	L499
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L498
	mov	x1, x21
	b	L500
L498:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L500
L499:
	mov	x1, x21
L500:
	adrp	x2, _str38@page+8
	add	x2, x2, _str38@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L504
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L503
	mov	x1, x21
	b	L505
L503:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L505
L504:
	mov	x1, x21
L505:
	mov	x22, x1
	mov	x1, #32
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #10
	blt	L508
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x17, x22
	mov	x22, x1
	mov	x1, x17
	b	L514
L508:
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x2, x1
	mov	x21, x1
	adrp	x1, _str39@page+8
	add	x1, x1, _str39@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L512
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L511
	mov	x1, x22
	b	L513
L511:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x21
	b	L513
L512:
	mov	x1, x22
L513:
	mov	x22, x19
L514:
	mov	x2, x22
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L518
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L517
	mov	x1, x22
	b	L519
L517:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L519
L518:
	mov	x1, x22
L519:
	cmp	x1, #0
	beq	L523
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L522
	mov	x1, x21
	b	L524
L522:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L524
L523:
	mov	x1, x21
L524:
	adrp	x2, _str40@page+8
	add	x2, x2, _str40@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L528
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L527
	mov	x1, x21
	b	L529
L527:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L529
L528:
	mov	x1, x21
L529:
	mov	x22, x1
	mov	x1, #40
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #10
	blt	L532
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x17, x22
	mov	x22, x1
	mov	x1, x17
	b	L538
L532:
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x2, x1
	mov	x21, x1
	adrp	x1, _str41@page+8
	add	x1, x1, _str41@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L536
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L535
	mov	x1, x22
	b	L537
L535:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x21
	b	L537
L536:
	mov	x1, x22
L537:
	mov	x22, x19
L538:
	mov	x2, x22
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L542
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L541
	mov	x1, x22
	b	L543
L541:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L543
L542:
	mov	x1, x22
L543:
	cmp	x1, #0
	beq	L547
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L546
	mov	x1, x21
	b	L548
L546:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L548
L547:
	mov	x1, x21
L548:
	adrp	x2, _str42@page+8
	add	x2, x2, _str42@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L552
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L551
	mov	x1, x20
	b	L553
L551:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L553
L552:
	mov	x1, x20
L553:
	mov	x2, #48
	add	x1, x1, x2
	ldr	x1, [x1]
	cmp	x1, #10
	blt	L556
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x17, x21
	mov	x21, x1
	mov	x1, x17
	b	L562
L556:
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x2, x1
	mov	x20, x1
	adrp	x1, _str43@page+8
	add	x1, x1, _str43@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L560
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L559
	mov	x1, x21
	b	L561
L559:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L561
L560:
	mov	x1, x21
L561:
	mov	x21, x19
L562:
	mov	x2, x21
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L566
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L565
	mov	x1, x21
	b	L567
L565:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L567
L566:
	mov	x1, x21
L567:
	cmp	x1, #0
	beq	L571
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L570
	mov	x0, x19
	b	L572
L570:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L572
L571:
	mov	x0, x19
L572:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_time_DateTime_to_str */

.text
.balign 4
.globl _nox_time_DateTime_release
_nox_time_DateTime_release:
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
	bgt	L575
	mov	x2, #56
	bl	_nox_rc_free_payload
L575:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_DateTime_release */

.text
.balign 4
.globl _nox_time_DateTime_eq
_nox_time_DateTime_eq:
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
	bne	L582
	mov	x0, #16
	add	x0, x1, x0
	mov	x3, #16
	add	x3, x2, x3
	ldr	x0, [x0]
	ldr	x3, [x3]
	cmp	x0, x3
	bne	L582
	mov	x0, #24
	add	x0, x1, x0
	mov	x3, #24
	add	x3, x2, x3
	ldr	x0, [x0]
	ldr	x3, [x3]
	cmp	x0, x3
	bne	L582
	mov	x0, #32
	add	x0, x1, x0
	mov	x3, #32
	add	x3, x2, x3
	ldr	x0, [x0]
	ldr	x3, [x3]
	cmp	x0, x3
	bne	L582
	mov	x0, #40
	add	x0, x1, x0
	mov	x3, #40
	add	x3, x2, x3
	ldr	x0, [x0]
	ldr	x3, [x3]
	cmp	x0, x3
	bne	L582
	mov	x0, #48
	add	x0, x1, x0
	mov	x1, #48
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	cmp	x0, x1
	beq	L583
L582:
	mov	w0, #0
	b	L584
L583:
	mov	w0, #1
L584:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_DateTime_eq */

.text
.balign 4
.globl _nox_time_DateTime_trace
_nox_time_DateTime_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_DateTime_trace */

.text
.balign 4
.globl _nox_time_DateTime_gc_free
_nox_time_DateTime_gc_free:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #56
	bl	_nox_rc_free_payload
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_DateTime_gc_free */

.text
.balign 4
.globl _nox_time_Duration___init__
_nox_time_Duration___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	str	x2, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_Duration___init__ */

.text
.balign 4
.globl _nox_time_Duration_as_ms
_nox_time_Duration_as_ms:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_Duration_as_ms */

.text
.balign 4
.globl _nox_time_Duration_release
_nox_time_Duration_release:
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
	bgt	L595
	mov	x2, #16
	bl	_nox_rc_free_payload
L595:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_Duration_release */

.text
.balign 4
.globl _nox_time_Duration_eq
_nox_time_Duration_eq:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	mov	x1, #8
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	cmp	x0, x1
	beq	L598
	mov	w0, #0
	b	L599
L598:
	mov	w0, #1
L599:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_Duration_eq */

.text
.balign 4
.globl _nox_time_Duration_trace
_nox_time_Duration_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_Duration_trace */

.text
.balign 4
.globl _nox_time_Duration_gc_free
_nox_time_Duration_gc_free:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #16
	bl	_nox_rc_free_payload
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_Duration_gc_free */

.text
.balign 4
.globl _nox_time_Instant___init__
_nox_time_Instant___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	str	x2, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_Instant___init__ */

.text
.balign 4
.globl _nox_time_Instant_elapsed_ms
_nox_time_Instant_elapsed_ms:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	_nox_time_monotonic_ms_raw
	mov	x1, x19
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	sub	x0, x0, x1
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_time_Instant_elapsed_ms */

.text
.balign 4
.globl _nox_time_Instant_elapsed
_nox_time_Instant_elapsed:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	_nox_time_Instant_elapsed_ms
	mov	x20, x0
	mov	x0, x19
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x2, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #10
	str	x1, [x19]
	mov	x1, #8
	add	x3, x19, x1
	mov	x1, #0
	str	x1, [x3]
	mov	x1, x19
	bl	_nox_time_Duration___init__
	mov	x0, x19
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_time_Instant_elapsed */

.text
.balign 4
.globl _nox_time_Instant_release
_nox_time_Instant_release:
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
	bgt	L612
	mov	x2, #16
	bl	_nox_rc_free_payload
L612:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_Instant_release */

.text
.balign 4
.globl _nox_time_Instant_eq
_nox_time_Instant_eq:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	mov	x1, #8
	add	x1, x2, x1
	ldr	x0, [x0]
	ldr	x1, [x1]
	cmp	x0, x1
	beq	L615
	mov	w0, #0
	b	L616
L615:
	mov	w0, #1
L616:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_Instant_eq */

.text
.balign 4
.globl _nox_time_Instant_trace
_nox_time_Instant_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_Instant_trace */

.text
.balign 4
.globl _nox_time_Instant_gc_free
_nox_time_Instant_gc_free:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #16
	bl	_nox_rc_free_payload
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_Instant_gc_free */

.text
.balign 4
.globl _nox_json_JsonError___init__
_nox_json_JsonError___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x2, #0
	beq	L623
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L623:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L626
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L626
	bl	_nox_str_free_now
L626:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_JsonError___init__ */

.text
.balign 4
.globl _nox_json_JsonError_release
_nox_json_JsonError_release:
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
	bgt	L634
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L632
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L631
	mov	x1, x20
	b	L633
L631:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L633
L632:
	mov	x1, x20
L633:
	mov	x2, #16
	bl	_nox_rc_free_payload
L634:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_json_JsonError_release */

.text
.balign 4
.globl _nox_json_JsonError_eq
_nox_json_JsonError_eq:
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
	bne	L637
	mov	w0, #1
	b	L638
L637:
	mov	w0, #0
L638:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_JsonError_eq */

.text
.balign 4
.globl _nox_json_JsonError_trace
_nox_json_JsonError_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_JsonError_trace */

.text
.balign 4
.globl _nox_json_JsonError_gc_free
_nox_json_JsonError_gc_free:
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
	beq	L645
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L644
	mov	x1, x20
	b	L646
L644:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L646
L645:
	mov	x1, x20
L646:
	mov	x2, #16
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_json_JsonError_gc_free */

.text
.balign 4
.globl _web_base64_Base64Error___init__
_web_base64_Base64Error___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x2, #0
	beq	L650
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L650:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L653
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L653
	bl	_nox_str_free_now
L653:
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
	bgt	L661
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L659
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L658
	mov	x1, x20
	b	L660
L658:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L660
L659:
	mov	x1, x20
L660:
	mov	x2, #16
	bl	_nox_rc_free_payload
L661:
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
	bne	L664
	mov	w0, #1
	b	L665
L664:
	mov	w0, #0
L665:
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
	mov	x2, #16
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_base64_Base64Error_gc_free */

.text
.balign 4
.globl _web_jwt_JwtError___init__
_web_jwt_JwtError___init__:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x2, #0
	beq	L677
	mov	x3, #8
	sub	x4, x2, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L677:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x1, [x3]
	str	x2, [x3]
	cmp	x1, #0
	beq	L680
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L680
	bl	_nox_str_free_now
L680:
	ldp	x29, x30, [sp], 16
	ret
/* end function web_jwt_JwtError___init__ */

.text
.balign 4
.globl _web_jwt_JwtError_release
_web_jwt_JwtError_release:
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
	bgt	L688
	mov	x20, x1
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L686
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L685
	mov	x1, x20
	b	L687
L685:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L687
L686:
	mov	x1, x20
L687:
	mov	x2, #16
	bl	_nox_rc_free_payload
L688:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_jwt_JwtError_release */

.text
.balign 4
.globl _web_jwt_JwtError_eq
_web_jwt_JwtError_eq:
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
	bne	L691
	mov	w0, #1
	b	L692
L691:
	mov	w0, #0
L692:
	ldp	x29, x30, [sp], 16
	ret
/* end function web_jwt_JwtError_eq */

.text
.balign 4
.globl _web_jwt_JwtError_trace
_web_jwt_JwtError_trace:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function web_jwt_JwtError_trace */

.text
.balign 4
.globl _web_jwt_JwtError_gc_free
_web_jwt_JwtError_gc_free:
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
	beq	L699
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L698
	mov	x1, x20
	b	L700
L698:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L700
L699:
	mov	x1, x20
L700:
	mov	x2, #16
	bl	_nox_rc_free_payload
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_jwt_JwtError_gc_free */

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
	beq	L730
	cmp	x2, #2
	beq	L729
	cmp	x2, #3
	beq	L728
	cmp	x2, #4
	beq	L727
	cmp	x2, #5
	beq	L726
	cmp	x2, #6
	beq	L725
	cmp	x2, #7
	beq	L724
	cmp	x2, #8
	beq	L723
	cmp	x2, #9
	beq	L722
	cmp	x2, #10
	beq	L721
	cmp	x2, #11
	beq	L720
	cmp	x2, #12
	beq	L719
	cmp	x2, #13
	beq	L718
	cmp	x2, #14
	beq	L717
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	b	L731
L717:
	bl	_web_jwt_JwtError_trace
	b	L731
L718:
	bl	_web_base64_Base64Error_trace
	b	L731
L719:
	bl	_nox_json_JsonError_trace
	b	L731
L720:
	bl	_nox_time_Instant_trace
	b	L731
L721:
	bl	_nox_time_Duration_trace
	b	L731
L722:
	bl	_nox_time_DateTime_trace
	b	L731
L723:
	bl	_nox_test_TestSuite_trace
	b	L731
L724:
	bl	_nox_test_AssertionError_trace
	b	L731
L725:
	bl	_nox_fs_FileMetadata_trace
	b	L731
L726:
	bl	_nox_fs_FsError_trace
	b	L731
L727:
	bl	_JsonValue_trace
	b	L731
L728:
	bl	_KeyError_trace
	b	L731
L729:
	bl	_IndexError_trace
	b	L731
L730:
	bl	_ValueError_trace
L731:
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
	beq	L759
	cmp	x2, #2
	beq	L758
	cmp	x2, #3
	beq	L757
	cmp	x2, #4
	beq	L756
	cmp	x2, #5
	beq	L755
	cmp	x2, #6
	beq	L754
	cmp	x2, #7
	beq	L753
	cmp	x2, #8
	beq	L752
	cmp	x2, #9
	beq	L751
	cmp	x2, #10
	beq	L750
	cmp	x2, #11
	beq	L749
	cmp	x2, #12
	beq	L748
	cmp	x2, #13
	beq	L747
	cmp	x2, #14
	bne	L760
	bl	_web_jwt_JwtError_gc_free
	b	L760
L747:
	bl	_web_base64_Base64Error_gc_free
	b	L760
L748:
	bl	_nox_json_JsonError_gc_free
	b	L760
L749:
	bl	_nox_time_Instant_gc_free
	b	L760
L750:
	bl	_nox_time_Duration_gc_free
	b	L760
L751:
	bl	_nox_time_DateTime_gc_free
	b	L760
L752:
	bl	_nox_test_TestSuite_gc_free
	b	L760
L753:
	bl	_nox_test_AssertionError_gc_free
	b	L760
L754:
	bl	_nox_fs_FileMetadata_gc_free
	b	L760
L755:
	bl	_nox_fs_FsError_gc_free
	b	L760
L756:
	bl	_JsonValue_gc_free
	b	L760
L757:
	bl	_KeyError_gc_free
	b	L760
L758:
	bl	_IndexError_gc_free
	b	L760
L759:
	bl	_ValueError_gc_free
L760:
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
	bge	L767
	adrp	x0, "Lfp1"@page
	add	x0, x0, "Lfp1"@pageoff
	ldr	d1, [x0]
	fsub	d0, d0, d1
	fcvtzs	x0, d0
	b	L768
L767:
	adrp	x0, "Lfp1"@page
	add	x0, x0, "Lfp1"@pageoff
	ldr	d1, [x0]
	fadd	d0, d0, d1
	fcvtzs	x0, d0
L768:
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
L771:
	cmp	x2, x3
	bge	L773
	mov	x4, #8
	mul	x4, x2, x4
	mov	x5, #16
	add	x4, x4, x5
	add	x4, x1, x4
	ldr	x4, [x4]
	add	x0, x4, x0
	mov	x4, #1
	add	x2, x2, x4
	b	L771
L773:
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
L776:
	cmp	x0, x2
	bge	L778
	mov	x3, #8
	mul	x3, x0, x3
	mov	x4, #16
	add	x3, x3, x4
	add	x3, x1, x3
	ldr	d1, [x3]
	fadd	d0, d1, d0
	mov	x3, #1
	add	x0, x0, x3
	b	L776
L778:
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
	beq	L781
	mov	x1, x20
	b	L787
L781:
	adrp	x1, _str44@page+8
	add	x1, x1, _str44@pageoff+8
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
	beq	L785
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L784
	mov	x1, x21
	b	L786
L784:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L786
L785:
	mov	x1, x21
L786:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L788
L787:
	mov	x0, x1
	b	L792
L788:
	cmp	x1, #0
	beq	L791
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L791
	bl	_nox_str_free_now
L791:
	mov	x0, #0
L792:
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
	bne	L800
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
	beq	L798
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L797
	mov	x1, x20
	b	L799
L797:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L799
L798:
	mov	x1, x20
L799:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L800:
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
	bne	L808
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
	beq	L806
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L805
	mov	x1, x20
	b	L807
L805:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L807
L806:
	mov	x1, x20
L807:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L808:
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
	beq	L817
	mov	x19, x0
	b	L823
L817:
	adrp	x1, _str47@page+8
	add	x1, x1, _str47@pageoff+8
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
	beq	L821
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L820
	mov	x1, x20
	b	L822
L820:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L822
L821:
	mov	x1, x20
L822:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	cmp	w0, #0
	bne	L824
L823:
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
	b	L825
L824:
	mov	x0, #0
L825:
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
	beq	L828
	mov	x1, x20
	b	L834
L828:
	adrp	x1, _str48@page+8
	add	x1, x1, _str48@pageoff+8
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
	beq	L832
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L831
	mov	x1, x21
	b	L833
L831:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L833
L832:
	mov	x1, x21
L833:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L835
L834:
	mov	x0, x1
	b	L838
L835:
	cmp	x1, #0
	beq	L837
	bl	_List_str_release
L837:
	mov	x0, #0
L838:
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
	bne	L856
	adrp	x1, _str49@page+8
	add	x1, x1, _str49@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x21, x2
	adrp	x2, _str50@page+8
	add	x2, x2, _str50@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L844
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L843
	mov	x1, x20
	mov	x2, x21
	b	L845
L843:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L845
L844:
	mov	x1, x20
L845:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L849
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L848
	mov	x1, x20
	b	L850
L848:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L850
L849:
	mov	x1, x20
L850:
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
	beq	L854
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L853
	mov	x1, x20
	b	L855
L853:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L855
L854:
	mov	x1, x20
L855:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L856:
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
	bne	L874
	adrp	x1, _str51@page+8
	add	x1, x1, _str51@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x21, x2
	adrp	x2, _str52@page+8
	add	x2, x2, _str52@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L862
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L861
	mov	x1, x20
	mov	x2, x21
	b	L863
L861:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L863
L862:
	mov	x1, x20
L863:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L867
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L866
	mov	x1, x20
	b	L868
L866:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L868
L867:
	mov	x1, x20
L868:
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
	beq	L872
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L871
	mov	x1, x20
	b	L873
L871:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L873
L872:
	mov	x1, x20
L873:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L874:
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
	bne	L882
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
	beq	L880
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L879
	mov	x1, x20
	b	L881
L879:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L881
L880:
	mov	x1, x20
L881:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L882:
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
	bne	L890
	adrp	x1, _str54@page+8
	add	x1, x1, _str54@pageoff+8
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
	beq	L888
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L887
	mov	x1, x20
	b	L889
L887:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L889
L888:
	mov	x1, x20
L889:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L890:
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
	beq	L957
	adrp	x2, _str55@page+8
	add	x2, x2, _str55@pageoff+8
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
	beq	L930
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L929
	mov	x1, x22
	b	L931
L929:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L931
L930:
	mov	x1, x22
L931:
	cmp	x1, #0
	beq	L935
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L934
	mov	x1, x20
	b	L936
L934:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L936
L935:
	mov	x1, x20
L936:
	adrp	x2, _str56@page+8
	add	x2, x2, _str56@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L940
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L939
	mov	x1, x21
	b	L941
L939:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L941
L940:
	mov	x1, x21
L941:
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
	beq	L945
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L944
	mov	x1, x21
	b	L946
L944:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L946
L945:
	mov	x1, x21
L946:
	cmp	x1, #0
	beq	L950
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L949
	mov	x1, x20
	b	L951
L949:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L951
L950:
	mov	x1, x20
L951:
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
	beq	L955
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L954
	mov	x1, x20
	b	L956
L954:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L956
L955:
	mov	x1, x20
L956:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L957:
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
	beq	L985
	mov	x20, x2
	adrp	x2, _str57@page+8
	add	x2, x2, _str57@pageoff+8
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
	beq	L963
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L962
	mov	x1, x20
	mov	x2, x21
	b	L964
L962:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L964
L963:
	mov	x1, x20
L964:
	mov	x21, x2
	adrp	x2, _str58@page+8
	add	x2, x2, _str58@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L968
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L967
	mov	x1, x20
	mov	x2, x21
	b	L969
L967:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L969
L968:
	mov	x1, x20
L969:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L973
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L972
	mov	x1, x20
	b	L974
L972:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L974
L973:
	mov	x1, x20
L974:
	adrp	x2, _str59@page+8
	add	x2, x2, _str59@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L978
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L977
	mov	x1, x20
	b	L979
L977:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L979
L978:
	mov	x1, x20
L979:
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
	beq	L983
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L982
	mov	x1, x20
	b	L984
L982:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L984
L983:
	mov	x1, x20
L984:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L985:
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
	beq	L1018
	adrp	x2, _str60@page+8
	add	x2, x2, _str60@pageoff+8
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
	beq	L991
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L990
	mov	x1, x21
	b	L992
L990:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L992
L991:
	mov	x1, x21
L992:
	cmp	x1, #0
	beq	L996
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L995
	mov	x1, x20
	b	L997
L995:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L997
L996:
	mov	x1, x20
L997:
	adrp	x2, _str61@page+8
	add	x2, x2, _str61@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1001
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1000
	fmov	d0, d8
	b	L1002
L1000:
	mov	x19, x0
	bl	_nox_str_free_now
	fmov	d0, d8
	mov	x0, x19
	b	L1002
L1001:
	fmov	d0, d8
L1002:
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
	beq	L1006
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1005
	mov	x1, x21
	b	L1007
L1005:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1007
L1006:
	mov	x1, x21
L1007:
	cmp	x1, #0
	beq	L1011
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1010
	mov	x1, x20
	b	L1012
L1010:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1012
L1011:
	mov	x1, x20
L1012:
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
	beq	L1016
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1015
	mov	x1, x20
	b	L1017
L1015:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1017
L1016:
	mov	x1, x20
L1017:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L1018:
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
	beq	L1021
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
L1021:
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
	adrp	x3, _str63@page+8
	add	x3, x3, _str63@pageoff+8
	adrp	x2, _str62@page+8
	add	x2, x2, _str62@pageoff+8
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x22, x0
	mov	x0, x19
	adrp	x3, _str65@page+8
	add	x3, x3, _str65@pageoff+8
	adrp	x2, _str64@page+8
	add	x2, x2, _str64@pageoff+8
	mov	x1, x22
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x21, x0
	mov	x0, x19
	adrp	x3, _str67@page+8
	add	x3, x3, _str67@pageoff+8
	adrp	x2, _str66@page+8
	add	x2, x2, _str66@pageoff+8
	mov	x1, x21
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x1, x0
	mov	x0, x19
	adrp	x3, _str69@page+8
	add	x3, x3, _str69@pageoff+8
	adrp	x2, _str68@page+8
	add	x2, x2, _str68@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_strings_replace_raw
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1026
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1025
	mov	x1, x22
	b	L1027
L1025:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L1027
L1026:
	mov	x1, x22
L1027:
	cmp	x1, #0
	beq	L1031
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1030
	mov	x1, x21
	b	L1032
L1030:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1032
L1031:
	mov	x1, x21
L1032:
	cmp	x1, #0
	beq	L1036
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1035
	mov	x0, x19
	b	L1037
L1035:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1037
L1036:
	mov	x0, x19
L1037:
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
	adrp	x3, _str72@page+8
	add	x3, x3, _str72@pageoff+8
	adrp	x2, _str71@page+8
	add	x2, x2, _str71@pageoff+8
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x0
	mov	x0, x19
	adrp	x3, _str74@page+8
	add	x3, x3, _str74@pageoff+8
	adrp	x2, _str73@page+8
	add	x2, x2, _str73@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x20
	mov	x24, x0
	mov	x0, x19
	adrp	x3, _str76@page+8
	add	x3, x3, _str76@pageoff+8
	adrp	x2, _str75@page+8
	add	x2, x2, _str75@pageoff+8
	mov	x20, x1
	mov	x1, x24
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x20
	mov	x23, x0
	mov	x0, x19
	adrp	x3, _str78@page+8
	add	x3, x3, _str78@pageoff+8
	adrp	x2, _str77@page+8
	add	x2, x2, _str77@pageoff+8
	mov	x20, x1
	mov	x1, x23
	mov	x19, x0
	bl	_nox_strings_replace
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	adrp	x2, _str82@page+8
	add	x2, x2, _str82@pageoff+8
	cmp	x2, #0
	cmp	x1, #0
	beq	L1042
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1041
	mov	x1, x24
	b	L1043
L1041:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L1043
L1042:
	mov	x1, x24
L1043:
	cmp	x1, #0
	beq	L1047
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1046
	mov	x1, x23
	b	L1048
L1046:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L1048
L1047:
	mov	x1, x23
L1048:
	cmp	x1, #0
	beq	L1052
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1051
	mov	x1, x20
	b	L1053
L1051:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1053
L1052:
	mov	x1, x20
L1053:
	mov	x2, x1
	mov	x20, x1
	adrp	x1, _str70@page+8
	add	x1, x1, _str70@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1057
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1056
	mov	x1, x20
	b	L1058
L1056:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1058
L1057:
	mov	x1, x20
L1058:
	adrp	x2, _str79@page+8
	add	x2, x2, _str79@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1062
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1061
	mov	x1, x20
	b	L1063
L1061:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1063
L1062:
	mov	x1, x20
L1063:
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
	beq	L1067
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1066
	mov	x1, x23
	b	L1068
L1066:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L1068
L1067:
	mov	x1, x23
L1068:
	cmp	x1, #0
	beq	L1072
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1071
	mov	x1, x20
	b	L1073
L1071:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1073
L1072:
	mov	x1, x20
L1073:
	adrp	x2, _str80@page+8
	add	x2, x2, _str80@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1077
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1076
	mov	x1, x20
	b	L1078
L1076:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1078
L1077:
	mov	x1, x20
L1078:
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
	beq	L1082
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1081
	mov	x1, x23
	b	L1083
L1081:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L1083
L1082:
	mov	x1, x23
L1083:
	cmp	x1, #0
	beq	L1087
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1086
	mov	x1, x20
	b	L1088
L1086:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1088
L1087:
	mov	x1, x20
L1088:
	adrp	x2, _str81@page+8
	add	x2, x2, _str81@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1092
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1091
	mov	x1, x21
	b	L1093
L1091:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1093
L1092:
	mov	x1, x21
L1093:
	mov	x2, #32
	add	x1, x1, x2
	ldr	x2, [x1]
	mov	x1, x20
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _str82@page+8
	add	x2, x2, _str82@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1097
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1096
	mov	x1, x22
	b	L1098
L1096:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L1098
L1097:
	mov	x1, x22
L1098:
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
	bne	L1110
	cmp	x1, #0
	beq	L1103
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1102
	mov	x1, x20
	b	L1104
L1102:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1104
L1103:
	mov	x1, x20
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
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1107:
	adrp	x1, _str82@page+8
	add	x1, x1, _str82@pageoff+8
	cmp	x1, #0
	beq	L1117
	adrp	x1, _str82@page
	add	x1, x1, _str82@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str82@page
	add	x2, x2, _str82@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1117
	adrp	x1, _str82@page+8
	add	x1, x1, _str82@pageoff+8
	bl	_nox_str_free_now
	b	L1117
L1110:
	mov	x1, x20
	cmp	x1, #0
	beq	L1114
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1114
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1114:
	adrp	x1, _str82@page+8
	add	x1, x1, _str82@pageoff+8
	cmp	x1, #0
	beq	L1117
	adrp	x1, _str82@page
	add	x1, x1, _str82@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str82@page
	add	x2, x2, _str82@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1117
	adrp	x1, _str82@page+8
	add	x1, x1, _str82@pageoff+8
	bl	_nox_str_free_now
L1117:
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
.globl _nox_time_now_ms
_nox_time_now_ms:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_time_now_ms_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_now_ms */

.text
.balign 4
.globl _nox_time_sleep_ms
_nox_time_sleep_ms:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	bl	_nox_time_sleep_ms_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_time_sleep_ms */

.text
.balign 4
.globl _nox_time_pad2
_nox_time_pad2:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	cmp	x1, #10
	blt	L1124
	bl	_nox_int_to_str
	b	L1129
L1124:
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x2, x1
	mov	x20, x1
	adrp	x1, _str83@page+8
	add	x1, x1, _str83@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1128
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1127
	mov	x0, x19
	b	L1129
L1127:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1129
L1128:
	mov	x0, x19
L1129:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_time_pad2 */

.text
.balign 4
.globl _nox_time_from_epoch_ms
_nox_time_from_epoch_ms:
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
	mov	x19, x0
	mov	x0, x1
	mov	x20, x0
	bl	_nox_time_year_raw
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	bl	_nox_time_month_raw
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x22, x0
	bl	_nox_time_day_raw
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	bl	_nox_time_hour_raw
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	mov	x24, x0
	bl	_nox_time_minute_raw
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	bl	_nox_time_second_raw
	mov	x25, x0
	mov	x0, x19
	mov	x1, #56
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x7, x25
	mov	x6, x24
	mov	x5, x23
	mov	x4, x22
	mov	x3, x21
	mov	x2, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #9
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
	mov	x1, x19
	bl	_nox_time_DateTime___init__
	mov	x0, x19
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function nox_time_from_epoch_ms */

.text
.balign 4
.globl _nox_time_now
_nox_time_now:
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
	mov	x19, x0
	bl	_nox_time_now_ms_raw
	mov	x20, x0
	bl	_nox_time_year_raw
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	bl	_nox_time_month_raw
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x22, x0
	bl	_nox_time_day_raw
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	bl	_nox_time_hour_raw
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	mov	x24, x0
	bl	_nox_time_minute_raw
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	bl	_nox_time_second_raw
	mov	x25, x0
	mov	x0, x19
	mov	x1, #56
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x7, x25
	mov	x6, x24
	mov	x5, x23
	mov	x4, x22
	mov	x3, x21
	mov	x2, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #9
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
	mov	x1, x19
	bl	_nox_time_DateTime___init__
	mov	x0, x19
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function nox_time_now */

.text
.balign 4
.globl _nox_time_instant_now
_nox_time_instant_now:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	_nox_time_monotonic_ms_raw
	mov	x20, x0
	mov	x0, x19
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x2, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #11
	str	x1, [x19]
	mov	x1, #8
	add	x3, x19, x1
	mov	x1, #0
	str	x1, [x3]
	mov	x1, x19
	bl	_nox_time_Instant___init__
	mov	x0, x19
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_time_instant_now */

.text
.balign 4
.globl _nox_crypto_sha256
_nox_crypto_sha256:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_crypto_sha256_hex_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_sha256 */

.text
.balign 4
.globl _nox_crypto_sha1
_nox_crypto_sha1:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_crypto_sha1_hex_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_sha1 */

.text
.balign 4
.globl _nox_crypto_sha512
_nox_crypto_sha512:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_crypto_sha512_hex_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_sha512 */

.text
.balign 4
.globl _nox_crypto_hmac_sha256
_nox_crypto_hmac_sha256:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_crypto_hmac_sha256_hex_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_hmac_sha256 */

.text
.balign 4
.globl _nox_crypto_constant_time_eq
_nox_crypto_constant_time_eq:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	mov	x1, x2
	bl	_nox_crypto_constant_time_eq_raw
	cmp	x0, #0
	cset	w0, ne
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_constant_time_eq */

.text
.balign 4
.globl _nox_crypto_secure_random_hex
_nox_crypto_secure_random_hex:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_crypto_secure_random_hex_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_secure_random_hex */

.text
.balign 4
.globl _nox_crypto_argon2_hash
_nox_crypto_argon2_hash:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_crypto_argon2_hash_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_argon2_hash */

.text
.balign 4
.globl _nox_crypto_argon2_verify
_nox_crypto_argon2_verify:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	mov	x1, x2
	bl	_nox_crypto_argon2_verify_raw
	cmp	x0, #0
	cset	w0, ne
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_argon2_verify */

.text
.balign 4
.globl _nox_crypto_bcrypt_hash
_nox_crypto_bcrypt_hash:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_crypto_bcrypt_hash_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_bcrypt_hash */

.text
.balign 4
.globl _nox_crypto_bcrypt_verify
_nox_crypto_bcrypt_verify:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	mov	x1, x2
	bl	_nox_crypto_bcrypt_verify_raw
	cmp	x0, #0
	cset	w0, ne
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_bcrypt_verify */

.text
.balign 4
.globl _nox_crypto_scrypt_hash
_nox_crypto_scrypt_hash:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_crypto_scrypt_hash_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_scrypt_hash */

.text
.balign 4
.globl _nox_crypto_scrypt_verify
_nox_crypto_scrypt_verify:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, x1
	mov	x1, x2
	bl	_nox_crypto_scrypt_verify_raw
	cmp	x0, #0
	cset	w0, ne
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_crypto_scrypt_verify */

.text
.balign 4
.globl _nox_json_decode
_nox_json_decode:
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
	bl	_nox_json_decode_raw
	mov	x20, x0
	bl	_nox_json_last_op_ok
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1162
	mov	x1, x20
	b	L1168
L1162:
	adrp	x1, _str84@page+8
	add	x1, x1, _str84@pageoff+8
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
	mov	x2, #12
	str	x2, [x21]
	mov	x2, #8
	add	x3, x21, x2
	mov	x2, #0
	str	x2, [x3]
	mov	x2, x1
	mov	x22, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_json_JsonError___init__
	mov	x1, x22
	mov	x0, x19
	cmp	x1, #0
	beq	L1166
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1165
	mov	x1, x21
	b	L1167
L1165:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1167
L1166:
	mov	x1, x21
L1167:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L1169
L1168:
	mov	x0, x1
	b	L1172
L1169:
	cmp	x1, #0
	beq	L1171
	bl	_JsonValue_release
L1171:
	mov	x0, #0
L1172:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_json_decode */

.text
.balign 4
.globl _nox_json_is_null
_nox_json_is_null:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, #0
	cset	w0, eq
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_is_null */

.text
.balign 4
.globl _nox_json_is_bool
_nox_json_is_bool:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, #1
	cset	w0, eq
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_is_bool */

.text
.balign 4
.globl _nox_json_is_number
_nox_json_is_number:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, #2
	cset	w0, eq
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_is_number */

.text
.balign 4
.globl _nox_json_is_string
_nox_json_is_string:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, #3
	cset	w0, eq
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_is_string */

.text
.balign 4
.globl _nox_json_is_array
_nox_json_is_array:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, #4
	cset	w0, eq
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_is_array */

.text
.balign 4
.globl _nox_json_is_object
_nox_json_is_object:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, #5
	cset	w0, eq
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_is_object */

.text
.balign 4
.globl _nox_json_as_bool
_nox_json_as_bool:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #16
	add	x0, x1, x0
	ldr	w0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_as_bool */

.text
.balign 4
.globl _nox_json_as_number
_nox_json_as_number:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #24
	add	x0, x1, x0
	ldr	d0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_as_number */

.text
.balign 4
.globl _nox_json_as_string
_nox_json_as_string:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #32
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, #0
	beq	L1191
	mov	x1, #8
	sub	x2, x0, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
L1191:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_as_string */

.text
.balign 4
.globl _nox_json_array_len
_nox_json_array_len:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #40
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_array_len */

.text
.balign 4
.globl _nox_json_array_get
_nox_json_array_get:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x3, #40
	add	x1, x1, x3
	ldr	x19, [x1]
	ldr	x3, [x19]
	cmp	x2, #0
	cset	w1, lt
	cmp	x2, x3
	mov	x21, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L1196
	mov	x2, x21
	b	L1197
L1196:
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x2, x21
	mov	x1, x0
	mov	x0, x20
	mov	x3, #2
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x20, x2
	adrp	x2, _str85@page+8
	add	x2, x2, _str85@pageoff+8
	mov	x22, x1
	mov	x21, x0
	bl	_IndexError___init__
	mov	x1, x22
	mov	x0, x21
	mov	x21, x0
	bl	_nox_raise
	mov	x0, x21
	bl	_nox_exception_pending
	mov	x2, x20
	cmp	w0, #0
	bne	L1199
L1197:
	mov	x0, #8
	mul	x0, x2, x0
	mov	x1, #16
	add	x0, x0, x1
	add	x0, x19, x0
	ldr	x0, [x0]
	cmp	x0, #0
	beq	L1200
	mov	x1, #8
	sub	x2, x0, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
	b	L1200
L1199:
	mov	x0, #0
L1200:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_json_array_get */

.text
.balign 4
.globl _nox_json_object_len
_nox_json_object_len:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #48
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_object_len */

.text
.balign 4
.globl _nox_json_object_key
_nox_json_object_key:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x3, #48
	add	x1, x1, x3
	ldr	x19, [x1]
	ldr	x3, [x19]
	cmp	x2, #0
	cset	w1, lt
	cmp	x2, x3
	mov	x21, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L1205
	mov	x2, x21
	b	L1206
L1205:
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x2, x21
	mov	x1, x0
	mov	x0, x20
	mov	x3, #2
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x20, x2
	adrp	x2, _str86@page+8
	add	x2, x2, _str86@pageoff+8
	mov	x22, x1
	mov	x21, x0
	bl	_IndexError___init__
	mov	x1, x22
	mov	x0, x21
	mov	x21, x0
	bl	_nox_raise
	mov	x0, x21
	bl	_nox_exception_pending
	mov	x2, x20
	cmp	w0, #0
	bne	L1208
L1206:
	mov	x0, #8
	mul	x0, x2, x0
	mov	x1, #16
	add	x0, x0, x1
	add	x0, x19, x0
	ldr	x0, [x0]
	cmp	x0, #0
	beq	L1209
	mov	x1, #8
	sub	x2, x0, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
	b	L1209
L1208:
	mov	x0, #0
L1209:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_json_object_key */

.text
.balign 4
.globl _nox_json_object_value
_nox_json_object_value:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x3, #56
	add	x1, x1, x3
	ldr	x19, [x1]
	ldr	x3, [x19]
	cmp	x2, #0
	cset	w1, lt
	cmp	x2, x3
	mov	x21, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L1212
	mov	x2, x21
	b	L1213
L1212:
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x2, x21
	mov	x1, x0
	mov	x0, x20
	mov	x3, #2
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x20, x2
	adrp	x2, _str87@page+8
	add	x2, x2, _str87@pageoff+8
	mov	x22, x1
	mov	x21, x0
	bl	_IndexError___init__
	mov	x1, x22
	mov	x0, x21
	mov	x21, x0
	bl	_nox_raise
	mov	x0, x21
	bl	_nox_exception_pending
	mov	x2, x20
	cmp	w0, #0
	bne	L1215
L1213:
	mov	x0, #8
	mul	x0, x2, x0
	mov	x1, #16
	add	x0, x0, x1
	add	x0, x19, x0
	ldr	x0, [x0]
	cmp	x0, #0
	beq	L1216
	mov	x1, #8
	sub	x2, x0, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
	b	L1216
L1215:
	mov	x0, #0
L1216:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function nox_json_object_value */

.text
.balign 4
.globl _nox_json_encode_string
_nox_json_encode_string:
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
	mov	x0, x19
	mov	x19, x0
	mov	x0, x24
	bl	_nox_str_is_ascii
	mov	x22, x0
	mov	x0, x19
	adrp	x23, _str88@page+8
	add	x23, x23, _str88@pageoff+8
	mov	x21, #0
	mov	x19, #0
L1219:
	mov	x20, x19
	mov	x19, x0
	mov	x0, x24
	bl	_nox_str_char_count
	mov	x1, x24
	mov	x2, x0
	mov	x0, x19
	cmp	x23, #0
	cmp	x20, #0
	cmp	x21, x2
	bge	L1251
	cmp	w22, #0
	bne	L1222
	mov	x2, x21
	mov	x24, x1
	mov	x19, x0
	bl	_nox_str_char_at
	mov	x1, x24
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	b	L1223
L1222:
	add	x2, x1, x21
	ldrb	w24, [x2]
	mov	x25, x1
	mov	x1, #2
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x25
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	strb	w24, [x19]
	mov	x2, #1
	add	x3, x19, x2
	mov	w2, #0
	strb	w2, [x3]
L1223:
	cmp	x20, #0
	beq	L1226
	mov	x2, #8
	sub	x2, x20, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x20, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1226
	mov	x24, x1
	mov	x1, x20
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x20
L1226:
	mov	x24, x1
	adrp	x1, _str89@page+8
	add	x1, x1, _str89@pageoff+8
	mov	x20, x0
	mov	x0, x19
	bl	_strcmp
	mov	x1, x24
	mov	w2, w0
	mov	x0, x20
	cmp	w2, #0
	beq	L1246
	mov	x24, x1
	adrp	x1, _str91@page+8
	add	x1, x1, _str91@pageoff+8
	mov	x20, x0
	mov	x0, x19
	bl	_strcmp
	mov	x1, x24
	mov	w2, w0
	mov	x0, x20
	cmp	w2, #0
	beq	L1243
	mov	x24, x1
	adrp	x1, _str93@page+8
	add	x1, x1, _str93@pageoff+8
	mov	x20, x0
	mov	x0, x19
	bl	_strcmp
	mov	x1, x24
	mov	w2, w0
	mov	x0, x20
	cmp	w2, #0
	beq	L1240
	mov	x24, x1
	adrp	x1, _str95@page+8
	add	x1, x1, _str95@pageoff+8
	mov	x20, x0
	mov	x0, x19
	bl	_strcmp
	mov	x1, x24
	mov	w2, w0
	mov	x0, x20
	cmp	w2, #0
	beq	L1237
	mov	x24, x1
	mov	x1, x21
	mov	x20, x0
	mov	x0, x24
	bl	_nox_str_byte_at
	mov	x1, x24
	mov	x2, x0
	mov	x0, x20
	cmp	x2, #13
	beq	L1234
	mov	x2, x19
	mov	x24, x1
	mov	x1, x23
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x23, #0
	beq	L1249
	mov	x2, #8
	sub	x2, x23, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x23, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1249
	mov	x24, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x23
	b	L1249
L1234:
	adrp	x2, _str97@page+8
	add	x2, x2, _str97@pageoff+8
	mov	x24, x1
	mov	x1, x23
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x23, #0
	beq	L1249
	mov	x2, #8
	sub	x2, x23, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x23, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1249
	mov	x24, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x23
	b	L1249
L1237:
	adrp	x2, _str96@page+8
	add	x2, x2, _str96@pageoff+8
	mov	x24, x1
	mov	x1, x23
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x23, #0
	beq	L1249
	mov	x2, #8
	sub	x2, x23, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x23, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1249
	mov	x24, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x23
	b	L1249
L1240:
	adrp	x2, _str94@page+8
	add	x2, x2, _str94@pageoff+8
	mov	x24, x1
	mov	x1, x23
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x23, #0
	beq	L1249
	mov	x2, #8
	sub	x2, x23, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x23, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1249
	mov	x24, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x23
	b	L1249
L1243:
	adrp	x2, _str92@page+8
	add	x2, x2, _str92@pageoff+8
	mov	x24, x1
	mov	x1, x23
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x23, #0
	beq	L1249
	mov	x2, #8
	sub	x2, x23, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x23, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1249
	mov	x24, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x23
	b	L1249
L1246:
	adrp	x2, _str90@page+8
	add	x2, x2, _str90@pageoff+8
	mov	x24, x1
	mov	x1, x23
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x23, #0
	beq	L1249
	mov	x2, #8
	sub	x2, x23, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x23, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1249
	mov	x24, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x23
L1249:
	mov	x2, #1
	add	x21, x21, x2
	mov	x24, x1
	mov	x23, x20
	b	L1219
L1251:
	mov	x1, x23
	mov	x21, x20
	adrp	x2, _str98@page+8
	add	x2, x2, _str98@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1256
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1255
	mov	x1, x21
	b	L1257
L1255:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1257
L1256:
	mov	x1, x21
L1257:
	cmp	x1, #0
	beq	L1261
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1260
	mov	x0, x19
	b	L1262
L1260:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1262
L1261:
	mov	x0, x19
L1262:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function nox_json_encode_string */

.text
.balign 4
.globl _nox_json_encode
_nox_json_encode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	cmp	x2, #0
	beq	L1281
	cmp	x2, #1
	beq	L1278
	cmp	x2, #2
	beq	L1277
	cmp	x2, #3
	beq	L1270
	cmp	x2, #4
	beq	L1269
	bl	_nox_json_encode_object
	b	L1282
L1269:
	bl	_nox_json_encode_array
	b	L1282
L1270:
	mov	x2, #32
	add	x1, x1, x2
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1272
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	add	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
L1272:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_json_encode_string
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1276
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1275
	mov	x0, x19
	b	L1282
L1275:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1282
L1276:
	mov	x0, x19
	b	L1282
L1277:
	mov	x2, #24
	add	x1, x1, x2
	ldr	d0, [x1]
	bl	_nox_float_to_str
	b	L1282
L1278:
	mov	x0, #16
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, #0
	bne	L1280
	adrp	x0, _str101@page+8
	add	x0, x0, _str101@pageoff+8
	b	L1282
L1280:
	adrp	x0, _str100@page+8
	add	x0, x0, _str100@pageoff+8
	b	L1282
L1281:
	adrp	x0, _str99@page+8
	add	x0, x0, _str99@pageoff+8
L1282:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function nox_json_encode */

.text
.balign 4
.globl _nox_json_encode_array
_nox_json_encode_array:
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
	mov	x2, #40
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x21, [x2]
	adrp	x20, _str102@page+8
	add	x20, x20, _str102@pageoff+8
	mov	x19, #0
L1285:
	mov	x22, x20
	cmp	x22, #0
	cmp	x19, x21
	bge	L1313
	cmp	x19, #0
	bgt	L1288
	mov	x20, x22
	b	L1291
L1288:
	adrp	x2, _str103@page+8
	add	x2, x2, _str103@pageoff+8
	mov	x23, x1
	mov	x1, x22
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x23
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x22, #0
	beq	L1291
	mov	x2, #8
	sub	x2, x22, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x22, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1291
	mov	x23, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x22
L1291:
	mov	x2, #40
	add	x2, x1, x2
	mov	x22, x20
	ldr	x20, [x2]
	ldr	x2, [x20]
	cmp	x19, #0
	mov	x24, x1
	cset	w1, lt
	cmp	x19, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	x22, #0
	cmp	w1, #0
	bne	L1293
	mov	x1, x24
	b	L1294
L1293:
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
	adrp	x2, _str104@page+8
	add	x2, x2, _str104@pageoff+8
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
	bne	L1308
L1294:
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x1, x20
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1296
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L1296:
	mov	x23, x1
	mov	x20, x0
	bl	_nox_json_encode
	mov	x1, x23
	mov	x23, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L1298
	mov	x20, x0
	bl	_JsonValue_release
	mov	x1, x23
	mov	x0, x20
	b	L1299
L1298:
	mov	x1, x23
L1299:
	mov	x2, x1
	mov	x23, x1
	mov	x1, x22
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x23
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x1, #0
	beq	L1303
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1302
	mov	x1, x24
	b	L1304
L1302:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x23
	b	L1304
L1303:
	mov	x1, x24
L1304:
	cmp	x22, #0
	beq	L1307
	mov	x2, #8
	sub	x2, x22, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x22, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1307
	mov	x23, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x22
L1307:
	mov	x2, #1
	add	x19, x19, x2
	b	L1285
L1308:
	mov	x1, x22
	cmp	x1, #0
	beq	L1312
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1312
	mov	x20, x1
	bl	_nox_str_free_now
L1312:
	mov	x0, #0
	b	L1319
L1313:
	mov	x1, x22
	adrp	x2, _str105@page+8
	add	x2, x2, _str105@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1318
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1317
	mov	x0, x19
	b	L1319
L1317:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1319
L1318:
	mov	x0, x19
L1319:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function nox_json_encode_array */

.text
.balign 4
.globl _nox_json_encode_object
_nox_json_encode_object:
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
	mov	x2, #48
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x21, [x2]
	str	x21, [x29, 16]
	adrp	x20, _str106@page+8
	add	x20, x20, _str106@pageoff+8
	mov	x19, #0
L1322:
	mov	x22, x20
	cmp	x22, #0
	cmp	x19, x21
	bge	L1380
	cmp	x19, #0
	bgt	L1325
	mov	x20, x22
	b	L1328
L1325:
	adrp	x2, _str107@page+8
	add	x2, x2, _str107@pageoff+8
	mov	x23, x1
	mov	x1, x22
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x23
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x22, #0
	beq	L1328
	mov	x2, #8
	sub	x2, x22, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x22, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1328
	mov	x23, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x22
L1328:
	mov	x2, #48
	add	x2, x1, x2
	ldr	x23, [x2]
	ldr	x2, [x23]
	cmp	x19, #0
	cset	w24, lt
	cmp	x19, x2
	mov	x25, x1
	cset	w1, ge
	orr	w1, w24, w1
	cmp	x20, #0
	cmp	w1, #0
	bne	L1330
	mov	x1, x25
	b	L1331
L1330:
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
	mov	x22, x0
	bl	_nox_raise
	mov	x0, x22
	mov	x22, x0
	bl	_nox_exception_pending
	mov	x1, x25
	mov	w2, w0
	mov	x0, x22
	cmp	w2, #0
	bne	L1375
L1331:
	mov	x2, #8
	mul	x2, x19, x2
	mov	x3, #16
	mov	x22, x20
	add	x20, x2, x3
	mov	x26, x1
	add	x1, x20, x23
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1333
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	add	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
L1333:
	mov	x25, x1
	mov	x23, x0
	bl	_nox_json_encode_string
	mov	x1, x25
	mov	x25, x0
	mov	x0, x23
	cmp	x1, #0
	beq	L1337
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1336
	mov	x1, x25
	b	L1338
L1336:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x23
	b	L1338
L1337:
	mov	x1, x25
L1338:
	mov	x2, x1
	mov	x25, x1
	mov	x1, x22
	mov	x23, x0
	bl	_nox_str_concat
	mov	x1, x25
	mov	x25, x0
	mov	x0, x23
	cmp	x1, #0
	beq	L1342
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1341
	mov	x1, x25
	b	L1343
L1341:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x23
	b	L1343
L1342:
	mov	x1, x25
L1343:
	adrp	x2, _str109@page+8
	add	x2, x2, _str109@pageoff+8
	mov	x25, x1
	mov	x23, x0
	bl	_nox_str_concat
	mov	x1, x25
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	cmp	x1, #0
	beq	L1347
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1346
	mov	x1, x26
	b	L1348
L1346:
	mov	x25, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x25
	b	L1348
L1347:
	mov	x1, x26
L1348:
	mov	x2, #56
	add	x2, x1, x2
	ldr	x25, [x2]
	ldr	x2, [x25]
	cmp	x19, x2
	mov	x26, x1
	cset	w1, ge
	orr	w1, w24, w1
	cmp	w1, #0
	bne	L1350
	mov	x1, x26
	b	L1351
L1350:
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
	mov	x24, x1
	mov	x21, x0
	bl	_IndexError___init__
	mov	x1, x24
	mov	x0, x21
	ldr	x21, [x29, 16]
	mov	x24, x0
	bl	_nox_raise
	mov	x0, x24
	mov	x24, x0
	bl	_nox_exception_pending
	mov	x1, x26
	mov	w2, w0
	mov	x0, x24
	cmp	w2, #0
	bne	L1370
L1351:
	mov	x24, x1
	add	x1, x20, x25
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1353
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L1353:
	mov	x25, x1
	mov	x20, x0
	bl	_nox_json_encode
	mov	x1, x25
	mov	x25, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L1355
	mov	x20, x0
	bl	_JsonValue_release
	mov	x1, x23
	mov	x0, x20
	b	L1356
L1355:
	mov	x1, x23
L1356:
	mov	x2, x25
	mov	x23, x1
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x23
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x1, #0
	beq	L1360
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1359
	mov	x1, x25
	b	L1361
L1359:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x23
	b	L1361
L1360:
	mov	x1, x25
L1361:
	cmp	x1, #0
	beq	L1365
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1364
	mov	x1, x24
	b	L1366
L1364:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x23
	b	L1366
L1365:
	mov	x1, x24
L1366:
	cmp	x22, #0
	beq	L1369
	mov	x2, #8
	sub	x2, x22, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x22, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1369
	mov	x23, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x22
L1369:
	mov	x2, #1
	add	x19, x19, x2
	b	L1322
L1370:
	mov	x1, x22
	cmp	x1, #0
	beq	L1374
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1374
	bl	_nox_str_free_now
L1374:
	mov	x0, #0
	b	L1386
L1375:
	mov	x1, x20
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
	mov	x20, x1
	bl	_nox_str_free_now
L1379:
	mov	x0, #0
	b	L1386
L1380:
	mov	x1, x22
	adrp	x2, _str111@page+8
	add	x2, x2, _str111@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1385
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1384
	mov	x0, x19
	b	L1386
L1384:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1386
L1385:
	mov	x0, x19
L1386:
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
/* end function nox_json_encode_object */

.text
.balign 4
.globl _nox_json_indent_str
_nox_json_indent_str:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mul	x2, x1, x2
	adrp	x1, _str112@page+8
	add	x1, x1, _str112@pageoff+8
	bl	_nox_strings_repeat_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_indent_str */

.text
.balign 4
.globl _nox_json_encode_pretty
_nox_json_encode_pretty:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x3, #0
	bl	_nox_json_encode_pretty_at
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_encode_pretty */

.text
.balign 4
.globl _nox_json_encode_pretty_at
_nox_json_encode_pretty_at:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x4, #8
	add	x4, x1, x4
	ldr	x4, [x4]
	cmp	x4, #4
	beq	L1395
	cmp	x4, #5
	beq	L1394
	bl	_nox_json_encode
	b	L1396
L1394:
	bl	_nox_json_encode_pretty_object
	b	L1396
L1395:
	bl	_nox_json_encode_pretty_array
L1396:
	ldp	x29, x30, [sp], 16
	ret
/* end function nox_json_encode_pretty_at */

.text
.balign 4
.globl _nox_json_encode_pretty_array
_nox_json_encode_pretty_array:
	hint	#34
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [x29, 120]
	str	x20, [x29, 112]
	str	x21, [x29, 104]
	str	x22, [x29, 96]
	str	x23, [x29, 88]
	str	x24, [x29, 80]
	str	x25, [x29, 72]
	str	x26, [x29, 64]
	str	x27, [x29, 56]
	str	x3, [x29, 16]
	str	x1, [x29, 24]
	mov	x4, #40
	add	x4, x1, x4
	ldr	x4, [x4]
	ldr	x22, [x4]
	str	x22, [x29, 32]
	cmp	x22, #0
	beq	L1469
	mov	x23, x3
	mov	x3, #1
	add	x26, x23, x3
	str	x26, [x29, 40]
	mov	x21, x2
	mul	x2, x2, x26
	mov	x20, x1
	adrp	x1, _str114@page+8
	add	x1, x1, _str114@pageoff+8
	mov	x19, x0
	bl	_nox_strings_repeat
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x20, #0
	mov	x19, x20
	adrp	x21, _str115@page+8
	add	x21, x21, _str115@pageoff+8
	mov	x20, #0
L1400:
	mov	x23, x21
	cmp	x23, #0
	cmp	x20, x22
	bge	L1443
	cmp	x20, #0
	bgt	L1403
	mov	x21, x23
	b	L1407
L1403:
	mov	x25, x2
	adrp	x2, _str116@page+8
	add	x2, x2, _str116@pageoff+8
	mov	x24, x1
	mov	x1, x23
	mov	x21, x0
	bl	_nox_str_concat
	mov	x2, x25
	mov	x1, x24
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	cmp	x23, #0
	beq	L1407
	mov	x25, x2
	mov	x2, #8
	sub	x2, x23, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x23, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1406
	mov	x2, x25
	b	L1407
L1406:
	mov	x24, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x2, x25
	mov	x1, x24
	mov	x0, x23
L1407:
	mov	x24, x2
	mov	x2, x19
	mov	x27, x1
	mov	x1, x21
	mov	x23, x0
	bl	_nox_str_concat
	mov	x2, x24
	mov	x1, x0
	mov	x0, x23
	mov	x3, #40
	add	x3, x27, x3
	ldr	x25, [x3]
	ldr	x3, [x25]
	cmp	x20, #0
	mov	x23, x1
	cset	w1, lt
	cmp	x20, x3
	mov	x24, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	x21, #0
	cmp	w1, #0
	bne	L1409
	mov	x1, x23
	mov	x2, x24
	mov	x24, x21
	mov	x21, x26
	b	L1410
L1409:
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
	mov	x26, x2
	adrp	x2, _str117@page+8
	add	x2, x2, _str117@pageoff+8
	mov	x24, x1
	mov	x22, x0
	bl	_IndexError___init__
	mov	x1, x24
	mov	x0, x22
	mov	x24, x21
	ldr	x21, [x29, 40]
	mov	x22, x0
	bl	_nox_raise
	mov	x0, x22
	mov	x22, x0
	bl	_nox_exception_pending
	mov	x2, x26
	mov	x1, x23
	mov	w3, w0
	mov	x0, x22
	ldr	x22, [x29, 32]
	cmp	w3, #0
	bne	L1433
L1410:
	mov	x23, x1
	mov	x1, #8
	mul	x1, x20, x1
	mov	x3, #16
	add	x1, x1, x3
	add	x1, x1, x25
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1412
	mov	x3, #8
	sub	x4, x1, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L1412:
	mov	x3, x21
	mov	x26, x2
	mov	x25, x1
	mov	x21, x0
	bl	_nox_json_encode_pretty_at
	mov	x1, x25
	mov	x25, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L1414
	mov	x21, x0
	bl	_JsonValue_release
	mov	x2, x26
	mov	x1, x23
	mov	x0, x21
	b	L1415
L1414:
	mov	x1, x23
	mov	x2, x26
L1415:
	mov	x26, x2
	mov	x2, x25
	mov	x23, x1
	mov	x21, x0
	bl	_nox_str_concat
	mov	x2, x26
	mov	x1, x23
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	ldr	x23, [x29, 40]
	ldr	x27, [x29, 24]
	cmp	x1, #0
	beq	L1420
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1419
	mov	x1, x27
	mov	x2, x26
	mov	x17, x25
	mov	x25, x1
	mov	x1, x17
	b	L1421
L1419:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x22
	ldr	x22, [x29, 32]
	ldr	x25, [x29, 24]
	b	L1421
L1420:
	mov	x1, x25
	mov	x25, x27
L1421:
	cmp	x1, #0
	beq	L1426
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1425
	mov	x1, x25
	mov	x2, x26
	b	L1427
L1425:
	mov	x25, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x0, x25
	ldr	x1, [x29, 24]
	b	L1427
L1426:
	mov	x1, x25
L1427:
	cmp	x24, #0
	beq	L1431
	mov	x26, x2
	mov	x2, #8
	sub	x2, x24, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x24, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1430
	mov	x2, x26
	b	L1431
L1430:
	mov	x25, x1
	mov	x1, x24
	mov	x24, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x24
L1431:
	mov	x3, #1
	add	x20, x20, x3
	mov	x26, x23
	b	L1400
L1433:
	mov	x1, x24
	mov	x20, x19
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
	ble	L1437
	mov	x1, x20
	b	L1439
L1437:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1439
L1438:
	mov	x1, x20
L1439:
	cmp	x1, #0
	beq	L1442
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1442
	mov	x21, x1
	bl	_nox_str_free_now
L1442:
	mov	x0, #0
	b	L1470
L1443:
	mov	x22, x23
	mov	x21, x19
	ldr	x23, [x29, 16]
	mov	x20, x2
	adrp	x2, _str118@page+8
	add	x2, x2, _str118@pageoff+8
	mov	x1, x22
	mov	x19, x0
	bl	_nox_str_concat
	mov	x3, x23
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mul	x2, x2, x3
	mov	x20, x1
	adrp	x1, _str119@page+8
	add	x1, x1, _str119@pageoff+8
	mov	x19, x0
	bl	_nox_strings_repeat
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
	beq	L1448
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1447
	mov	x1, x23
	b	L1449
L1447:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L1449
L1448:
	mov	x1, x23
L1449:
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
	mov	x1, x20
	b	L1454
L1452:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1454
L1453:
	mov	x1, x20
L1454:
	adrp	x2, _str120@page+8
	add	x2, x2, _str120@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
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
	mov	x1, x22
	b	L1459
L1457:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L1459
L1458:
	mov	x1, x22
L1459:
	cmp	x1, #0
	beq	L1463
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1462
	mov	x1, x21
	b	L1464
L1462:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1464
L1463:
	mov	x1, x21
L1464:
	cmp	x1, #0
	beq	L1468
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1467
	mov	x0, x19
	b	L1470
L1467:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1470
L1468:
	mov	x0, x19
	b	L1470
L1469:
	adrp	x0, _str113@page+8
	add	x0, x0, _str113@pageoff+8
L1470:
	ldr	x19, [x29, 120]
	ldr	x20, [x29, 112]
	ldr	x21, [x29, 104]
	ldr	x22, [x29, 96]
	ldr	x23, [x29, 88]
	ldr	x24, [x29, 80]
	ldr	x25, [x29, 72]
	ldr	x26, [x29, 64]
	ldr	x27, [x29, 56]
	ldp	x29, x30, [sp], 128
	ret
/* end function nox_json_encode_pretty_array */

.text
.balign 4
.globl _nox_json_encode_pretty_object
_nox_json_encode_pretty_object:
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
	str	x27, [x29, 72]
	str	x3, [x29, 16]
	str	x2, [x29, 40]
	str	x1, [x29, 48]
	mov	x4, #48
	add	x4, x1, x4
	ldr	x4, [x4]
	ldr	x21, [x4]
	str	x21, [x29, 24]
	cmp	x21, #0
	beq	L1576
	mov	x23, x3
	mov	x3, #1
	add	x23, x23, x3
	str	x23, [x29, 32]
	mul	x2, x2, x23
	mov	x20, x1
	adrp	x1, _str122@page+8
	add	x1, x1, _str122@pageoff+8
	mov	x19, x0
	bl	_nox_strings_repeat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x20, #0
	mov	x19, x20
	adrp	x22, _str123@page+8
	add	x22, x22, _str123@pageoff+8
	mov	x20, #0
L1474:
	cmp	x22, #0
	cmp	x20, x21
	bge	L1550
	cmp	x20, #0
	bgt	L1477
	mov	x21, x22
	b	L1480
L1477:
	adrp	x2, _str124@page+8
	add	x2, x2, _str124@pageoff+8
	mov	x23, x1
	mov	x1, x22
	mov	x21, x0
	bl	_nox_str_concat
	mov	x1, x23
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	cmp	x22, #0
	beq	L1480
	mov	x2, #8
	sub	x2, x22, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x22, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1480
	mov	x23, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x22
L1480:
	mov	x2, x19
	mov	x22, x1
	mov	x1, x21
	mov	x23, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x23
	mov	x2, #48
	add	x2, x22, x2
	ldr	x22, [x2]
	ldr	x2, [x22]
	cmp	x20, #0
	cset	w25, lt
	cmp	x20, x2
	mov	x24, x1
	cset	w1, ge
	orr	w1, w25, w1
	cmp	x21, #0
	cmp	w1, #0
	bne	L1482
	mov	x1, x24
	b	L1483
L1482:
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
	adrp	x2, _str125@page+8
	add	x2, x2, _str125@pageoff+8
	mov	x26, x1
	mov	x23, x0
	bl	_IndexError___init__
	mov	x1, x26
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
	bne	L1540
L1483:
	mov	x2, #8
	mul	x2, x20, x2
	mov	x3, #16
	mov	x24, x21
	add	x21, x2, x3
	mov	x23, x1
	add	x1, x21, x22
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1485
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	add	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
L1485:
	mov	x26, x1
	mov	x22, x0
	bl	_nox_json_encode_string
	mov	x1, x26
	mov	x26, x0
	mov	x0, x22
	cmp	x1, #0
	beq	L1489
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1488
	mov	x1, x23
	b	L1490
L1488:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x22
	b	L1490
L1489:
	mov	x1, x23
L1490:
	mov	x2, x26
	mov	x23, x1
	mov	x22, x0
	bl	_nox_str_concat
	mov	x1, x23
	mov	x23, x0
	mov	x0, x22
	ldr	x22, [x29, 48]
	cmp	x1, #0
	beq	L1495
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1494
	mov	x1, x22
	mov	x17, x26
	mov	x26, x1
	mov	x1, x17
	b	L1496
L1494:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x22
	ldr	x26, [x29, 48]
	b	L1496
L1495:
	mov	x1, x26
	mov	x26, x22
L1496:
	cmp	x1, #0
	beq	L1500
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1499
	mov	x1, x23
	b	L1501
L1499:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x22
	b	L1501
L1500:
	mov	x1, x23
L1501:
	adrp	x2, _str126@page+8
	add	x2, x2, _str126@pageoff+8
	mov	x23, x1
	mov	x22, x0
	bl	_nox_str_concat
	mov	x1, x23
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	ldr	x23, [x29, 32]
	ldr	x2, [x29, 40]
	cmp	x1, #0
	beq	L1505
	mov	x3, #8
	sub	x4, x1, x3
	ldr	x3, [x4]
	mov	x5, #1
	sub	x3, x3, x5
	str	x3, [x4]
	cmp	x3, #0
	ble	L1504
	mov	x1, x26
	b	L1506
L1504:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x23
	ldr	x23, [x29, 32]
	ldr	x2, [x29, 40]
	b	L1506
L1505:
	mov	x1, x26
L1506:
	mov	x3, #56
	add	x3, x1, x3
	mov	x27, x23
	ldr	x23, [x3]
	ldr	x3, [x23]
	cmp	x20, x3
	mov	x26, x1
	cset	w1, ge
	orr	w1, w25, w1
	cmp	w1, #0
	bne	L1508
	mov	x1, x26
	b	L1509
L1508:
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
	adrp	x2, _str127@page+8
	add	x2, x2, _str127@pageoff+8
	mov	x26, x1
	mov	x25, x0
	bl	_IndexError___init__
	mov	x1, x26
	mov	x0, x25
	ldr	x26, [x29, 48]
	mov	x25, x0
	bl	_nox_raise
	mov	x0, x25
	mov	x25, x0
	bl	_nox_exception_pending
	mov	x1, x26
	mov	w3, w0
	mov	x0, x25
	ldr	x27, [x29, 32]
	ldr	x2, [x29, 40]
	cmp	w3, #0
	bne	L1530
L1509:
	mov	x25, x1
	add	x1, x21, x23
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L1511
	mov	x3, #8
	sub	x4, x1, x3
	ldr	x3, [x4]
	mov	x5, #1
	add	x3, x3, x5
	str	x3, [x4]
L1511:
	mov	x3, x27
	mov	x26, x2
	mov	x23, x1
	mov	x21, x0
	bl	_nox_json_encode_pretty_at
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L1513
	mov	x21, x0
	bl	_JsonValue_release
	mov	x2, x26
	mov	x1, x22
	mov	x0, x21
	b	L1514
L1513:
	mov	x1, x22
	mov	x2, x26
L1514:
	mov	x26, x2
	mov	x2, x23
	mov	x22, x1
	mov	x21, x0
	bl	_nox_str_concat
	mov	x2, x26
	mov	x1, x22
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	ldr	x27, [x29, 32]
	ldr	x22, [x29, 24]
	cmp	x1, #0
	beq	L1518
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1517
	mov	x1, x23
	mov	x23, x27
	mov	x2, x26
	b	L1519
L1517:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x23
	mov	x0, x22
	ldr	x23, [x29, 32]
	ldr	x22, [x29, 24]
	b	L1519
L1518:
	mov	x1, x23
	mov	x23, x27
L1519:
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
	mov	x2, x26
	mov	x1, x25
	b	L1524
L1522:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x22
	ldr	x22, [x29, 24]
	b	L1524
L1523:
	mov	x1, x25
L1524:
	cmp	x24, #0
	beq	L1528
	mov	x26, x2
	mov	x2, #8
	sub	x2, x24, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x24, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1527
	mov	x2, x26
	b	L1528
L1527:
	mov	x25, x1
	mov	x1, x24
	mov	x24, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x24
L1528:
	mov	x3, #1
	add	x20, x20, x3
	mov	x17, x22
	mov	x22, x21
	mov	x21, x17
	b	L1474
L1530:
	mov	x1, x24
	mov	x20, x19
	cmp	x1, #0
	beq	L1535
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1534
	mov	x1, x20
	b	L1536
L1534:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1536
L1535:
	mov	x1, x20
L1536:
	cmp	x1, #0
	beq	L1539
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1539
	mov	x20, x1
	bl	_nox_str_free_now
L1539:
	mov	x0, #0
	b	L1577
L1540:
	mov	x1, x21
	mov	x20, x19
	cmp	x1, #0
	beq	L1545
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1544
	mov	x1, x20
	b	L1546
L1544:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1546
L1545:
	mov	x1, x20
L1546:
	cmp	x1, #0
	beq	L1549
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1549
	mov	x21, x1
	bl	_nox_str_free_now
L1549:
	mov	x0, #0
	b	L1577
L1550:
	mov	x21, x19
	ldr	x23, [x29, 16]
	ldr	x2, [x29, 40]
	mov	x20, x2
	adrp	x2, _str128@page+8
	add	x2, x2, _str128@pageoff+8
	mov	x1, x22
	mov	x19, x0
	bl	_nox_str_concat
	mov	x3, x23
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mul	x2, x2, x3
	mov	x20, x1
	adrp	x1, _str129@page+8
	add	x1, x1, _str129@pageoff+8
	mov	x19, x0
	bl	_nox_strings_repeat
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
	beq	L1555
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1554
	mov	x1, x23
	b	L1556
L1554:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L1556
L1555:
	mov	x1, x23
L1556:
	cmp	x1, #0
	beq	L1560
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1559
	mov	x1, x20
	b	L1561
L1559:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1561
L1560:
	mov	x1, x20
L1561:
	adrp	x2, _str130@page+8
	add	x2, x2, _str130@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1565
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1564
	mov	x1, x22
	b	L1566
L1564:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L1566
L1565:
	mov	x1, x22
L1566:
	cmp	x1, #0
	beq	L1570
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1569
	mov	x1, x21
	b	L1571
L1569:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1571
L1570:
	mov	x1, x21
L1571:
	cmp	x1, #0
	beq	L1575
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1574
	mov	x0, x19
	b	L1577
L1574:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1577
L1575:
	mov	x0, x19
	b	L1577
L1576:
	adrp	x0, _str121@page+8
	add	x0, x0, _str121@pageoff+8
L1577:
	ldr	x19, [x29, 136]
	ldr	x20, [x29, 128]
	ldr	x21, [x29, 120]
	ldr	x22, [x29, 112]
	ldr	x23, [x29, 104]
	ldr	x24, [x29, 96]
	ldr	x25, [x29, 88]
	ldr	x26, [x29, 80]
	ldr	x27, [x29, 72]
	ldp	x29, x30, [sp], 144
	ret
/* end function nox_json_encode_pretty_object */

.text
.balign 4
.globl _web_base64__alphabet
_web_base64__alphabet:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, _str131@page+8
	add	x0, x0, _str131@pageoff+8
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
	adrp	x0, _str132@page+8
	add	x0, x0, _str132@pageoff+8
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
	adrp	x0, _str133@page+8
	add	x0, x0, _str133@pageoff+8
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
L1586:
	mov	x20, x1
	mov	x1, x19
	mov	x0, x20
	bl	_nox_str_byte_at
	mov	x1, x20
	cmp	x0, #0
	beq	L1588
	mov	x0, #1
	add	x19, x19, x0
	b	L1586
L1588:
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
	beq	L1592
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x2, x21
	mov	x1, x0
	mov	x0, x20
	mov	x3, #13
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x21, x2
	adrp	x2, _str134@page+8
	add	x2, x2, _str134@pageoff+8
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
	bne	L1598
L1592:
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
	bne	L1594
	mov	x2, x21
	mov	x1, x20
	b	L1595
L1594:
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
	adrp	x2, _str135@page+8
	add	x2, x2, _str135@pageoff+8
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
	bne	L1597
L1595:
	bl	_nox_str_char_at
	cmp	x0, #0
	beq	L1599
	mov	x1, #8
	sub	x2, x0, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
	b	L1599
L1597:
	mov	x0, #0
	b	L1599
L1598:
	mov	x0, #0
L1599:
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
L1602:
	cmp	x19, #64
	bge	L1619
	cmp	x19, #0
	mov	x23, x1
	cset	w1, lt
	cmp	x19, x20
	mov	x24, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	w1, #0
	bne	L1605
	mov	x2, x24
	mov	x1, x23
	b	L1606
L1605:
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
	adrp	x2, _str136@page+8
	add	x2, x2, _str136@pageoff+8
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
	bne	L1618
L1606:
	cmp	w21, #0
	bne	L1609
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
	b	L1610
L1609:
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
L1610:
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
	beq	L1614
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1613
	mov	x2, x25
	mov	x1, x24
	b	L1615
L1613:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x2, x25
	mov	x1, x24
	mov	x0, x23
	b	L1615
L1614:
	mov	x1, x24
L1615:
	cmp	w22, #0
	beq	L1617
	mov	x3, #1
	add	x19, x19, x3
	b	L1602
L1617:
	mov	x0, x19
	b	L1620
L1618:
	mov	x0, #0
	b	L1620
L1619:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #13
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str137@page+8
	add	x2, x2, _str137@pageoff+8
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
L1620:
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
	adrp	x2, _str143@page+8
	add	x2, x2, _str143@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	beq	L1623
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #13
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str138@page+8
	add	x2, x2, _str138@pageoff+8
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
	bne	L1658
L1623:
	cmp	x20, #32
	bge	L1637
	cmp	x20, #9
	beq	L1657
	cmp	x20, #10
	beq	L1656
	mov	x1, x20
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x2, x1
	mov	x21, x1
	adrp	x1, _str141@page+8
	add	x1, x1, _str141@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L1630
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1629
	mov	x1, x21
	b	L1631
L1629:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1631
L1630:
	mov	x1, x21
L1631:
	mov	x21, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	mov	x2, #13
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
	beq	L1635
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1634
	mov	x1, x21
	b	L1636
L1634:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1636
L1635:
	mov	x1, x21
L1636:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L1655
L1637:
	cmp	x20, #127
	beq	L1639
	mov	x1, x20
	b	L1640
L1639:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #13
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str142@page+8
	add	x2, x2, _str142@pageoff+8
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
	bne	L1654
L1640:
	mov	x2, #32
	sub	x20, x1, x2
	mov	x19, x0
	adrp	x0, _str143@page+8
	add	x0, x0, _str143@pageoff+8
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
	bne	L1642
	mov	x2, x20
	b	L1643
L1642:
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
	adrp	x2, _str144@page+8
	add	x2, x2, _str144@pageoff+8
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
	bne	L1650
L1643:
	adrp	x1, _str143@page+8
	add	x1, x1, _str143@pageoff+8
	mov	x19, x0
	bl	_nox_str_char_at
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x19, #0
	beq	L1645
	mov	x1, #8
	sub	x2, x19, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
L1645:
	adrp	x1, _str143@page+8
	add	x1, x1, _str143@pageoff+8
	cmp	x1, #0
	beq	L1649
	adrp	x1, _str143@page
	add	x1, x1, _str143@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str143@page
	add	x2, x2, _str143@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L1648
	mov	x0, x19
	b	L1659
L1648:
	adrp	x1, _str143@page+8
	add	x1, x1, _str143@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1659
L1649:
	mov	x0, x19
	b	L1659
L1650:
	adrp	x1, _str143@page+8
	add	x1, x1, _str143@pageoff+8
	cmp	x1, #0
	beq	L1653
	adrp	x1, _str143@page
	add	x1, x1, _str143@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str143@page
	add	x2, x2, _str143@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1653
	adrp	x1, _str143@page+8
	add	x1, x1, _str143@pageoff+8
	bl	_nox_str_free_now
L1653:
	mov	x0, #0
	b	L1659
L1654:
	mov	x0, #0
	b	L1659
L1655:
	mov	x0, #0
	b	L1659
L1656:
	adrp	x0, _str140@page+8
	add	x0, x0, _str140@pageoff+8
	b	L1659
L1657:
	adrp	x0, _str139@page+8
	add	x0, x0, _str139@pageoff+8
	b	L1659
L1658:
	mov	x0, #0
L1659:
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
	beq	L1686
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
	adrp	x20, _str146@page+8
	add	x20, x20, _str146@pageoff+8
	mov	x19, #0
L1663:
	cmp	x19, x21
	bge	L1685
	cmp	x19, #0
	mov	x25, x1
	cset	w1, lt
	cmp	x19, x22
	cset	w2, ge
	orr	w1, w1, w2
	cmp	x20, #0
	cmp	w1, #0
	bne	L1666
	mov	x1, x25
	b	L1667
L1666:
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
	adrp	x2, _str147@page+8
	add	x2, x2, _str147@pageoff+8
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
	bne	L1680
L1667:
	cmp	w23, #0
	bne	L1670
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
	b	L1671
L1670:
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
L1671:
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
	beq	L1675
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1674
	mov	x1, x26
	b	L1676
L1674:
	mov	x25, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x25
	b	L1676
L1675:
	mov	x1, x26
L1676:
	cmp	x24, #0
	beq	L1679
	mov	x2, #8
	sub	x2, x24, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x24, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1679
	mov	x25, x1
	mov	x1, x24
	mov	x24, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x24
L1679:
	mov	x2, #1
	add	x19, x19, x2
	b	L1663
L1680:
	mov	x19, x20
	cmp	x19, #0
	beq	L1684
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1684
	mov	x1, x19
	bl	_nox_str_free_now
L1684:
	mov	x0, #0
	b	L1687
L1685:
	mov	x0, x20
	b	L1687
L1686:
	adrp	x0, _str145@page+8
	add	x0, x0, _str145@pageoff+8
L1687:
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
	adrp	x20, _str148@page+8
	add	x20, x20, _str148@pageoff+8
	mov	x19, #0
L1690:
	mov	x1, #2
	add	x1, x19, x1
	mov	x23, x1
	mov	x1, #1
	add	x1, x19, x1
	cmp	x20, #0
	cmp	x23, x25
	bge	L1755
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
	bne	L1750
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
	beq	L1696
	mov	x26, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1695
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	b	L1697
L1695:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x0, x22
	b	L1697
L1696:
	mov	x1, x24
L1697:
	cmp	x21, #0
	beq	L1701
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
	ble	L1700
	mov	x3, x25
	mov	x2, x24
	mov	x22, x1
	b	L1702
L1700:
	mov	x22, x1
	mov	x1, x21
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x24
	mov	x0, x21
	b	L1702
L1701:
	mov	x22, x1
L1702:
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
	bne	L1745
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
	beq	L1707
	mov	x26, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1706
	mov	x1, x23
	mov	x3, x26
	mov	x2, x25
	b	L1708
L1706:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x26
	mov	x2, x25
	mov	x1, x23
	mov	x0, x21
	b	L1708
L1707:
	mov	x1, x23
L1708:
	cmp	x1, #0
	beq	L1712
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
	ble	L1711
	mov	x3, x25
	mov	x2, x23
	b	L1712
L1711:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x23
	mov	x0, x21
L1712:
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
	bne	L1740
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
	beq	L1717
	mov	x26, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x25, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1716
	mov	x1, x24
	mov	x3, x26
	mov	x2, x25
	b	L1718
L1716:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x0, x21
	b	L1718
L1717:
	mov	x1, x24
L1718:
	cmp	x1, #0
	beq	L1722
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
	ble	L1721
	mov	x3, x25
	mov	x2, x24
	b	L1722
L1721:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x24
	mov	x0, x21
L1722:
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
	bne	L1735
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
	beq	L1727
	mov	x25, x3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x24, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1726
	mov	x1, x23
	mov	x3, x25
	mov	x2, x24
	b	L1728
L1726:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x25
	mov	x2, x24
	mov	x1, x23
	mov	x0, x21
	b	L1728
L1727:
	mov	x1, x23
L1728:
	cmp	x1, #0
	beq	L1732
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
	ble	L1731
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	b	L1733
L1731:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x0, x21
	b	L1733
L1732:
	mov	x1, x22
L1733:
	mov	x4, #3
	add	x19, x19, x4
	mov	x26, x3
	mov	x25, x2
	mov	x24, x1
	b	L1690
L1735:
	mov	x1, x23
	cmp	x1, #0
	beq	L1739
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1739
	bl	_nox_str_free_now
L1739:
	mov	x0, #0
	b	L1851
L1740:
	mov	x1, x24
	cmp	x1, #0
	beq	L1744
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1744
	bl	_nox_str_free_now
L1744:
	mov	x0, #0
	b	L1851
L1745:
	mov	x1, x23
	cmp	x1, #0
	beq	L1749
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1749
	bl	_nox_str_free_now
L1749:
	mov	x0, #0
	b	L1851
L1750:
	mov	x1, x21
	cmp	x1, #0
	beq	L1754
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1754
	mov	x21, x1
	mov	x20, x0
	bl	_nox_str_free_now
L1754:
	mov	x0, #0
	b	L1851
L1755:
	mov	x21, x20
	mov	x23, x1
	mov	x1, x19
	mov	x22, x26
	mov	x20, x0
	mov	x0, x24
	ldr	w24, [x29, 16]
	sub	x2, x25, x1
	cmp	x2, #1
	beq	L1811
	cmp	x2, #2
	beq	L1759
	mov	x1, x21
	b	L1840
L1759:
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
	bne	L1806
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
	beq	L1764
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1763
	mov	x1, x21
	b	L1765
L1763:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L1765
L1764:
	mov	x1, x21
	mov	w23, w4
L1765:
	cmp	x1, #0
	beq	L1768
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1768
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L1768:
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
	bne	L1801
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
	beq	L1773
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1772
	mov	x1, x24
	b	L1774
L1772:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x20
	b	L1774
L1773:
	mov	x1, x24
	mov	w23, w4
L1774:
	cmp	x1, #0
	beq	L1778
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1777
	mov	w4, w23
	mov	x1, x22
	b	L1779
L1777:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	w4, w23
	mov	x1, x22
	mov	x0, x20
	b	L1779
L1778:
	mov	w4, w23
	mov	x1, x22
L1779:
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
	bne	L1796
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
	beq	L1784
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1783
	mov	x1, x21
	b	L1785
L1783:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L1785
L1784:
	mov	x1, x21
	mov	w23, w4
L1785:
	cmp	x1, #0
	beq	L1789
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1788
	mov	x1, x20
	b	L1790
L1788:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L1790
L1789:
	mov	x1, x20
L1790:
	cmp	w23, #0
	beq	L1840
	adrp	x2, _str150@page+8
	add	x2, x2, _str150@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1795
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1794
	mov	x1, x19
	b	L1840
L1794:
	bl	_nox_str_free_now
	mov	x1, x19
	b	L1840
L1795:
	mov	x1, x19
	b	L1840
L1796:
	mov	x1, x21
	cmp	x1, #0
	beq	L1800
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1800
	bl	_nox_str_free_now
L1800:
	mov	x0, #0
	b	L1851
L1801:
	mov	x1, x24
	cmp	x1, #0
	beq	L1805
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1805
	bl	_nox_str_free_now
L1805:
	mov	x0, #0
	b	L1851
L1806:
	mov	x1, x21
	cmp	x1, #0
	beq	L1810
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1810
	mov	x24, x1
	mov	x19, x0
	bl	_nox_str_free_now
L1810:
	mov	x0, #0
	b	L1851
L1811:
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
	bne	L1846
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
	beq	L1817
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w23, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1816
	mov	x1, x24
	b	L1818
L1816:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x20
	b	L1818
L1817:
	mov	x1, x24
	mov	w23, w4
L1818:
	cmp	x1, #0
	beq	L1822
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1821
	mov	w4, w23
	mov	x1, x21
	b	L1823
L1821:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	w4, w23
	mov	x1, x21
	mov	x0, x20
	b	L1823
L1822:
	mov	w4, w23
	mov	x1, x21
L1823:
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
	bne	L1841
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
	beq	L1828
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	w21, w4
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1827
	mov	x1, x22
	b	L1829
L1827:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L1829
L1828:
	mov	x1, x22
	mov	w21, w4
L1829:
	cmp	x1, #0
	beq	L1833
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1832
	mov	x1, x20
	mov	w4, w21
	b	L1834
L1832:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	w4, w21
	mov	x1, x20
	mov	x0, x19
	b	L1834
L1833:
	mov	x1, x20
	mov	w4, w21
L1834:
	cmp	w4, #0
	beq	L1840
	adrp	x2, _str149@page+8
	add	x2, x2, _str149@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L1839
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1838
	mov	x1, x19
	b	L1840
L1838:
	bl	_nox_str_free_now
	mov	x1, x19
	b	L1840
L1839:
	mov	x1, x19
L1840:
	mov	x0, x1
	b	L1851
L1841:
	mov	x1, x22
	cmp	x1, #0
	beq	L1845
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1845
	bl	_nox_str_free_now
L1845:
	mov	x0, #0
	b	L1851
L1846:
	mov	x1, x24
	cmp	x1, #0
	beq	L1850
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1850
	bl	_nox_str_free_now
L1850:
	mov	x0, #0
L1851:
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
	adrp	x3, _str151@page+8
	add	x3, x3, _str151@pageoff+8
	mov	x19, x0
	bl	_web_base64__encode_bytes
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str151@page+8
	add	x2, x2, _str151@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L1858
	adrp	x1, _str151@page+8
	add	x1, x1, _str151@pageoff+8
	cmp	x1, #0
	beq	L1857
	adrp	x1, _str151@page
	add	x1, x1, _str151@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str151@page
	add	x2, x2, _str151@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L1856
	mov	x0, x19
	b	L1859
L1856:
	adrp	x1, _str151@page+8
	add	x1, x1, _str151@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1859
L1857:
	mov	x0, x19
	b	L1859
L1858:
	mov	x0, #0
L1859:
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
	adrp	x3, _str152@page+8
	add	x3, x3, _str152@pageoff+8
	mov	x19, x0
	bl	_web_base64__encode_bytes
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str152@page+8
	add	x2, x2, _str152@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L1866
	adrp	x1, _str152@page+8
	add	x1, x1, _str152@pageoff+8
	cmp	x1, #0
	beq	L1865
	adrp	x1, _str152@page
	add	x1, x1, _str152@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str152@page
	add	x2, x2, _str152@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L1864
	mov	x0, x19
	b	L1867
L1864:
	adrp	x1, _str152@page+8
	add	x1, x1, _str152@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L1867
L1865:
	mov	x0, x19
	b	L1867
L1866:
	mov	x0, #0
L1867:
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
	bne	L1874
	cmp	x1, #97
	cset	w2, ge
	cmp	x1, #102
	cset	w3, le
	and	w2, w2, w3
	cmp	w2, #0
	bne	L1873
	cmp	x1, #65
	cset	w2, ge
	cmp	x1, #70
	cset	w3, le
	and	w2, w2, w3
	cmp	w2, #0
	bne	L1872
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #13
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str153@page+8
	add	x2, x2, _str153@pageoff+8
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
	b	L1875
L1872:
	mov	x0, #55
	sub	x0, x1, x0
	b	L1875
L1873:
	mov	x0, #87
	sub	x0, x1, x0
	b	L1875
L1874:
	mov	x0, #48
	sub	x0, x1, x0
L1875:
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
	adrp	x2, _str154@page+8
	add	x2, x2, _str154@pageoff+8
	cmp	x2, #0
	cmp	x1, #0
	beq	L1878
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x20
	mov	x2, #13
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str155@page+8
	add	x2, x2, _str155@pageoff+8
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
	bne	L2171
L1878:
	mov	x25, x19
	adrp	x20, _str156@page+8
	add	x20, x20, _str156@pageoff+8
	mov	x19, #0
L1879:
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
	bge	L2008
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
	bne	L2000
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
	bne	L1992
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
	bne	L1984
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
	bne	L1976
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
	bne	L1968
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
	bne	L1960
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
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
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
	bne	L1952
	mov	x2, x1
	mov	x24, x1
	mov	x1, x22
	mov	x23, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x24, x0
	mov	x0, x23
	cmp	x1, #0
	beq	L1891
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1890
	mov	x1, x25
	b	L1892
L1890:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x23
	b	L1892
L1891:
	mov	x1, x25
L1892:
	cmp	x22, #0
	beq	L1896
	mov	x2, #8
	sub	x2, x22, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x22, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1895
	mov	x23, x1
	b	L1897
L1895:
	mov	x23, x1
	mov	x1, x22
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x0, x22
	b	L1897
L1896:
	mov	x23, x1
L1897:
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
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
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
	bne	L1944
	mov	x2, x1
	mov	x25, x1
	mov	x1, x24
	mov	x22, x0
	bl	_nox_str_concat
	mov	x1, x25
	mov	x25, x0
	mov	x0, x22
	cmp	x1, #0
	beq	L1902
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1901
	mov	x1, x24
	b	L1903
L1901:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x22
	b	L1903
L1902:
	mov	x1, x24
L1903:
	cmp	x1, #0
	beq	L1906
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1906
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x0, x22
L1906:
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
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
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
	bne	L1936
	mov	x2, x1
	mov	x24, x1
	mov	x1, x25
	mov	x22, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x24, x0
	mov	x0, x22
	cmp	x1, #0
	beq	L1911
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1910
	mov	x1, x25
	b	L1912
L1910:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x22
	b	L1912
L1911:
	mov	x1, x25
L1912:
	cmp	x1, #0
	beq	L1915
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1915
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x0, x22
L1915:
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
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
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
	bne	L1928
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
	beq	L1920
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L1919
	mov	x1, x24
	b	L1921
L1919:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x22
	b	L1921
L1920:
	mov	x1, x24
L1921:
	cmp	x1, #0
	beq	L1925
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L1924
	mov	x1, x23
	b	L1926
L1924:
	mov	x22, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x22
	b	L1926
L1925:
	mov	x1, x23
L1926:
	mov	x2, #6
	add	x19, x19, x2
	mov	x25, x1
	b	L1879
L1928:
	mov	x1, x24
	cmp	x1, #0
	beq	L1932
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1932
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1932:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L1935
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1935
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L1935:
	mov	x0, #0
	b	L2175
L1936:
	mov	x1, x25
	cmp	x1, #0
	beq	L1940
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1940
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1940:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L1943
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1943
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L1943:
	mov	x0, #0
	b	L2175
L1944:
	mov	x1, x24
	cmp	x1, #0
	beq	L1948
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1948
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1948:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L1951
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1951
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L1951:
	mov	x0, #0
	b	L2175
L1952:
	mov	x1, x22
	cmp	x1, #0
	beq	L1956
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1956
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1956:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L1959
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1959
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L1959:
	mov	x0, #0
	b	L2175
L1960:
	mov	x1, x20
	cmp	x1, #0
	beq	L1964
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1964
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1964:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L1967
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1967
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L1967:
	mov	x0, #0
	b	L2175
L1968:
	mov	x1, x20
	cmp	x1, #0
	beq	L1972
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1972
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1972:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L1975
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1975
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L1975:
	mov	x0, #0
	b	L2175
L1976:
	mov	x1, x20
	cmp	x1, #0
	beq	L1980
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1980
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1980:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L1983
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1983
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L1983:
	mov	x0, #0
	b	L2175
L1984:
	mov	x1, x20
	cmp	x1, #0
	beq	L1988
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1988
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1988:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L1991
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1991
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L1991:
	mov	x0, #0
	b	L2175
L1992:
	mov	x1, x20
	cmp	x1, #0
	beq	L1996
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L1996
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L1996:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L1999
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L1999
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L1999:
	mov	x0, #0
	b	L2175
L2000:
	mov	x1, x20
	cmp	x1, #0
	beq	L2004
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2004
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2004:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2007
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2007
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2007:
	mov	x0, #0
	b	L2175
L2008:
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
	beq	L2112
	cmp	x2, #4
	beq	L2022
	mov	x1, x2
	cmp	x1, #0
	bne	L2014
	mov	x1, x20
	b	L2135
L2014:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #13
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str157@page+8
	add	x2, x2, _str157@pageoff+8
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
	beq	L2135
	cmp	x1, #0
	beq	L2018
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2018
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2018:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2021
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2021
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	mov	x22, x0
	bl	_nox_str_free_now
L2021:
	mov	x0, #0
	b	L2175
L2022:
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
	bne	L2104
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
	bne	L2096
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
	bne	L2088
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
	bne	L2080
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
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
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
	bne	L2072
	mov	x2, x1
	mov	x22, x1
	mov	x1, x21
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x22
	mov	x22, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L2032
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2031
	mov	x1, x21
	b	L2033
L2031:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L2033
L2032:
	mov	x1, x21
L2033:
	cmp	x1, #0
	beq	L2036
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2036
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2036:
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
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
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
	bne	L2064
	mov	x2, x1
	mov	x21, x1
	mov	x1, x22
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L2041
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2040
	mov	x1, x22
	b	L2042
L2040:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L2042
L2041:
	mov	x1, x22
L2042:
	cmp	x1, #0
	beq	L2045
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2045
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2045:
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
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
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
	bne	L2056
	mov	x2, x1
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L2050
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2049
	mov	x1, x21
	b	L2051
L2049:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L2051
L2050:
	mov	x1, x21
L2051:
	cmp	x1, #0
	beq	L2055
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2054
	mov	x1, x20
	b	L2135
L2054:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2135
L2055:
	mov	x1, x20
	b	L2135
L2056:
	mov	x1, x21
	cmp	x1, #0
	beq	L2060
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2060
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2060:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2063
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2063
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2063:
	mov	x0, #0
	b	L2175
L2064:
	mov	x1, x22
	cmp	x1, #0
	beq	L2068
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2068
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2068:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2071
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2071
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2071:
	mov	x0, #0
	b	L2175
L2072:
	mov	x1, x21
	cmp	x1, #0
	beq	L2076
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2076
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2076:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2079
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2079
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2079:
	mov	x0, #0
	b	L2175
L2080:
	mov	x1, x21
	cmp	x1, #0
	beq	L2084
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2084
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2084:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2087
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2087
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2087:
	mov	x0, #0
	b	L2175
L2088:
	mov	x1, x21
	mov	x0, x22
	cmp	x1, #0
	beq	L2092
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2092
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2092:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2095
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2095
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2095:
	mov	x0, #0
	b	L2175
L2096:
	mov	x1, x21
	mov	x0, x22
	cmp	x1, #0
	beq	L2100
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2100
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2100:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2103
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2103
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2103:
	mov	x0, #0
	b	L2175
L2104:
	mov	x1, x21
	mov	x0, x22
	cmp	x1, #0
	beq	L2108
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2108
	mov	x22, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2108:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2111
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2111
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	mov	x19, x0
	bl	_nox_str_free_now
L2111:
	mov	x0, #0
	b	L2175
L2112:
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
	bne	L2163
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
	bne	L2155
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
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
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
	bne	L2147
	mov	x2, x1
	mov	x21, x1
	mov	x1, x22
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L2120
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2119
	mov	x1, x22
	b	L2121
L2119:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L2121
L2120:
	mov	x1, x22
L2121:
	cmp	x1, #0
	beq	L2124
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2124
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2124:
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
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
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
	bne	L2139
	mov	x2, x1
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L2129
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2128
	mov	x1, x21
	b	L2130
L2128:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L2130
L2129:
	mov	x1, x21
L2130:
	cmp	x1, #0
	beq	L2134
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2133
	mov	x1, x20
	b	L2135
L2133:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2135
L2134:
	mov	x1, x20
L2135:
	adrp	x2, _str154@page+8
	add	x2, x2, _str154@pageoff+8
	cmp	x2, #0
	beq	L2138
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	adrp	x3, _str154@page
	add	x3, x3, _str154@pageoff
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2138
	mov	x19, x1
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
	mov	x1, x19
L2138:
	mov	x0, x1
	b	L2175
L2139:
	mov	x1, x21
	cmp	x1, #0
	beq	L2143
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2143
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2143:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2146
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2146
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2146:
	mov	x0, #0
	b	L2175
L2147:
	mov	x1, x22
	cmp	x1, #0
	beq	L2151
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2151
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2151:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2154
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2154
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2154:
	mov	x0, #0
	b	L2175
L2155:
	mov	x1, x22
	cmp	x1, #0
	beq	L2159
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2159
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2159:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2162
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2162
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2162:
	mov	x0, #0
	b	L2175
L2163:
	mov	x1, x22
	mov	x0, x19
	cmp	x1, #0
	beq	L2167
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2167
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2167:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2170
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2170
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2170:
	mov	x0, #0
	b	L2175
L2171:
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	cmp	x1, #0
	beq	L2174
	adrp	x1, _str154@page
	add	x1, x1, _str154@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str154@page
	add	x2, x2, _str154@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2174
	adrp	x1, _str154@page+8
	add	x1, x1, _str154@pageoff+8
	bl	_nox_str_free_now
L2174:
	mov	x0, #0
L2175:
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
	beq	L2178
	mov	x2, #8
	mov	w21, w3
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
	b	L2179
L2178:
	mov	w21, w3
L2179:
	cmp	w21, #0
	beq	L2190
	mov	w23, w21
	mov	x19, #0
L2181:
	mov	x21, x1
	adrp	x1, _str158@page+8
	add	x1, x1, _str158@pageoff+8
	mov	x20, x0
	mov	x0, x21
	bl	_nox_strings_ends_with_raw
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	cmp	x2, #0
	beq	L2189
	mov	x21, x1
	mov	x20, x0
	bl	_web_base64__drop_last
	mov	w3, w23
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L2186
	mov	w23, w3
	mov	x3, #8
	sub	x3, x1, x3
	mov	x22, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2185
	mov	x1, x21
	mov	w3, w23
	mov	x2, x22
	b	L2187
L2185:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	w3, w23
	mov	x2, x22
	mov	x1, x21
	mov	x0, x20
	b	L2187
L2186:
	mov	x1, x21
L2187:
	mov	x4, #1
	add	x19, x19, x4
	mov	w23, w3
	mov	x22, x2
	b	L2181
L2189:
	mov	w21, w23
	b	L2191
L2190:
	mov	x19, #0
L2191:
	mov	x23, x1
	mov	x20, x0
	bl	_web_base64__byte_len
	mov	w3, w21
	mov	x1, x0
	mov	x0, x20
	mov	w2, #1
	eor	w2, w3, w2
	cmp	w2, #0
	bne	L2193
	mov	x1, x23
	b	L2210
L2193:
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
	beq	L2195
	mov	x1, x23
	b	L2196
L2195:
	mov	x1, #16
	mov	x21, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #13
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str159@page+8
	add	x2, x2, _str159@pageoff+8
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
	bne	L2417
L2196:
	cmp	x20, #2
	beq	L2204
	cmp	x20, #3
	bne	L2210
	adrp	x2, _str161@page+8
	add	x2, x2, _str161@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L2202
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2201
	mov	x1, x20
	b	L2203
L2201:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2203
L2202:
	mov	x1, x20
L2203:
	mov	x19, #1
	b	L2210
L2204:
	adrp	x2, _str160@page+8
	add	x2, x2, _str160@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L2208
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2207
	mov	x1, x20
	b	L2209
L2207:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2209
L2208:
	mov	x1, x20
L2209:
	mov	x19, #2
L2210:
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
	bne	L2212
	mov	x1, x21
	b	L2213
L2212:
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x20
	mov	x2, #13
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str162@page+8
	add	x2, x2, _str162@pageoff+8
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
	bne	L2413
L2213:
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
	adrp	x23, _str163@page+8
	add	x23, x23, _str163@pageoff+8
	mov	x22, #0
	mov	x24, #0
L2215:
	str	x22, [x29, 136]
	cmp	x24, x28
	bge	L2407
	cmp	x24, #0
	mov	x25, x1
	cset	w1, lt
	cmp	x24, x19
	mov	x26, x2
	cset	w2, ge
	orr	w1, w1, w2
	cmp	x23, #0
	cmp	w1, #0
	bne	L2218
	mov	x1, x25
	mov	x2, x26
	b	L2219
L2218:
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
	adrp	x2, _str164@page+8
	add	x2, x2, _str164@pageoff+8
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
	bne	L2399
L2219:
	cmp	w20, #0
	bne	L2222
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
	b	L2223
L2222:
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
L2223:
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
	bne	L2391
	cmp	x1, #0
	beq	L2228
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2227
	mov	x1, x25
	mov	x2, x26
	b	L2229
L2227:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	b	L2229
L2228:
	mov	x1, x25
L2229:
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
	bne	L2231
	mov	x1, x25
	mov	x2, x26
	b	L2232
L2231:
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
	adrp	x2, _str165@page+8
	add	x2, x2, _str165@pageoff+8
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
	bne	L2383
L2232:
	cmp	w20, #0
	bne	L2235
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
	b	L2236
L2235:
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
L2236:
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
	bne	L2375
	cmp	x1, #0
	beq	L2241
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2240
	mov	x1, x25
	mov	x2, x26
	b	L2242
L2240:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	b	L2242
L2241:
	mov	x1, x25
L2242:
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
	bne	L2244
	mov	x1, x25
	mov	x2, x26
	b	L2245
L2244:
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
	adrp	x2, _str166@page+8
	add	x2, x2, _str166@pageoff+8
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
	bne	L2367
L2245:
	cmp	w20, #0
	bne	L2248
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
	b	L2249
L2248:
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
L2249:
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
	bne	L2359
	cmp	x1, #0
	beq	L2254
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2253
	mov	x1, x25
	mov	x2, x26
	b	L2255
L2253:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	b	L2255
L2254:
	mov	x1, x25
L2255:
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
	bne	L2257
	mov	x1, x25
	mov	x2, x26
	b	L2258
L2257:
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
	adrp	x2, _str167@page+8
	add	x2, x2, _str167@pageoff+8
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
	bne	L2351
L2258:
	cmp	w20, #0
	bne	L2261
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
	b	L2262
L2261:
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
L2262:
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
	bne	L2343
	cmp	x1, #0
	beq	L2267
	mov	x7, #8
	sub	x7, x1, x7
	mov	x26, x2
	ldr	x2, [x7]
	mov	x8, #1
	sub	x2, x2, x8
	str	x2, [x7]
	cmp	x2, #0
	ble	L2266
	mov	x1, x25
	mov	x2, x26
	b	L2268
L2266:
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
	b	L2268
L2267:
	mov	x1, x25
L2268:
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
	blt	L2270
	mov	x1, x3
	mov	x26, x2
	b	L2285
L2270:
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
	bne	L2335
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
	beq	L2277
	mov	x4, #8
	sub	x5, x1, x4
	ldr	x4, [x5]
	mov	x6, #1
	sub	x4, x4, x6
	str	x4, [x5]
	cmp	x4, #0
	ble	L2276
	mov	x1, x3
	mov	x17, x25
	mov	x25, x1
	mov	x1, x17
	b	L2278
L2276:
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
	b	L2278
L2277:
	mov	x1, x25
	mov	x25, x3
L2278:
	cmp	x23, #0
	beq	L2283
	mov	x3, #8
	sub	x3, x23, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x23, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L2282
	mov	x23, x2
	mov	x17, x1
	mov	x1, x25
	mov	x25, x17
	mov	x2, x26
	b	L2284
L2282:
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
	b	L2284
L2283:
	mov	x23, x2
	mov	x17, x1
	mov	x1, x25
	mov	x25, x17
	mov	x2, x26
L2284:
	mov	x26, x2
	mov	x2, #1
	add	x22, x22, x2
L2285:
	cmp	x22, x27
	blt	L2287
	mov	x21, x27
	mov	x2, x26
	mov	x26, x1
	b	L2301
L2287:
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
	bne	L2327
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
	beq	L2293
	mov	x3, #8
	sub	x4, x1, x3
	ldr	x3, [x4]
	mov	x5, #1
	sub	x3, x3, x5
	str	x3, [x4]
	cmp	x3, #0
	ble	L2292
	mov	x1, x2
	mov	x2, x26
	mov	x26, x21
	mov	x21, x23
	mov	x23, x1
	mov	x1, x25
	b	L2294
L2292:
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
	b	L2294
L2293:
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
L2294:
	cmp	x21, #0
	beq	L2299
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
	ble	L2298
	mov	x21, x27
	mov	x2, x25
	b	L2300
L2298:
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
	b	L2300
L2299:
	mov	x21, x27
L2300:
	mov	x25, x1
	mov	x1, #1
	add	x22, x22, x1
L2301:
	cmp	x22, x21
	blt	L2303
	mov	x1, x25
	mov	x25, x28
	b	L2317
L2303:
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
	bne	L2319
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
	beq	L2309
	mov	x3, #8
	sub	x3, x1, x3
	mov	x26, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2308
	mov	x1, x25
	mov	x25, x28
	mov	x2, x26
	b	L2310
L2308:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x21
	ldr	x27, [x29, 16]
	ldr	x21, [x29, 32]
	ldr	x25, [x29, 24]
	b	L2310
L2309:
	mov	x1, x25
	mov	x25, x28
L2310:
	cmp	x23, #0
	beq	L2315
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
	ble	L2314
	mov	x23, x27
	mov	x2, x26
	b	L2316
L2314:
	mov	x25, x1
	mov	x1, x23
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	ldr	x23, [x29, 16]
	ldr	x25, [x29, 24]
	b	L2316
L2315:
	mov	x23, x27
L2316:
	mov	x3, #1
	add	x22, x22, x3
L2317:
	mov	x3, #4
	add	x24, x24, x3
	mov	x28, x25
	b	L2215
L2319:
	mov	x1, x25
	cmp	x1, #0
	beq	L2323
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2323
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2323:
	cmp	x23, #0
	beq	L2326
	mov	x1, #8
	sub	x1, x23, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x23, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2326
	mov	x1, x23
	bl	_nox_str_free_now
L2326:
	mov	x0, #0
	b	L2421
L2327:
	mov	x1, x25
	cmp	x1, #0
	beq	L2331
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2331
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L2331:
	cmp	x23, #0
	beq	L2334
	mov	x1, #8
	sub	x1, x23, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x23, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2334
	mov	x1, x23
	bl	_nox_str_free_now
L2334:
	mov	x0, #0
	b	L2421
L2335:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L2339
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2339
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2339:
	cmp	x19, #0
	beq	L2342
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2342
	mov	x1, x19
	bl	_nox_str_free_now
L2342:
	mov	x0, #0
	b	L2421
L2343:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L2347
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2347
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2347:
	cmp	x19, #0
	beq	L2350
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2350
	mov	x1, x19
	bl	_nox_str_free_now
L2350:
	mov	x0, #0
	b	L2421
L2351:
	mov	x19, x23
	cmp	x1, #0
	beq	L2355
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2355
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2355:
	cmp	x19, #0
	beq	L2358
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2358
	mov	x1, x19
	bl	_nox_str_free_now
L2358:
	mov	x0, #0
	b	L2421
L2359:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L2363
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2363
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2363:
	cmp	x19, #0
	beq	L2366
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2366
	mov	x1, x19
	bl	_nox_str_free_now
L2366:
	mov	x0, #0
	b	L2421
L2367:
	mov	x19, x23
	cmp	x1, #0
	beq	L2371
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2371
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2371:
	cmp	x19, #0
	beq	L2374
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2374
	mov	x1, x19
	bl	_nox_str_free_now
L2374:
	mov	x0, #0
	b	L2421
L2375:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L2379
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2379
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2379:
	cmp	x19, #0
	beq	L2382
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2382
	mov	x1, x19
	bl	_nox_str_free_now
L2382:
	mov	x0, #0
	b	L2421
L2383:
	mov	x19, x23
	cmp	x1, #0
	beq	L2387
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2387
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2387:
	cmp	x19, #0
	beq	L2390
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2390
	mov	x1, x19
	bl	_nox_str_free_now
L2390:
	mov	x0, #0
	b	L2421
L2391:
	mov	x19, x23
	mov	x1, x25
	cmp	x1, #0
	beq	L2395
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2395
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2395:
	cmp	x19, #0
	beq	L2398
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2398
	mov	x1, x19
	bl	_nox_str_free_now
L2398:
	mov	x0, #0
	b	L2421
L2399:
	mov	x19, x23
	cmp	x1, #0
	beq	L2403
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2403
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x0, x20
L2403:
	cmp	x19, #0
	beq	L2406
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2406
	mov	x1, x19
	bl	_nox_str_free_now
L2406:
	mov	x0, #0
	b	L2421
L2407:
	mov	x19, x23
	cmp	x1, #0
	beq	L2412
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2411
	mov	x0, x19
	b	L2421
L2411:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L2421
L2412:
	mov	x0, x19
	b	L2421
L2413:
	cmp	x1, #0
	beq	L2416
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2416
	bl	_nox_str_free_now
L2416:
	mov	x0, #0
	b	L2421
L2417:
	cmp	x1, #0
	beq	L2420
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2420
	bl	_nox_str_free_now
L2420:
	mov	x0, #0
L2421:
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
	adrp	x2, _str168@page+8
	add	x2, x2, _str168@pageoff+8
	mov	x19, x0
	bl	_web_base64__decode_to_ascii_impl
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str168@page+8
	add	x2, x2, _str168@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L2428
	adrp	x1, _str168@page+8
	add	x1, x1, _str168@pageoff+8
	cmp	x1, #0
	beq	L2427
	adrp	x1, _str168@page
	add	x1, x1, _str168@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str168@page
	add	x2, x2, _str168@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L2426
	mov	x0, x19
	b	L2429
L2426:
	adrp	x1, _str168@page+8
	add	x1, x1, _str168@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L2429
L2427:
	mov	x0, x19
	b	L2429
L2428:
	mov	x0, #0
L2429:
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
	adrp	x2, _str169@page+8
	add	x2, x2, _str169@pageoff+8
	mov	x19, x0
	bl	_web_base64__decode_to_ascii_impl
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x20
	adrp	x2, _str169@page+8
	add	x2, x2, _str169@pageoff+8
	cmp	x2, #0
	cmp	w1, #0
	bne	L2436
	adrp	x1, _str169@page+8
	add	x1, x1, _str169@pageoff+8
	cmp	x1, #0
	beq	L2435
	adrp	x1, _str169@page
	add	x1, x1, _str169@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str169@page
	add	x2, x2, _str169@pageoff
	str	x1, [x2]
	cmp	x1, #0
	ble	L2434
	mov	x0, x19
	b	L2437
L2434:
	adrp	x1, _str169@page+8
	add	x1, x1, _str169@pageoff+8
	bl	_nox_str_free_now
	mov	x0, x19
	b	L2437
L2435:
	mov	x0, x19
	b	L2437
L2436:
	mov	x0, #0
L2437:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function web_base64_decode_url */

.text
.balign 4
.globl _web_jwt__header_json
_web_jwt__header_json:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, _str170@page+8
	add	x0, x0, _str170@pageoff+8
	ldp	x29, x30, [sp], 16
	ret
/* end function web_jwt__header_json */

.text
.balign 4
.globl _web_jwt__now_unix
_web_jwt__now_unix:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_time_now_ms_raw
	mov	x1, x0
	mov	x0, #1000
	sdiv	x0, x1, x0
	mov	x2, #1000
	sdiv	x17, x1, x2
	msub	x2, x17, x2, x1
	cmp	x2, #0
	cset	w1, ne
	cmp	x2, #0
	cset	w2, lt
	and	w1, w1, w2
	mov	w1, w1
	sub	x0, x0, x1
	ldp	x29, x30, [sp], 16
	ret
/* end function web_jwt__now_unix */

.text
.balign 4
.globl _web_jwt__find_object_field
_web_jwt__find_object_field:
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
	mov	x3, #48
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x20, [x3]
	mov	x19, #0
L2444:
	cmp	x19, x20
	bge	L2465
	mov	x3, #48
	add	x3, x1, x3
	ldr	x23, [x3]
	mov	x25, x2
	ldr	x2, [x23]
	cmp	x19, #0
	cset	w21, lt
	cmp	x19, x2
	mov	x24, x1
	cset	w1, ge
	orr	w1, w21, w1
	cmp	w1, #0
	bne	L2447
	mov	x2, x25
	mov	x1, x24
	b	L2448
L2447:
	mov	x1, #16
	mov	x22, x0
	bl	_nox_rc_alloc
	mov	x2, x25
	mov	x1, x0
	mov	x0, x22
	mov	x3, #2
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x25, x2
	adrp	x2, _str171@page+8
	add	x2, x2, _str171@pageoff+8
	mov	x26, x1
	mov	x22, x0
	bl	_IndexError___init__
	mov	x1, x26
	mov	x0, x22
	mov	x22, x0
	bl	_nox_raise
	mov	x0, x22
	mov	x22, x0
	bl	_nox_exception_pending
	mov	x2, x25
	mov	x1, x24
	mov	w3, w0
	mov	x0, x22
	cmp	w3, #0
	bne	L2464
L2448:
	mov	x3, #8
	mul	x3, x19, x3
	mov	x4, #16
	add	x22, x3, x4
	mov	x25, x1
	add	x1, x22, x23
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L2450
	mov	x26, x2
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	add	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	b	L2451
L2450:
	mov	x26, x2
L2451:
	mov	x24, x1
	mov	x1, x26
	mov	x23, x0
	mov	x0, x24
	bl	_strcmp
	mov	x2, x26
	mov	x1, x24
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	cmp	x1, #0
	beq	L2455
	mov	x26, x2
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2454
	mov	x2, x26
	mov	x1, x25
	b	L2456
L2454:
	mov	x24, x0
	bl	_nox_str_free_now
	mov	x2, x26
	mov	x1, x25
	mov	x0, x24
	b	L2456
L2455:
	mov	x1, x25
L2456:
	cmp	w23, #0
	beq	L2458
	mov	x3, #1
	add	x19, x19, x3
	b	L2444
L2458:
	mov	x20, x19
	mov	x2, #56
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x1, [x19]
	cmp	x20, x1
	cset	w1, ge
	orr	w1, w21, w1
	cmp	w1, #0
	beq	L2461
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x20
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str172@page+8
	add	x2, x2, _str172@pageoff+8
	mov	x21, x1
	mov	x20, x0
	bl	_IndexError___init__
	mov	x1, x21
	mov	x0, x20
	mov	x20, x0
	bl	_nox_raise
	mov	x0, x20
	bl	_nox_exception_pending
	cmp	w0, #0
	bne	L2463
L2461:
	add	x0, x22, x19
	ldr	x0, [x0]
	cmp	x0, #0
	beq	L2466
	mov	x1, #8
	sub	x2, x0, x1
	ldr	x1, [x2]
	mov	x3, #1
	add	x1, x1, x3
	str	x1, [x2]
	b	L2466
L2463:
	mov	x0, #0
	b	L2466
L2464:
	mov	x0, #0
	b	L2466
L2465:
	mov	x0, #0
L2466:
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
/* end function web_jwt__find_object_field */

.text
.balign 4
.globl _web_jwt__with_exp
_web_jwt__with_exp:
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
	mov	x19, x0
	bl	_nox_json_decode
	mov	x21, x0
	mov	x0, x19
	str	x21, [x29, 24]
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L2561
	mov	x2, #8
	add	x2, x21, x2
	ldr	x2, [x2]
	cmp	x2, #5
	mov	x20, x1
	cset	w1, eq
	mov	w2, #1
	eor	w1, w1, w2
	cmp	x21, #0
	cmp	w1, #0
	bne	L2470
	mov	x1, x20
	b	L2471
L2470:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str173@page+8
	add	x2, x2, _str173@pageoff+8
	mov	x22, x1
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
	mov	x1, x22
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
	bne	L2557
L2471:
	mov	x19, x0
	bl	_nox_int_to_str
	mov	x1, x0
	mov	x0, x19
	mov	x2, x1
	mov	x20, x1
	adrp	x1, _str174@page+8
	add	x1, x1, _str174@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L2475
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2474
	mov	x1, x20
	b	L2476
L2474:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2476
L2475:
	mov	x1, x20
L2476:
	mov	x2, #48
	add	x2, x21, x2
	ldr	x2, [x2]
	ldr	x23, [x2]
	str	x23, [x29, 16]
	mov	x20, x1
	mov	x22, #0
	mov	x19, #0
L2478:
	cmp	x19, #0
	cmp	x20, #0
	cmp	x22, x23
	bge	L2543
	mov	x1, #48
	add	x1, x21, x1
	ldr	x25, [x1]
	ldr	x1, [x25]
	cmp	x22, #0
	cset	w27, lt
	cmp	x22, x1
	cset	w1, ge
	orr	w1, w27, w1
	cmp	w1, #0
	beq	L2481
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
	adrp	x2, _str175@page+8
	add	x2, x2, _str175@pageoff+8
	mov	x24, x1
	mov	x23, x0
	bl	_IndexError___init__
	mov	x1, x24
	mov	x0, x23
	ldr	x23, [x29, 16]
	mov	x24, x0
	bl	_nox_raise
	mov	x0, x24
	mov	x24, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x24
	cmp	w1, #0
	bne	L2533
L2481:
	mov	x1, #8
	mul	x1, x22, x1
	mov	x2, #16
	mov	x24, x20
	add	x20, x1, x2
	add	x1, x20, x25
	mov	x25, x19
	ldr	x19, [x1]
	cmp	x19, #0
	beq	L2483
	mov	x1, #8
	sub	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #1
	add	x1, x1, x2
	mov	x2, #8
	sub	x2, x19, x2
	str	x1, [x2]
L2483:
	cmp	x25, #0
	beq	L2486
	mov	x1, #8
	sub	x1, x25, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x25, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2486
	mov	x1, x25
	mov	x25, x0
	bl	_nox_str_free_now
	mov	x0, x25
L2486:
	adrp	x1, _str176@page+8
	add	x1, x1, _str176@pageoff+8
	mov	x25, x0
	mov	x0, x19
	bl	_strcmp
	mov	w1, w0
	mov	x0, x25
	cmp	w1, #0
	bne	L2488
	mov	x20, x24
	b	L2522
L2488:
	adrp	x2, _str177@page+8
	add	x2, x2, _str177@pageoff+8
	mov	x1, x24
	mov	x21, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x21
	mov	x23, x1
	mov	x1, x19
	mov	x21, x0
	bl	_nox_json_encode_string
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x2, x23
	mov	x25, x1
	mov	x21, x0
	bl	_nox_str_concat
	mov	x1, x25
	mov	x25, x0
	mov	x0, x21
	ldr	x21, [x29, 24]
	cmp	x1, #0
	beq	L2492
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2491
	mov	x1, x23
	b	L2493
L2491:
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x21
	ldr	x21, [x29, 24]
	b	L2493
L2492:
	mov	x1, x23
L2493:
	cmp	x1, #0
	beq	L2497
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2496
	mov	x1, x25
	b	L2498
L2496:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x23
	b	L2498
L2497:
	mov	x1, x25
L2498:
	adrp	x2, _str178@page+8
	add	x2, x2, _str178@pageoff+8
	mov	x25, x1
	mov	x23, x0
	bl	_nox_str_concat
	mov	x1, x25
	mov	x25, x0
	mov	x0, x23
	ldr	x23, [x29, 16]
	cmp	x1, #0
	beq	L2502
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2501
	mov	x1, x25
	b	L2503
L2501:
	mov	x23, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x23
	ldr	x23, [x29, 16]
	b	L2503
L2502:
	mov	x1, x25
L2503:
	mov	x2, #56
	add	x2, x21, x2
	ldr	x26, [x2]
	ldr	x2, [x26]
	cmp	x22, x2
	mov	x25, x1
	cset	w1, ge
	orr	w1, w27, w1
	cmp	w1, #0
	bne	L2505
	mov	x1, x25
	b	L2506
L2505:
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
	adrp	x2, _str179@page+8
	add	x2, x2, _str179@pageoff+8
	mov	x23, x1
	mov	x21, x0
	bl	_IndexError___init__
	mov	x1, x23
	mov	x0, x21
	ldr	x21, [x29, 24]
	mov	x23, x0
	bl	_nox_raise
	mov	x0, x23
	mov	x23, x0
	bl	_nox_exception_pending
	mov	x1, x25
	mov	w2, w0
	mov	x0, x23
	ldr	x23, [x29, 16]
	cmp	w2, #0
	bne	L2523
L2506:
	mov	x25, x1
	add	x1, x20, x26
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L2508
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	add	x2, x2, x4
	str	x2, [x3]
L2508:
	mov	x26, x1
	mov	x20, x0
	bl	_nox_json_encode
	mov	x1, x26
	mov	x26, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L2510
	mov	x20, x0
	bl	_JsonValue_release
	mov	x1, x25
	mov	x0, x20
	b	L2511
L2510:
	mov	x1, x25
L2511:
	mov	x2, x26
	mov	x25, x1
	mov	x20, x0
	bl	_nox_str_concat
	mov	x1, x25
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x1, #0
	beq	L2515
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2514
	mov	x1, x26
	b	L2516
L2514:
	mov	x25, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x25
	b	L2516
L2515:
	mov	x1, x26
L2516:
	cmp	x1, #0
	beq	L2519
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2519
	mov	x25, x0
	bl	_nox_str_free_now
	mov	x0, x25
L2519:
	cmp	x24, #0
	beq	L2522
	mov	x1, #8
	sub	x1, x24, x1
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	mov	x2, #8
	sub	x2, x24, x2
	str	x1, [x2]
	cmp	x1, #0
	bgt	L2522
	mov	x1, x24
	mov	x24, x0
	bl	_nox_str_free_now
	mov	x0, x24
L2522:
	mov	x1, #1
	add	x22, x22, x1
	b	L2478
L2523:
	mov	x1, x19
	mov	x20, x24
	cmp	x1, #0
	beq	L2528
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2527
	mov	x1, x20
	b	L2529
L2527:
	mov	x19, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2529
L2528:
	mov	x1, x20
L2529:
	cmp	x1, #0
	beq	L2532
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2532
	mov	x20, x1
	bl	_nox_str_free_now
L2532:
	mov	x0, #0
	b	L2562
L2533:
	mov	x1, x19
	cmp	x1, #0
	beq	L2538
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2537
	mov	x1, x20
	b	L2539
L2537:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2539
L2538:
	mov	x1, x20
L2539:
	cmp	x1, #0
	beq	L2542
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2542
	mov	x22, x1
	bl	_nox_str_free_now
L2542:
	mov	x0, #0
	b	L2562
L2543:
	mov	x22, x20
	mov	x1, x19
	adrp	x2, _str180@page+8
	add	x2, x2, _str180@pageoff+8
	mov	x20, x1
	mov	x1, x22
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L2548
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2547
	mov	x1, x22
	b	L2549
L2547:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L2549
L2548:
	mov	x1, x22
L2549:
	cmp	x1, #0
	beq	L2553
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2552
	mov	x1, x21
	b	L2554
L2552:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L2554
L2553:
	mov	x1, x21
L2554:
	cmp	x1, #0
	beq	L2556
	bl	_JsonValue_release
	mov	x0, x19
	b	L2562
L2556:
	mov	x0, x19
	b	L2562
L2557:
	mov	x1, x21
	cmp	x1, #0
	beq	L2560
	bl	_JsonValue_release
L2560:
	mov	x0, #0
	b	L2562
L2561:
	mov	x0, #0
L2562:
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
/* end function web_jwt__with_exp */

.text
.balign 4
.globl _web_jwt__sign
_web_jwt__sign:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	bl	_nox_crypto_hmac_sha256_hex_raw
	mov	x1, x0
	mov	x0, x19
	mov	x21, x1
	mov	x19, x0
	bl	_web_base64_encode_hex_url
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x21
	mov	w2, w0
	mov	x0, x20
	cmp	x1, #0
	cmp	w2, #0
	bne	L2569
	cmp	x1, #0
	beq	L2568
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2567
	mov	x0, x19
	b	L2573
L2567:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L2573
L2568:
	mov	x0, x19
	b	L2573
L2569:
	cmp	x1, #0
	beq	L2572
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2572
	bl	_nox_str_free_now
L2572:
	mov	x0, #0
L2573:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function web_jwt__sign */

.text
.balign 4
.globl _web_jwt_encode
_web_jwt_encode:
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
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, x20
	bl	_nox_str_char_count
	mov	x2, x22
	mov	x1, x0
	mov	x0, x19
	mov	x22, x2
	adrp	x2, _str183@page+8
	add	x2, x2, _str183@pageoff+8
	cmp	x2, #0
	cmp	x1, #0
	bne	L2576
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x2, x22
	mov	x1, x0
	mov	x0, x19
	mov	x3, #14
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x22, x2
	adrp	x2, _str181@page+8
	add	x2, x2, _str181@pageoff+8
	mov	x23, x1
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
	mov	x1, x23
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L2658
L2576:
	cmp	x22, #0
	ble	L2578
	mov	x2, x22
	mov	x1, x21
	b	L2579
L2578:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x2, x22
	mov	x1, x0
	mov	x0, x19
	mov	x3, #14
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	mov	x3, #0
	str	x3, [x4]
	mov	x22, x2
	adrp	x2, _str182@page+8
	add	x2, x2, _str182@pageoff+8
	mov	x23, x1
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
	mov	x1, x23
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x2, x22
	mov	x1, x21
	mov	w3, w0
	mov	x0, x19
	cmp	w3, #0
	bne	L2657
L2579:
	mov	x19, x0
	bl	_web_jwt__with_exp
	mov	x25, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L2656
	mov	x20, x1
	adrp	x1, _str183@page+8
	add	x1, x1, _str183@pageoff+8
	mov	x19, x0
	bl	_web_base64_encode_url
	mov	x24, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	x25, #0
	cmp	w2, #0
	bne	L2651
	adrp	x2, _str183@page+8
	add	x2, x2, _str183@pageoff+8
	cmp	x2, #0
	beq	L2584
	adrp	x2, _str183@page
	add	x2, x2, _str183@pageoff
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	adrp	x3, _str183@page
	add	x3, x3, _str183@pageoff
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2584
	mov	x20, x1
	adrp	x1, _str183@page+8
	add	x1, x1, _str183@pageoff+8
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
L2584:
	mov	x20, x1
	mov	x1, x25
	mov	x19, x0
	bl	_web_base64_encode_url
	mov	x22, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	x24, #0
	cmp	w1, #0
	bne	L2641
	adrp	x2, _str184@page+8
	add	x2, x2, _str184@pageoff+8
	mov	x1, x24
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x2, x22
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x21
	mov	x23, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L2589
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2588
	mov	x1, x20
	b	L2590
L2588:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2590
L2589:
	mov	x1, x20
L2590:
	mov	x2, x23
	mov	x19, x0
	bl	_web_jwt__sign
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	x23, #0
	cmp	x22, #0
	cmp	w1, #0
	bne	L2621
	adrp	x2, _str185@page+8
	add	x2, x2, _str185@pageoff+8
	mov	x1, x23
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x2, x21
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmp	x1, #0
	beq	L2595
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2594
	mov	x1, x25
	b	L2596
L2594:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x20
	b	L2596
L2595:
	mov	x1, x25
L2596:
	cmp	x1, #0
	beq	L2600
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2599
	mov	x1, x24
	b	L2601
L2599:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x20
	b	L2601
L2600:
	mov	x1, x24
L2601:
	cmp	x1, #0
	beq	L2605
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2604
	mov	x1, x23
	b	L2606
L2604:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x20
	b	L2606
L2605:
	mov	x1, x23
L2606:
	cmp	x1, #0
	beq	L2610
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2609
	mov	x1, x22
	b	L2611
L2609:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L2611
L2610:
	mov	x1, x22
L2611:
	cmp	x1, #0
	beq	L2615
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2614
	mov	x1, x21
	b	L2616
L2614:
	mov	x20, x1
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L2616
L2615:
	mov	x1, x21
L2616:
	cmp	x1, #0
	beq	L2620
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2619
	mov	x0, x19
	b	L2659
L2619:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L2659
L2620:
	mov	x0, x19
	b	L2659
L2621:
	mov	x21, x23
	mov	x20, x22
	mov	x22, x24
	mov	x1, x25
	cmp	x1, #0
	beq	L2626
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2625
	mov	x1, x22
	b	L2627
L2625:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L2627
L2626:
	mov	x1, x22
L2627:
	cmp	x1, #0
	beq	L2631
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2630
	mov	x1, x21
	b	L2632
L2630:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L2632
L2631:
	mov	x1, x21
L2632:
	cmp	x1, #0
	beq	L2636
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2635
	mov	x1, x20
	b	L2637
L2635:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2637
L2636:
	mov	x1, x20
L2637:
	cmp	x1, #0
	beq	L2640
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2640
	bl	_nox_str_free_now
L2640:
	mov	x0, #0
	b	L2659
L2641:
	mov	x20, x24
	mov	x1, x25
	cmp	x1, #0
	beq	L2646
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2645
	mov	x1, x20
	b	L2647
L2645:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2647
L2646:
	mov	x1, x20
L2647:
	cmp	x1, #0
	beq	L2650
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2650
	bl	_nox_str_free_now
L2650:
	mov	x0, #0
	b	L2659
L2651:
	mov	x1, x25
	cmp	x1, #0
	beq	L2655
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2655
	bl	_nox_str_free_now
L2655:
	mov	x0, #0
	b	L2659
L2656:
	mov	x0, #0
	b	L2659
L2657:
	mov	x0, #0
	b	L2659
L2658:
	mov	x0, #0
L2659:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function web_jwt_encode */

.text
.balign 4
.globl _web_jwt__split_token
_web_jwt__split_token:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	adrp	x2, _str186@page+8
	add	x2, x2, _str186@pageoff+8
	mov	x19, x0
	bl	_nox_strings_split_raw
	mov	x1, x0
	mov	x0, x19
	mov	x20, x1
	ldr	x1, [x1]
	cmp	x1, #3
	bne	L2662
	mov	x1, x20
	b	L2663
L2662:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str187@page+8
	add	x2, x2, _str187@pageoff+8
	mov	x21, x1
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
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
	bne	L2664
L2663:
	mov	x0, x1
	b	L2667
L2664:
	cmp	x1, #0
	beq	L2666
	bl	_List_str_release
L2666:
	mov	x0, #0
L2667:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function web_jwt__split_token */

.text
.balign 4
.globl _web_jwt__check_time_claims
_web_jwt__check_time_claims:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	bl	_nox_time_now_ms
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	mov	x2, #1000
	sdiv	x2, x3, x2
	mov	x4, #1000
	sdiv	x17, x3, x4
	msub	x4, x17, x4, x3
	cmp	x4, #0
	cset	w3, ne
	cmp	x4, #0
	cset	w4, lt
	and	w3, w3, w4
	mov	w3, w3
	sub	x19, x2, x3
	adrp	x2, _str188@page+8
	add	x2, x2, _str188@pageoff+8
	mov	x21, x1
	mov	x20, x0
	bl	_web_jwt__find_object_field
	mov	x1, x21
	mov	x22, x0
	mov	x0, x20
	cmp	x22, #0
	beq	L2678
	mov	x2, #8
	add	x2, x22, x2
	ldr	x2, [x2]
	cmp	x2, #2
	cset	w2, eq
	mov	w3, #1
	eor	w2, w2, w3
	cmp	w2, #0
	bne	L2674
	mov	x2, #24
	add	x2, x22, x2
	ldr	d0, [x2]
	mov	x21, x1
	fcvtzs	x1, d0
	cmp	x19, x1
	bge	L2672
	mov	x1, x22
	b	L2676
L2672:
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x20
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str191@page+8
	add	x2, x2, _str191@pageoff+8
	mov	x23, x1
	mov	x20, x0
	bl	_web_jwt_JwtError___init__
	mov	x1, x23
	mov	x0, x20
	mov	x20, x0
	bl	_nox_raise
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x20
	cmp	w2, #0
	beq	L2676
	mov	x22, x1
	bl	_JsonValue_release
	b	L2723
L2674:
	mov	x21, x1
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x20
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str190@page+8
	add	x2, x2, _str190@pageoff+8
	mov	x23, x1
	mov	x20, x0
	bl	_web_jwt_JwtError___init__
	mov	x1, x23
	mov	x0, x20
	mov	x20, x0
	bl	_nox_raise
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x20
	cmp	w2, #0
	bne	L2677
L2676:
	mov	x22, x1
	mov	x1, x21
	b	L2680
L2677:
	mov	x22, x1
	bl	_JsonValue_release
	b	L2723
L2678:
	mov	x21, x1
	mov	x1, #16
	mov	x20, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x20
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str189@page+8
	add	x2, x2, _str189@pageoff+8
	mov	x23, x1
	mov	x20, x0
	bl	_web_jwt_JwtError___init__
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
	bne	L2723
L2680:
	adrp	x2, _str192@page+8
	add	x2, x2, _str192@pageoff+8
	mov	x21, x1
	mov	x20, x0
	bl	_web_jwt__find_object_field
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x20, #0
	beq	L2692
	mov	x2, #8
	add	x2, x20, x2
	ldr	x2, [x2]
	cmp	x2, #2
	cset	w2, eq
	mov	w3, #1
	eor	w2, w2, w3
	cmp	w2, #0
	bne	L2690
	mov	x2, #24
	add	x2, x20, x2
	ldr	d0, [x2]
	mov	x23, x1
	fcvtzs	x1, d0
	cmp	x19, x1
	blt	L2684
	mov	x1, x22
	b	L2685
L2684:
	mov	x1, #16
	mov	x21, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str194@page+8
	add	x2, x2, _str194@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_jwt_JwtError___init__
	mov	x1, x24
	mov	x0, x21
	mov	x21, x0
	bl	_nox_raise
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x21
	cmp	w2, #0
	bne	L2686
L2685:
	mov	x22, x1
	mov	x1, x23
	b	L2692
L2686:
	cmp	x1, #0
	beq	L2688
	mov	x22, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x20
	mov	x0, x19
	b	L2689
L2688:
	mov	x1, x20
L2689:
	mov	x20, x1
	bl	_JsonValue_release
	b	L2723
L2690:
	mov	x23, x1
	mov	x1, #16
	mov	x21, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str193@page+8
	add	x2, x2, _str193@pageoff+8
	mov	x24, x1
	mov	x21, x0
	bl	_web_jwt_JwtError___init__
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
	bne	L2718
L2692:
	adrp	x2, _str195@page+8
	add	x2, x2, _str195@pageoff+8
	mov	x21, x0
	bl	_web_jwt__find_object_field
	mov	x1, x0
	mov	x0, x21
	cmp	x20, #0
	cmp	x1, #0
	bne	L2694
	mov	x21, x1
	mov	x1, x22
	b	L2705
L2694:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	cmp	x2, #2
	cset	w2, eq
	mov	w3, #1
	eor	w2, w2, w3
	cmp	w2, #0
	bne	L2703
	mov	x2, #24
	add	x2, x1, x2
	ldr	d0, [x2]
	mov	x21, x1
	fcvtzs	x1, d0
	mov	x2, #60
	add	x2, x19, x2
	cmp	x1, x2
	bgt	L2697
	mov	x1, x22
	b	L2705
L2697:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str197@page+8
	add	x2, x2, _str197@pageoff+8
	mov	x23, x1
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
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
	beq	L2705
	cmp	x1, #0
	beq	L2700
	mov	x22, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x21
	mov	x0, x19
	b	L2701
L2700:
	mov	x1, x21
L2701:
	mov	x21, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x20
	mov	x0, x19
	cmp	x1, #0
	beq	L2723
	mov	x20, x1
	bl	_JsonValue_release
	b	L2723
L2703:
	mov	x21, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str196@page+8
	add	x2, x2, _str196@pageoff+8
	mov	x23, x1
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
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
	bne	L2713
L2705:
	cmp	x1, #0
	beq	L2707
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x21
	mov	x0, x19
	b	L2708
L2707:
	mov	x1, x21
L2708:
	cmp	x1, #0
	beq	L2710
	mov	x21, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x20
	mov	x0, x19
	b	L2711
L2710:
	mov	x1, x20
L2711:
	cmp	x1, #0
	beq	L2723
	mov	x20, x1
	bl	_JsonValue_release
	b	L2723
L2713:
	cmp	x1, #0
	beq	L2715
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x21
	mov	x0, x19
	b	L2716
L2715:
	mov	x1, x21
L2716:
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x20
	mov	x0, x19
	cmp	x1, #0
	beq	L2723
	mov	x20, x1
	bl	_JsonValue_release
	b	L2723
L2718:
	mov	x1, x22
	cmp	x1, #0
	beq	L2721
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x20
	mov	x0, x19
	b	L2722
L2721:
	mov	x1, x20
L2722:
	bl	_JsonValue_release
L2723:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
/* end function web_jwt__check_time_claims */

.text
.balign 4
.globl _web_jwt_decode
_web_jwt_decode:
	hint	#34
	stp	x29, x30, [sp, -176]!
	mov	x29, sp
	str	x19, [x29, 168]
	str	x20, [x29, 160]
	str	x21, [x29, 152]
	str	x22, [x29, 144]
	str	x23, [x29, 136]
	str	x24, [x29, 128]
	str	x25, [x29, 120]
	str	x26, [x29, 112]
	str	x27, [x29, 104]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, x20
	bl	_nox_str_char_count
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L2726
	mov	x1, x21
	b	L2727
L2726:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str198@page+8
	add	x2, x2, _str198@pageoff+8
	mov	x22, x1
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
	mov	x1, x22
	mov	x0, x19
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x21
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L3253
L2727:
	mov	x19, x0
	bl	_web_jwt__split_token
	mov	x22, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L3252
	mov	x20, x1
	ldr	x1, [x22]
	cmp	x22, #0
	cmp	x1, #0
	ble	L2730
	mov	x1, x20
	b	L2731
L2730:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str199@page+8
	add	x2, x2, _str199@pageoff+8
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
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L3248
L2731:
	mov	x2, #16
	add	x2, x22, x2
	ldr	x25, [x2]
	cmp	x25, #0
	beq	L2733
	mov	x2, #8
	sub	x2, x25, x2
	ldr	x2, [x2]
	mov	x3, #1
	add	x2, x2, x3
	mov	x3, #8
	sub	x3, x25, x3
	str	x2, [x3]
L2733:
	mov	x20, x1
	ldr	x1, [x22]
	cmp	x1, #1
	ble	L2735
	mov	x1, x20
	b	L2736
L2735:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str200@page+8
	add	x2, x2, _str200@pageoff+8
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
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L3239
L2736:
	mov	x2, #24
	add	x2, x22, x2
	ldr	x21, [x2]
	cmp	x21, #0
	beq	L2738
	mov	x2, #8
	sub	x2, x21, x2
	ldr	x2, [x2]
	mov	x3, #1
	add	x2, x2, x3
	mov	x3, #8
	sub	x3, x21, x3
	str	x2, [x3]
L2738:
	mov	x20, x1
	ldr	x1, [x22]
	cmp	x1, #2
	ble	L2740
	mov	x1, x20
	b	L2741
L2740:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str201@page+8
	add	x2, x2, _str201@pageoff+8
	mov	x23, x1
	mov	x19, x0
	bl	_IndexError___init__
	mov	x1, x23
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
	bne	L3226
L2741:
	mov	x2, #32
	add	x2, x22, x2
	ldr	x20, [x2]
	cmp	x20, #0
	beq	L2743
	mov	x23, x1
	mov	x1, #8
	sub	x1, x20, x1
	ldr	x1, [x1]
	mov	x2, #1
	add	x1, x1, x2
	mov	x2, #8
	sub	x2, x20, x2
	str	x1, [x2]
	b	L2744
L2743:
	mov	x23, x1
L2744:
	adrp	x2, _str202@page+8
	add	x2, x2, _str202@pageoff+8
	mov	x1, x25
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x2, x21
	mov	x24, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x24
	mov	x26, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L2748
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L2747
	mov	x1, x23
	b	L2749
L2747:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L2749
L2748:
	mov	x1, x23
L2749:
	mov	x2, x26
	mov	x19, x0
	bl	_web_jwt__sign
	mov	x23, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x19
	cmp	x26, #0
	cmp	w2, #0
	bne	L3203
	mov	x22, x1
	mov	x1, x23
	mov	x19, x0
	mov	x0, x20
	bl	_nox_crypto_constant_time_eq_raw
	mov	x1, x22
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #0
	mov	x22, x1
	cset	w1, ne
	mov	w2, #1
	eor	w1, w1, w2
	cmp	x23, #0
	cmp	w1, #0
	bne	L2752
	mov	x1, x22
	b	L2753
L2752:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str203@page+8
	add	x2, x2, _str203@pageoff+8
	mov	x24, x1
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
	mov	x1, x24
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
	bne	L3175
L2753:
	mov	x22, x1
	mov	x1, x25
	mov	x19, x0
	bl	_web_base64_decode_url
	mov	x24, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L3147
	mov	x22, x1
	mov	x1, x24
	mov	x19, x0
	bl	_nox_json_decode
	str	x0, [x29, 40]
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x19
	mov	x22, x1
	ldr	x1, [x29, 40]
	cmp	x24, #0
	cmp	w2, #0
	bne	L3114
	adrp	x2, _str204@page+8
	add	x2, x2, _str204@pageoff+8
	mov	x19, x1
	mov	x19, x0
	bl	_web_jwt__find_object_field
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [x29, 40]
	str	x1, [x29, 16]
	cmp	x19, #0
	cmp	x1, #0
	beq	L2842
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	cmp	x2, #3
	cset	w2, eq
	mov	w3, #1
	eor	w2, w2, w3
	cmp	w2, #0
	bne	L2803
	mov	x19, x1
	mov	x1, #32
	add	x1, x19, x1
	ldr	x1, [x1]
	str	x1, [x29, 88]
	cmp	x1, #0
	beq	L2759
	mov	x19, x0
	mov	x0, #8
	sub	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #1
	add	x0, x0, x2
	mov	x2, #8
	sub	x2, x1, x2
	str	x0, [x2]
	b	L2760
L2759:
	mov	x19, x0
L2760:
	mov	x0, x1
	adrp	x1, _str207@page+8
	add	x1, x1, _str207@pageoff+8
	bl	_strcmp
	mov	x1, x22
	mov	w2, w0
	mov	x0, x19
	mov	x22, x1
	ldr	x1, [x29, 88]
	str	w2, [x29, 80]
	cmp	x1, #0
	beq	L2764
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L2763
	mov	x1, x23
	b	L2765
L2763:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	ldr	w2, [x29, 80]
	b	L2765
L2764:
	mov	x1, x23
L2765:
	cmp	w2, #0
	beq	L2805
	mov	x23, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	str	x1, [x29, 72]
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str208@page+8
	add	x2, x2, _str208@pageoff+8
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
	mov	x1, x23
	mov	x0, x19
	mov	x23, x1
	ldr	x1, [x29, 72]
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x23
	mov	w2, w0
	mov	x0, x19
	ldr	x19, [x29, 16]
	ldr	x23, [x29, 40]
	cmp	w2, #0
	beq	L2805
	cmp	x1, #0
	beq	L2772
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2771
	mov	x1, x19
	mov	x17, x1
	mov	x1, x25
	mov	x25, x17
	b	L2773
L2771:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x19
	ldr	x25, [x29, 16]
	b	L2773
L2772:
	mov	x1, x25
	mov	x25, x19
L2773:
	cmp	x1, #0
	beq	L2777
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2776
	mov	x1, x26
	b	L2778
L2776:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x19
	b	L2778
L2777:
	mov	x1, x26
L2778:
	cmp	x1, #0
	beq	L2782
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2781
	mov	x1, x25
	b	L2783
L2781:
	mov	x26, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x19
	b	L2783
L2782:
	mov	x1, x25
L2783:
	mov	x19, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x24
	mov	x0, x19
	cmp	x1, #0
	beq	L2787
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2786
	mov	x1, x23
	b	L2788
L2786:
	mov	x24, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L2788
L2787:
	mov	x1, x23
L2788:
	cmp	x1, #0
	beq	L2790
	mov	x23, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x22
	mov	x0, x19
	b	L2791
L2790:
	mov	x1, x22
L2791:
	cmp	x1, #0
	beq	L2793
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L2794
L2793:
	mov	x1, x21
L2794:
	cmp	x1, #0
	beq	L2798
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2797
	mov	x1, x20
	b	L2799
L2797:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2799
L2798:
	mov	x1, x20
L2799:
	cmp	x1, #0
	beq	L2802
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2802
	mov	x20, x1
	bl	_nox_str_free_now
L2802:
	mov	x0, #0
	b	L3254
L2803:
	mov	x1, x23
	mov	x23, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	str	x1, [x29, 64]
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str206@page+8
	add	x2, x2, _str206@pageoff+8
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
	mov	x1, x23
	mov	x0, x19
	mov	x23, x1
	ldr	x1, [x29, 64]
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x23
	mov	w2, w0
	mov	x0, x19
	ldr	x19, [x29, 16]
	ldr	x23, [x29, 40]
	cmp	w2, #0
	bne	L2806
L2805:
	mov	x23, x1
	mov	x17, x26
	mov	x26, x25
	mov	x25, x17
	b	L2844
L2806:
	cmp	x1, #0
	beq	L2811
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2810
	mov	x1, x19
	mov	x17, x1
	mov	x1, x25
	mov	x25, x17
	b	L2812
L2810:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x19
	ldr	x25, [x29, 16]
	b	L2812
L2811:
	mov	x1, x25
	mov	x25, x19
L2812:
	cmp	x1, #0
	beq	L2816
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2815
	mov	x1, x26
	b	L2817
L2815:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x19
	b	L2817
L2816:
	mov	x1, x26
L2817:
	cmp	x1, #0
	beq	L2821
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2820
	mov	x1, x25
	b	L2822
L2820:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x19
	b	L2822
L2821:
	mov	x1, x25
L2822:
	mov	x19, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x24
	mov	x0, x19
	cmp	x1, #0
	beq	L2826
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2825
	mov	x1, x23
	b	L2827
L2825:
	mov	x24, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L2827
L2826:
	mov	x1, x23
L2827:
	cmp	x1, #0
	beq	L2829
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x22
	mov	x0, x19
	b	L2830
L2829:
	mov	x1, x22
L2830:
	cmp	x1, #0
	beq	L2832
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L2833
L2832:
	mov	x1, x21
L2833:
	cmp	x1, #0
	beq	L2837
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2836
	mov	x1, x20
	b	L2838
L2836:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2838
L2837:
	mov	x1, x20
L2838:
	cmp	x1, #0
	beq	L2841
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2841
	mov	x20, x1
	bl	_nox_str_free_now
L2841:
	mov	x0, #0
	b	L3254
L2842:
	mov	x17, x26
	mov	x26, x25
	mov	x25, x17
	mov	x1, x22
	mov	x22, x1
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	str	x1, [x29, 56]
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str205@page+8
	add	x2, x2, _str205@pageoff+8
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
	mov	x1, x22
	mov	x0, x19
	mov	x22, x1
	ldr	x1, [x29, 56]
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x19
	mov	x22, x1
	ldr	x1, [x29, 40]
	cmp	w2, #0
	bne	L3078
L2844:
	mov	x1, x21
	mov	x19, x0
	bl	_web_base64_decode_url
	str	x0, [x29, 24]
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w2, w0
	mov	x0, x19
	ldr	x1, [x29, 24]
	ldr	x19, [x29, 16]
	mov	x27, x1
	ldr	x1, [x29, 40]
	cmp	w2, #0
	bne	L3038
	mov	x1, x27
	mov	x27, x1
	mov	x19, x0
	bl	_nox_json_decode
	str	x0, [x29, 32]
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w3, w0
	mov	x0, x19
	ldr	x1, [x29, 32]
	ldr	x27, [x29, 24]
	ldr	x19, [x29, 16]
	mov	x2, x1
	ldr	x1, [x29, 40]
	cmp	x27, #0
	cmp	w3, #0
	bne	L2992
	mov	x1, x2
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	cmp	x2, #5
	cset	w2, eq
	mov	w3, #1
	eor	w2, w2, w3
	cmp	x1, #0
	cmp	w2, #0
	beq	L2851
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	str	x1, [x29, 48]
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str209@page+8
	add	x2, x2, _str209@pageoff+8
	mov	x19, x0
	bl	_web_jwt_JwtError___init__
	mov	x0, x19
	ldr	x1, [x29, 48]
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w3, w0
	mov	x0, x19
	ldr	x1, [x29, 32]
	ldr	x27, [x29, 24]
	ldr	x19, [x29, 16]
	mov	x2, x1
	ldr	x1, [x29, 40]
	cmp	w3, #0
	bne	L2943
	mov	x1, x2
L2851:
	mov	x2, x1
	mov	x19, x0
	bl	_web_jwt__check_time_claims
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x23
	mov	w3, w0
	mov	x0, x19
	ldr	x2, [x29, 32]
	ldr	x27, [x29, 24]
	ldr	x19, [x29, 16]
	ldr	x23, [x29, 40]
	cmp	w3, #0
	bne	L2894
	cmp	x1, #0
	beq	L2856
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L2855
	mov	x1, x26
	b	L2857
L2855:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x19
	ldr	x2, [x29, 32]
	ldr	x27, [x29, 24]
	ldr	x19, [x29, 16]
	b	L2857
L2856:
	mov	x1, x26
L2857:
	cmp	x1, #0
	beq	L2862
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L2861
	mov	x1, x19
	mov	x17, x1
	mov	x1, x25
	mov	x25, x17
	b	L2863
L2861:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x19
	ldr	x2, [x29, 32]
	ldr	x25, [x29, 16]
	b	L2863
L2862:
	mov	x1, x25
	mov	x25, x19
L2863:
	cmp	x1, #0
	beq	L2867
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L2866
	mov	x1, x2
	b	L2868
L2866:
	mov	x26, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x19
	mov	x25, x1
	ldr	x1, [x29, 32]
	b	L2868
L2867:
	mov	x1, x2
L2868:
	cmp	x1, #0
	beq	L2870
	mov	x2, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x25
	mov	x0, x19
	b	L2871
L2870:
	mov	x1, x25
L2871:
	cmp	x1, #0
	beq	L2873
	mov	x19, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x24
	mov	x0, x19
	b	L2874
L2873:
	mov	x1, x24
L2874:
	cmp	x1, #0
	beq	L2878
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2877
	mov	x1, x23
	b	L2879
L2877:
	mov	x25, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L2879
L2878:
	mov	x1, x23
L2879:
	cmp	x1, #0
	beq	L2881
	mov	x24, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x22
	mov	x0, x19
	b	L2882
L2881:
	mov	x1, x22
L2882:
	cmp	x1, #0
	beq	L2884
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L2885
L2884:
	mov	x1, x21
L2885:
	cmp	x1, #0
	beq	L2889
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2888
	mov	x1, x20
	b	L2890
L2888:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2890
L2889:
	mov	x1, x20
L2890:
	cmp	x1, #0
	beq	L2893
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2893
	mov	x20, x1
	bl	_nox_str_free_now
L2893:
	mov	x0, x27
	b	L3254
L2894:
	mov	x17, x25
	mov	x25, x26
	mov	x26, x17
	mov	x17, x24
	mov	x24, x25
	mov	x25, x17
	mov	x17, x23
	mov	x23, x24
	mov	x24, x17
	cmp	x1, #0
	beq	L2900
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L2899
	mov	x1, x27
	mov	x17, x1
	mov	x1, x23
	mov	x23, x17
	b	L2901
L2899:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	ldr	x2, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x19, [x29, 16]
	b	L2901
L2900:
	mov	x1, x23
	mov	x23, x27
L2901:
	cmp	x1, #0
	beq	L2906
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L2905
	mov	x1, x19
	mov	x17, x1
	mov	x1, x26
	mov	x26, x17
	b	L2907
L2905:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x19
	ldr	x2, [x29, 32]
	ldr	x26, [x29, 16]
	b	L2907
L2906:
	mov	x1, x26
	mov	x26, x19
L2907:
	cmp	x1, #0
	beq	L2911
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L2910
	mov	x1, x2
	b	L2912
L2910:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x19
	mov	x26, x1
	ldr	x1, [x29, 32]
	b	L2912
L2911:
	mov	x1, x2
L2912:
	cmp	x1, #0
	beq	L2914
	mov	x2, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x26
	mov	x0, x19
	b	L2915
L2914:
	mov	x1, x26
L2915:
	cmp	x1, #0
	beq	L2917
	mov	x19, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x25
	mov	x0, x19
	b	L2918
L2917:
	mov	x1, x25
L2918:
	cmp	x1, #0
	beq	L2922
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2921
	mov	x1, x24
	b	L2923
L2921:
	mov	x25, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L2923
L2922:
	mov	x1, x24
L2923:
	cmp	x1, #0
	beq	L2925
	mov	x24, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x23
	mov	x0, x19
	b	L2926
L2925:
	mov	x1, x23
L2926:
	cmp	x1, #0
	beq	L2930
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2929
	mov	x1, x22
	b	L2931
L2929:
	mov	x27, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L2931
L2930:
	mov	x1, x22
L2931:
	cmp	x1, #0
	beq	L2933
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L2934
L2933:
	mov	x1, x21
L2934:
	cmp	x1, #0
	beq	L2938
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2937
	mov	x1, x20
	b	L2939
L2937:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2939
L2938:
	mov	x1, x20
L2939:
	cmp	x1, #0
	beq	L2942
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2942
	mov	x20, x1
	bl	_nox_str_free_now
L2942:
	mov	x0, #0
	b	L3254
L2943:
	mov	x17, x25
	mov	x25, x26
	mov	x26, x17
	mov	x17, x24
	mov	x24, x25
	mov	x25, x17
	mov	x17, x1
	mov	x1, x24
	mov	x24, x17
	mov	x17, x23
	mov	x23, x1
	mov	x1, x17
	cmp	x1, #0
	beq	L2949
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L2948
	mov	x1, x27
	mov	x17, x1
	mov	x1, x23
	mov	x23, x17
	b	L2950
L2948:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	ldr	x2, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x19, [x29, 16]
	b	L2950
L2949:
	mov	x1, x23
	mov	x23, x27
L2950:
	cmp	x1, #0
	beq	L2955
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L2954
	mov	x1, x19
	mov	x17, x1
	mov	x1, x26
	mov	x26, x17
	b	L2956
L2954:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x19
	ldr	x2, [x29, 32]
	ldr	x26, [x29, 16]
	b	L2956
L2955:
	mov	x1, x26
	mov	x26, x19
L2956:
	cmp	x1, #0
	beq	L2960
	mov	x3, #8
	sub	x3, x1, x3
	ldr	x3, [x3]
	mov	x4, #1
	sub	x3, x3, x4
	mov	x4, #8
	sub	x4, x1, x4
	str	x3, [x4]
	cmp	x3, #0
	ble	L2959
	mov	x1, x2
	b	L2961
L2959:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x19
	mov	x26, x1
	ldr	x1, [x29, 32]
	b	L2961
L2960:
	mov	x1, x2
L2961:
	cmp	x1, #0
	beq	L2963
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x26
	mov	x0, x19
	b	L2964
L2963:
	mov	x1, x26
L2964:
	cmp	x1, #0
	beq	L2966
	mov	x19, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x25
	mov	x0, x19
	b	L2967
L2966:
	mov	x1, x25
L2967:
	cmp	x1, #0
	beq	L2971
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2970
	mov	x1, x24
	b	L2972
L2970:
	mov	x25, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L2972
L2971:
	mov	x1, x24
L2972:
	cmp	x1, #0
	beq	L2974
	mov	x24, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x23
	mov	x0, x19
	b	L2975
L2974:
	mov	x1, x23
L2975:
	cmp	x1, #0
	beq	L2979
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2978
	mov	x1, x22
	b	L2980
L2978:
	mov	x27, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L2980
L2979:
	mov	x1, x22
L2980:
	cmp	x1, #0
	beq	L2982
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L2983
L2982:
	mov	x1, x21
L2983:
	cmp	x1, #0
	beq	L2987
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2986
	mov	x1, x20
	b	L2988
L2986:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L2988
L2987:
	mov	x1, x20
L2988:
	cmp	x1, #0
	beq	L2991
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L2991
	mov	x20, x1
	bl	_nox_str_free_now
L2991:
	mov	x0, #0
	b	L3254
L2992:
	mov	x17, x25
	mov	x25, x26
	mov	x26, x17
	mov	x17, x24
	mov	x24, x25
	mov	x25, x17
	mov	x17, x1
	mov	x1, x24
	mov	x24, x17
	mov	x17, x23
	mov	x23, x1
	mov	x1, x17
	cmp	x1, #0
	beq	L2998
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L2997
	mov	x1, x27
	mov	x17, x1
	mov	x1, x23
	mov	x23, x17
	b	L2999
L2997:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	ldr	x23, [x29, 24]
	ldr	x19, [x29, 16]
	b	L2999
L2998:
	mov	x1, x23
	mov	x23, x27
L2999:
	cmp	x1, #0
	beq	L3004
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3003
	mov	x1, x19
	mov	x17, x1
	mov	x1, x26
	mov	x26, x17
	b	L3005
L3003:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x19
	ldr	x26, [x29, 16]
	b	L3005
L3004:
	mov	x1, x26
	mov	x26, x19
L3005:
	cmp	x1, #0
	beq	L3009
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3008
	mov	x1, x26
	b	L3010
L3008:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x19
	b	L3010
L3009:
	mov	x1, x26
L3010:
	cmp	x1, #0
	beq	L3012
	mov	x19, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x25
	mov	x0, x19
	b	L3013
L3012:
	mov	x1, x25
L3013:
	cmp	x1, #0
	beq	L3017
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3016
	mov	x1, x24
	b	L3018
L3016:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L3018
L3017:
	mov	x1, x24
L3018:
	cmp	x1, #0
	beq	L3020
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x23
	mov	x0, x19
	b	L3021
L3020:
	mov	x1, x23
L3021:
	cmp	x1, #0
	beq	L3025
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3024
	mov	x1, x22
	b	L3026
L3024:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L3026
L3025:
	mov	x1, x22
L3026:
	cmp	x1, #0
	beq	L3028
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L3029
L3028:
	mov	x1, x21
L3029:
	cmp	x1, #0
	beq	L3033
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3032
	mov	x1, x20
	b	L3034
L3032:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L3034
L3033:
	mov	x1, x20
L3034:
	cmp	x1, #0
	beq	L3037
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3037
	mov	x20, x1
	bl	_nox_str_free_now
L3037:
	mov	x0, #0
	b	L3254
L3038:
	mov	x17, x1
	mov	x1, x23
	mov	x23, x17
	mov	x17, x25
	mov	x25, x26
	mov	x26, x17
	cmp	x1, #0
	beq	L3044
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3043
	mov	x1, x19
	mov	x17, x1
	mov	x1, x25
	mov	x25, x17
	b	L3045
L3043:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x19
	ldr	x25, [x29, 16]
	b	L3045
L3044:
	mov	x1, x25
	mov	x25, x19
L3045:
	cmp	x1, #0
	beq	L3049
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3048
	mov	x1, x26
	b	L3050
L3048:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x19
	b	L3050
L3049:
	mov	x1, x26
L3050:
	cmp	x1, #0
	beq	L3054
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3053
	mov	x1, x25
	b	L3055
L3053:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x19
	b	L3055
L3054:
	mov	x1, x25
L3055:
	cmp	x1, #0
	beq	L3057
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x24
	mov	x0, x19
	b	L3058
L3057:
	mov	x1, x24
L3058:
	cmp	x1, #0
	beq	L3062
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3061
	mov	x1, x23
	b	L3063
L3061:
	mov	x24, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L3063
L3062:
	mov	x1, x23
L3063:
	cmp	x1, #0
	beq	L3065
	mov	x23, x1
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x22
	mov	x0, x19
	b	L3066
L3065:
	mov	x1, x22
L3066:
	cmp	x1, #0
	beq	L3068
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L3069
L3068:
	mov	x1, x21
L3069:
	cmp	x1, #0
	beq	L3073
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3072
	mov	x1, x20
	b	L3074
L3072:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L3074
L3073:
	mov	x1, x20
L3074:
	cmp	x1, #0
	beq	L3077
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3077
	mov	x20, x1
	bl	_nox_str_free_now
L3077:
	mov	x0, #0
	b	L3254
L3078:
	mov	x17, x1
	mov	x1, x23
	mov	x23, x17
	cmp	x1, #0
	beq	L3083
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3082
	mov	x1, x26
	b	L3084
L3082:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x26
	mov	x0, x19
	b	L3084
L3083:
	mov	x1, x26
L3084:
	cmp	x1, #0
	beq	L3088
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3087
	mov	x1, x25
	b	L3089
L3087:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x19
	b	L3089
L3088:
	mov	x1, x25
L3089:
	cmp	x1, #0
	beq	L3093
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3092
	mov	x1, x24
	b	L3094
L3092:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L3094
L3093:
	mov	x1, x24
L3094:
	cmp	x1, #0
	beq	L3098
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3097
	mov	x1, x23
	b	L3099
L3097:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L3099
L3098:
	mov	x1, x23
L3099:
	cmp	x1, #0
	beq	L3101
	mov	x19, x0
	bl	_JsonValue_release
	mov	x1, x22
	mov	x0, x19
	b	L3102
L3101:
	mov	x1, x22
L3102:
	cmp	x1, #0
	beq	L3104
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L3105
L3104:
	mov	x1, x21
L3105:
	cmp	x1, #0
	beq	L3109
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3108
	mov	x1, x20
	b	L3110
L3108:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L3110
L3109:
	mov	x1, x20
L3110:
	cmp	x1, #0
	beq	L3113
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3113
	mov	x20, x1
	bl	_nox_str_free_now
L3113:
	mov	x0, #0
	b	L3254
L3114:
	mov	x1, x23
	mov	x23, x24
	mov	x24, x26
	cmp	x1, #0
	beq	L3119
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3118
	mov	x1, x25
	b	L3120
L3118:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x25
	mov	x0, x19
	b	L3120
L3119:
	mov	x1, x25
L3120:
	cmp	x1, #0
	beq	L3124
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3123
	mov	x1, x24
	b	L3125
L3123:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L3125
L3124:
	mov	x1, x24
L3125:
	cmp	x1, #0
	beq	L3129
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3128
	mov	x1, x23
	b	L3130
L3128:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L3130
L3129:
	mov	x1, x23
L3130:
	cmp	x1, #0
	beq	L3134
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3133
	mov	x1, x22
	b	L3135
L3133:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L3135
L3134:
	mov	x1, x22
L3135:
	cmp	x1, #0
	beq	L3137
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L3138
L3137:
	mov	x1, x21
L3138:
	cmp	x1, #0
	beq	L3142
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3141
	mov	x1, x20
	b	L3143
L3141:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L3143
L3142:
	mov	x1, x20
L3143:
	cmp	x1, #0
	beq	L3146
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3146
	mov	x20, x1
	bl	_nox_str_free_now
L3146:
	mov	x0, #0
	b	L3254
L3147:
	mov	x24, x25
	mov	x22, x1
	mov	x1, x23
	mov	x23, x26
	cmp	x1, #0
	beq	L3152
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3151
	mov	x1, x24
	b	L3153
L3151:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L3153
L3152:
	mov	x1, x24
L3153:
	cmp	x1, #0
	beq	L3157
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3156
	mov	x1, x23
	b	L3158
L3156:
	mov	x24, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L3158
L3157:
	mov	x1, x23
L3158:
	cmp	x1, #0
	beq	L3162
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3161
	mov	x1, x22
	b	L3163
L3161:
	mov	x23, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L3163
L3162:
	mov	x1, x22
L3163:
	cmp	x1, #0
	beq	L3165
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L3166
L3165:
	mov	x1, x21
L3166:
	cmp	x1, #0
	beq	L3170
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3169
	mov	x1, x20
	b	L3171
L3169:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L3171
L3170:
	mov	x1, x20
L3171:
	cmp	x1, #0
	beq	L3174
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3174
	mov	x20, x1
	bl	_nox_str_free_now
L3174:
	mov	x0, #0
	b	L3254
L3175:
	mov	x24, x25
	mov	x22, x1
	mov	x1, x23
	mov	x23, x26
	cmp	x1, #0
	beq	L3180
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3179
	mov	x1, x24
	b	L3181
L3179:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L3181
L3180:
	mov	x1, x24
L3181:
	cmp	x1, #0
	beq	L3185
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3184
	mov	x1, x23
	b	L3186
L3184:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L3186
L3185:
	mov	x1, x23
L3186:
	cmp	x1, #0
	beq	L3190
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3189
	mov	x1, x22
	b	L3191
L3189:
	mov	x23, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L3191
L3190:
	mov	x1, x22
L3191:
	cmp	x1, #0
	beq	L3193
	mov	x22, x1
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L3194
L3193:
	mov	x1, x21
L3194:
	cmp	x1, #0
	beq	L3198
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3197
	mov	x1, x20
	b	L3199
L3197:
	mov	x21, x1
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L3199
L3198:
	mov	x1, x20
L3199:
	cmp	x1, #0
	beq	L3202
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3202
	mov	x20, x1
	bl	_nox_str_free_now
L3202:
	mov	x0, #0
	b	L3254
L3203:
	mov	x23, x26
	mov	x22, x1
	mov	x1, x25
	cmp	x1, #0
	beq	L3208
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3207
	mov	x1, x23
	b	L3209
L3207:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L3209
L3208:
	mov	x1, x23
L3209:
	cmp	x1, #0
	beq	L3213
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3212
	mov	x1, x22
	b	L3214
L3212:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L3214
L3213:
	mov	x1, x22
L3214:
	cmp	x1, #0
	beq	L3216
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x21
	mov	x0, x19
	b	L3217
L3216:
	mov	x1, x21
L3217:
	cmp	x1, #0
	beq	L3221
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3220
	mov	x1, x20
	b	L3222
L3220:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L3222
L3221:
	mov	x1, x20
L3222:
	cmp	x1, #0
	beq	L3225
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3225
	bl	_nox_str_free_now
L3225:
	mov	x0, #0
	b	L3254
L3226:
	mov	x20, x21
	mov	x1, x25
	mov	x21, x22
	cmp	x1, #0
	beq	L3231
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3230
	mov	x1, x21
	b	L3232
L3230:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L3232
L3231:
	mov	x1, x21
L3232:
	cmp	x1, #0
	beq	L3234
	mov	x19, x0
	bl	_List_str_release
	mov	x1, x20
	mov	x0, x19
	b	L3235
L3234:
	mov	x1, x20
L3235:
	cmp	x1, #0
	beq	L3238
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3238
	bl	_nox_str_free_now
L3238:
	mov	x0, #0
	b	L3254
L3239:
	mov	x1, x25
	mov	x20, x22
	cmp	x1, #0
	beq	L3244
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	ble	L3243
	mov	x1, x20
	b	L3245
L3243:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L3245
L3244:
	mov	x1, x20
L3245:
	cmp	x1, #0
	beq	L3247
	bl	_List_str_release
L3247:
	mov	x0, #0
	b	L3254
L3248:
	mov	x1, x22
	cmp	x1, #0
	beq	L3251
	bl	_List_str_release
L3251:
	mov	x0, #0
	b	L3254
L3252:
	mov	x0, #0
	b	L3254
L3253:
	mov	x0, #0
L3254:
	ldr	x19, [x29, 168]
	ldr	x20, [x29, 160]
	ldr	x21, [x29, 152]
	ldr	x22, [x29, 144]
	ldr	x23, [x29, 136]
	ldr	x24, [x29, 128]
	ldr	x25, [x29, 120]
	ldr	x26, [x29, 112]
	ldr	x27, [x29, 104]
	ldp	x29, x30, [sp], 176
	ret
/* end function web_jwt_decode */

.text
.balign 4
.globl _main
_main:
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
	mov	x20, x1
	mov	w19, w0
	bl	_nox_runtime_init
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_nox_os_init
	bl	_nox_time_now_ms_raw
	mov	x2, x0
	mov	x0, x19
	mov	x1, #1000
	sdiv	x1, x2, x1
	mov	x3, #1000
	sdiv	x17, x2, x3
	msub	x3, x17, x3, x2
	cmp	x3, #0
	cset	w2, ne
	cmp	x3, #0
	cset	w3, lt
	and	w2, w2, w3
	mov	w2, w2
	sub	x19, x1, x2
	mov	x1, #3600
	add	x3, x19, x1
	adrp	x2, _str211@page+8
	add	x2, x2, _str211@pageoff+8
	adrp	x1, _str210@page+8
	add	x1, x1, _str210@pageoff+8
	mov	x20, x0
	bl	_web_jwt_encode
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	bl	_nox_exception_pending
	mov	x1, x21
	mov	w2, w0
	mov	x0, x20
	adrp	x3, _str210@page+8
	add	x3, x3, _str210@pageoff+8
	cmp	x3, #0
	cmp	w2, #0
	bne	L3343
	adrp	x2, _str212@page+8
	add	x2, x2, _str212@pageoff+8
	mov	x21, x1
	mov	x20, x0
	bl	_nox_strings_split_raw
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x23, x1
	ldr	x1, [x20]
	adrp	x3, _str213@page+8
	add	x3, x3, _str213@pageoff+8
	mov	x2, #3
	mov	x21, x0
	bl	_nox_test_assert_eq_int
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x21
	cmp	w1, #0
	bne	L3342
	mov	x2, x23
	adrp	x1, _str210@page+8
	add	x1, x1, _str210@pageoff+8
	mov	x21, x0
	bl	_web_jwt_decode
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x21
	cmp	w2, #0
	bne	L3341
	adrp	x2, _str214@page+8
	add	x2, x2, _str214@pageoff+8
	mov	x22, x1
	mov	x21, x0
	bl	_nox_strings_index_of
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	cmp	x2, #0
	mov	x22, x1
	cset	w1, ge
	adrp	x2, _str215@page+8
	add	x2, x2, _str215@pageoff+8
	mov	x21, x0
	bl	_nox_test_assert_true
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x21
	cmp	w2, #0
	bne	L3340
	adrp	x2, _str216@page+8
	add	x2, x2, _str216@pageoff+8
	mov	x22, x1
	mov	x21, x0
	bl	_nox_strings_index_of
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	cmp	x2, #0
	mov	x24, x1
	cset	w1, ge
	adrp	x2, _str217@page+8
	add	x2, x2, _str217@pageoff+8
	mov	x21, x0
	bl	_nox_test_assert_true
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x21
	cmp	w1, #0
	bne	L3339
	mov	x2, x23
	adrp	x1, _str218@page+8
	add	x1, x1, _str218@pageoff+8
	mov	x21, x0
	bl	_web_jwt_decode
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x21
	cmp	w2, #0
	bne	L3265
	cmp	x1, #0
	beq	L3264
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3264
	mov	x21, x0
	bl	_nox_str_free_now
	mov	x0, x21
L3264:
	mov	w1, #0
	b	L3270
L3265:
	mov	x21, x0
	bl	_nox_exception_take
	mov	x1, x0
	mov	x0, x21
	ldr	x2, [x1]
	cmp	x2, #14
	beq	L3269
	mov	x21, x0
	bl	_nox_raise
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x21
	cmp	w1, #0
	bne	L3268
	mov	w1, #0
	b	L3270
L3268:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3269:
	mov	w1, #1
L3270:
	adrp	x2, _str219@page+8
	add	x2, x2, _str219@pageoff+8
	mov	x21, x0
	bl	_nox_test_assert_true
	mov	x0, x21
	mov	x21, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x21
	cmp	w1, #0
	bne	L3338
	mov	x1, #10
	sub	x3, x19, x1
	adrp	x2, _str220@page+8
	add	x2, x2, _str220@pageoff+8
	adrp	x1, _str210@page+8
	add	x1, x1, _str210@pageoff+8
	mov	x19, x0
	bl	_web_jwt_encode
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L3337
	mov	x2, x21
	adrp	x1, _str210@page+8
	add	x1, x1, _str210@pageoff+8
	mov	x19, x0
	bl	_web_jwt_decode
	mov	x22, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x22
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L3277
	cmp	x1, #0
	beq	L3276
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3276
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L3276:
	mov	w1, #0
	b	L3282
L3277:
	mov	x19, x0
	bl	_nox_exception_take
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #14
	beq	L3281
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L3280
	mov	w1, #0
	b	L3282
L3280:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3281:
	mov	w1, #1
L3282:
	adrp	x2, _str221@page+8
	add	x2, x2, _str221@pageoff+8
	mov	x19, x0
	bl	_nox_test_assert_true
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x21
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L3336
	mov	x21, x1
	ldr	x1, [x20]
	cmp	x1, #0
	bgt	L3285
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str222@page+8
	add	x2, x2, _str222@pageoff+8
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
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L3335
L3285:
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	adrp	x2, _str223@page+8
	add	x2, x2, _str223@pageoff+8
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x22, x1
	ldr	x1, [x20]
	cmp	x1, #1
	ble	L3287
	mov	x1, x22
	b	L3288
L3287:
	mov	x1, #16
	mov	x19, x0
	bl	_nox_rc_alloc
	mov	x1, x0
	mov	x0, x19
	mov	x2, #2
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	mov	x2, #0
	str	x2, [x3]
	adrp	x2, _str224@page+8
	add	x2, x2, _str224@pageoff+8
	mov	x25, x1
	mov	x19, x0
	bl	_IndexError___init__
	mov	x1, x25
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
	bne	L3334
L3288:
	mov	x2, #24
	add	x2, x20, x2
	ldr	x2, [x2]
	mov	x22, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x22
	mov	x22, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L3292
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L3291
	mov	x1, x22
	b	L3293
L3291:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L3293
L3292:
	mov	x1, x22
L3293:
	adrp	x2, _str225@page+8
	add	x2, x2, _str225@pageoff+8
	mov	x22, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x22
	mov	x22, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L3296
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3296
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L3296:
	mov	x2, x22
	adrp	x1, _str210@page+8
	add	x1, x1, _str210@pageoff+8
	mov	x19, x0
	bl	_web_jwt_decode
	mov	x25, x0
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x25
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L3301
	cmp	x1, #0
	beq	L3300
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3300
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L3300:
	mov	w1, #0
	b	L3306
L3301:
	mov	x19, x0
	bl	_nox_exception_take
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #14
	beq	L3305
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	w1, w0
	mov	x0, x19
	cmp	w1, #0
	bne	L3304
	mov	w1, #0
	b	L3306
L3304:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3305:
	mov	w1, #1
L3306:
	adrp	x2, _str226@page+8
	add	x2, x2, _str226@pageoff+8
	mov	x19, x0
	bl	_nox_test_assert_true
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x24
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L3333
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, #0
	add	x2, sp, x2
	mov	x24, x1
	adrp	x1, _str227@page+8
	add	x1, x1, _str227@pageoff+8
	str	x1, [x2]
	mov	x19, x0
	adrp	x0, _fmt_str@page
	add	x0, x0, _fmt_str@pageoff
	bl	_printf
	mov	x1, x24
	mov	x0, x19
	mov	x2, #16
	add	sp, sp, x2
	cmp	x1, #0
	beq	L3311
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L3310
	mov	x1, x23
	b	L3312
L3310:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L3312
L3311:
	mov	x1, x23
L3312:
	cmp	x1, #0
	beq	L3316
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L3315
	mov	x1, x22
	b	L3317
L3315:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L3317
L3316:
	mov	x1, x22
L3317:
	adrp	x2, _str210@page+8
	add	x2, x2, _str210@pageoff+8
	cmp	x2, #0
	beq	L3320
	adrp	x2, _str210@page
	add	x2, x2, _str210@pageoff
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	adrp	x3, _str210@page
	add	x3, x3, _str210@pageoff
	str	x2, [x3]
	cmp	x2, #0
	bgt	L3320
	mov	x22, x1
	adrp	x1, _str210@page+8
	add	x1, x1, _str210@pageoff+8
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
L3320:
	cmp	x1, #0
	beq	L3324
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L3323
	mov	x1, x21
	b	L3325
L3323:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L3325
L3324:
	mov	x1, x21
L3325:
	cmp	x1, #0
	beq	L3329
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L3328
	mov	x1, x20
	b	L3330
L3328:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L3330
L3329:
	mov	x1, x20
L3330:
	cmp	x1, #0
	beq	L3332
	mov	x19, x0
	bl	_List_str_release
	mov	x0, x19
L3332:
	bl	_nox_runtime_deinit
	mov	w0, #0
	b	L3344
L3333:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3334:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3335:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3336:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3337:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3338:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3339:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3340:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3341:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3342:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L3344
L3343:
	bl	_nox_unhandled_exception
	mov	w0, #0
L3344:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
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
	bgt	L3354
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
L3348:
	cmp	x19, x21
	bge	L3353
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L3351
	mov	x23, x0
	bl	_nox_str_release
	mov	x1, x24
	mov	x0, x23
	b	L3352
L3351:
	mov	x1, x24
L3352:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L3348
L3353:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L3354:
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
	bgt	L3364
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
L3358:
	cmp	x19, x21
	bge	L3363
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L3361
	mov	x23, x0
	bl	_JsonValue_release
	mov	x1, x24
	mov	x0, x23
	b	L3362
L3361:
	mov	x1, x24
L3362:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L3358
L3363:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L3364:
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
	bne	L3372
	mov	x19, #0
L3367:
	cmp	x19, x20
	bge	L3371
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
	bne	L3372
	mov	x0, #1
	add	x19, x19, x0
	mov	x22, x2
	b	L3367
L3371:
	mov	w0, #1
	b	L3373
L3372:
	mov	w0, #0
L3373:
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
	bne	L3383
	mov	x19, #0
L3376:
	cmp	x19, x20
	bge	L3382
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
	bne	L3379
	mov	x21, x0
	bl	_JsonValue_eq
	mov	x2, x23
	mov	x1, x22
	mov	w3, w0
	mov	x0, x21
	cmp	w3, #0
	beq	L3383
	b	L3381
L3379:
	mov	x2, x23
	mov	x1, x22
	and	w3, w3, w4
	cmp	w3, #0
	beq	L3383
L3381:
	mov	x3, #1
	add	x19, x19, x3
	b	L3376
L3382:
	mov	w0, #1
	b	L3384
L3383:
	mov	w0, #0
L3384:
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
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
_str35:
	.quad 1073741824
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str36:
	.quad 1073741824
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
_str37:
	.quad 1073741824
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str38:
	.quad 1073741824
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str39:
	.quad 1073741824
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str40:
	.quad 1073741824
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str41:
	.quad 1073741824
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str42:
	.quad 1073741824
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str43:
	.quad 1073741824
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str44:
	.quad 1073741824
	.ascii "dosya okunamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str45:
	.quad 1073741824
	.ascii "dosya yazilamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str46:
	.quad 1073741824
	.ascii "dosyaya eklenemedi: "
	.byte 0
/* end data */

.data
.balign 8
_str47:
	.quad 1073741824
	.ascii "meta veri okunamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str48:
	.quad 1073741824
	.ascii "dizin okunamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str49:
	.quad 1073741824
	.ascii "kopyalanamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str50:
	.quad 1073741824
	.ascii " -> "
	.byte 0
/* end data */

.data
.balign 8
_str51:
	.quad 1073741824
	.ascii "yeniden adlandirilamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str52:
	.quad 1073741824
	.ascii " -> "
	.byte 0
/* end data */

.data
.balign 8
_str53:
	.quad 1073741824
	.ascii "silinemedi: "
	.byte 0
/* end data */

.data
.balign 8
_str54:
	.quad 1073741824
	.ascii "dizin olusturulamadi: "
	.byte 0
/* end data */

.data
.balign 8
_str55:
	.quad 1073741824
	.ascii ": beklenen "
	.byte 0
/* end data */

.data
.balign 8
_str56:
	.quad 1073741824
	.ascii ", alinan "
	.byte 0
/* end data */

.data
.balign 8
_str57:
	.quad 1073741824
	.ascii ": beklenen \""
	.byte 0
/* end data */

.data
.balign 8
_str58:
	.quad 1073741824
	.ascii "\", alinan \""
	.byte 0
/* end data */

.data
.balign 8
_str59:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str60:
	.quad 1073741824
	.ascii ": beklenen "
	.byte 0
/* end data */

.data
.balign 8
_str61:
	.quad 1073741824
	.ascii ", alinan "
	.byte 0
/* end data */

.data
.balign 8
_str62:
	.quad 1073741824
	.ascii "&"
	.byte 0
/* end data */

.data
.balign 8
_str63:
	.quad 1073741824
	.ascii "&amp;"
	.byte 0
/* end data */

.data
.balign 8
_str64:
	.quad 1073741824
	.ascii "<"
	.byte 0
/* end data */

.data
.balign 8
_str65:
	.quad 1073741824
	.ascii "&lt;"
	.byte 0
/* end data */

.data
.balign 8
_str66:
	.quad 1073741824
	.ascii ">"
	.byte 0
/* end data */

.data
.balign 8
_str67:
	.quad 1073741824
	.ascii "&gt;"
	.byte 0
/* end data */

.data
.balign 8
_str68:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str69:
	.quad 1073741824
	.ascii "&quot;"
	.byte 0
/* end data */

.data
.balign 8
_str70:
	.quad 1073741824
	.ascii "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<testsuite name=\""
	.byte 0
/* end data */

.data
.balign 8
_str71:
	.quad 1073741824
	.ascii "&"
	.byte 0
/* end data */

.data
.balign 8
_str72:
	.quad 1073741824
	.ascii "&amp;"
	.byte 0
/* end data */

.data
.balign 8
_str73:
	.quad 1073741824
	.ascii "<"
	.byte 0
/* end data */

.data
.balign 8
_str74:
	.quad 1073741824
	.ascii "&lt;"
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.quad 1073741824
	.ascii ">"
	.byte 0
/* end data */

.data
.balign 8
_str76:
	.quad 1073741824
	.ascii "&gt;"
	.byte 0
/* end data */

.data
.balign 8
_str77:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str78:
	.quad 1073741824
	.ascii "&quot;"
	.byte 0
/* end data */

.data
.balign 8
_str79:
	.quad 1073741824
	.ascii "\" tests=\""
	.byte 0
/* end data */

.data
.balign 8
_str80:
	.quad 1073741824
	.ascii "\" failures=\""
	.byte 0
/* end data */

.data
.balign 8
_str81:
	.quad 1073741824
	.ascii "\">\n"
	.byte 0
/* end data */

.data
.balign 8
_str82:
	.quad 1073741824
	.ascii "</testsuite>\n"
	.byte 0
/* end data */

.data
.balign 8
_str83:
	.quad 1073741824
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str84:
	.quad 1073741824
	.ascii "gecersiz JSON: "
	.byte 0
/* end data */

.data
.balign 8
_str85:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str86:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str87:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str88:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str89:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str90:
	.quad 1073741824
	.ascii "\\\""
	.byte 0
/* end data */

.data
.balign 8
_str91:
	.quad 1073741824
	.ascii "\\"
	.byte 0
/* end data */

.data
.balign 8
_str92:
	.quad 1073741824
	.ascii "\\\\"
	.byte 0
/* end data */

.data
.balign 8
_str93:
	.quad 1073741824
	.ascii "\n"
	.byte 0
/* end data */

.data
.balign 8
_str94:
	.quad 1073741824
	.ascii "\\n"
	.byte 0
/* end data */

.data
.balign 8
_str95:
	.quad 1073741824
	.ascii "\t"
	.byte 0
/* end data */

.data
.balign 8
_str96:
	.quad 1073741824
	.ascii "\\t"
	.byte 0
/* end data */

.data
.balign 8
_str97:
	.quad 1073741824
	.ascii "\\r"
	.byte 0
/* end data */

.data
.balign 8
_str98:
	.quad 1073741824
	.ascii "\""
	.byte 0
/* end data */

.data
.balign 8
_str99:
	.quad 1073741824
	.ascii "null"
	.byte 0
/* end data */

.data
.balign 8
_str100:
	.quad 1073741824
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
_str101:
	.quad 1073741824
	.ascii "false"
	.byte 0
/* end data */

.data
.balign 8
_str102:
	.quad 1073741824
	.ascii "["
	.byte 0
/* end data */

.data
.balign 8
_str103:
	.quad 1073741824
	.ascii ","
	.byte 0
/* end data */

.data
.balign 8
_str104:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str105:
	.quad 1073741824
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str106:
	.quad 1073741824
	.ascii "{"
	.byte 0
/* end data */

.data
.balign 8
_str107:
	.quad 1073741824
	.ascii ","
	.byte 0
/* end data */

.data
.balign 8
_str108:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str109:
	.quad 1073741824
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str110:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str111:
	.quad 1073741824
	.ascii "}"
	.byte 0
/* end data */

.data
.balign 8
_str112:
	.quad 1073741824
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str113:
	.quad 1073741824
	.ascii "[]"
	.byte 0
/* end data */

.data
.balign 8
_str114:
	.quad 1073741824
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str115:
	.quad 1073741824
	.ascii "[\n"
	.byte 0
/* end data */

.data
.balign 8
_str116:
	.quad 1073741824
	.ascii ",\n"
	.byte 0
/* end data */

.data
.balign 8
_str117:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str118:
	.quad 1073741824
	.ascii "\n"
	.byte 0
/* end data */

.data
.balign 8
_str119:
	.quad 1073741824
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str120:
	.quad 1073741824
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str121:
	.quad 1073741824
	.ascii "{}"
	.byte 0
/* end data */

.data
.balign 8
_str122:
	.quad 1073741824
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str123:
	.quad 1073741824
	.ascii "{\n"
	.byte 0
/* end data */

.data
.balign 8
_str124:
	.quad 1073741824
	.ascii ",\n"
	.byte 0
/* end data */

.data
.balign 8
_str125:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str126:
	.quad 1073741824
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str127:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str128:
	.quad 1073741824
	.ascii "\n"
	.byte 0
/* end data */

.data
.balign 8
_str129:
	.quad 1073741824
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str130:
	.quad 1073741824
	.ascii "}"
	.byte 0
/* end data */

.data
.balign 8
_str131:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.byte 0
/* end data */

.data
.balign 8
_str132:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.quad 1073741824
	.ascii " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
	.byte 0
/* end data */

.data
.balign 8
_str134:
	.quad 1073741824
	.ascii "gecersiz base64 indeksi"
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str136:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str137:
	.quad 1073741824
	.ascii "gecersiz base64 karakteri"
	.byte 0
/* end data */

.data
.balign 8
_str138:
	.quad 1073741824
	.ascii "decode yalnizca ASCII (0..127) destekler"
	.byte 0
/* end data */

.data
.balign 8
_str139:
	.quad 1073741824
	.ascii "\t"
	.byte 0
/* end data */

.data
.balign 8
_str140:
	.quad 1073741824
	.ascii "\n"
	.byte 0
/* end data */

.data
.balign 8
_str141:
	.quad 1073741824
	.ascii "decode kontrol karakteri desteklenmiyor: "
	.byte 0
/* end data */

.data
.balign 8
_str142:
	.quad 1073741824
	.ascii "decode DEL desteklenmiyor"
	.byte 0
/* end data */

.data
.balign 8
_str143:
	.quad 1073741824
	.ascii " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
	.byte 0
/* end data */

.data
.balign 8
_str144:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str145:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str146:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str147:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str148:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str149:
	.quad 1073741824
	.ascii "=="
	.byte 0
/* end data */

.data
.balign 8
_str150:
	.quad 1073741824
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str151:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.byte 0
/* end data */

.data
.balign 8
_str152:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str153:
	.quad 1073741824
	.ascii "gecersiz hex karakteri"
	.byte 0
/* end data */

.data
.balign 8
_str154:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str155:
	.quad 1073741824
	.ascii "hex uzunlugu cift olmali"
	.byte 0
/* end data */

.data
.balign 8
_str156:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str157:
	.quad 1073741824
	.ascii "gecersiz hex kalani"
	.byte 0
/* end data */

.data
.balign 8
_str158:
	.quad 1073741824
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str159:
	.quad 1073741824
	.ascii "gecersiz base64url uzunlugu"
	.byte 0
/* end data */

.data
.balign 8
_str160:
	.quad 1073741824
	.ascii "AA"
	.byte 0
/* end data */

.data
.balign 8
_str161:
	.quad 1073741824
	.ascii "A"
	.byte 0
/* end data */

.data
.balign 8
_str162:
	.quad 1073741824
	.ascii "gecersiz base64 uzunlugu"
	.byte 0
/* end data */

.data
.balign 8
_str163:
	.quad 1073741824
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str164:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str165:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str166:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str167:
	.quad 1073741824
	.ascii "str indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str168:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.byte 0
/* end data */

.data
.balign 8
_str169:
	.quad 1073741824
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.byte 0
/* end data */

.data
.balign 8
_str170:
	.quad 1073741824
	.ascii "{\"alg\":\"HS256\",\"typ\":\"JWT\"}"
	.byte 0
/* end data */

.data
.balign 8
_str171:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str172:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str173:
	.quad 1073741824
	.ascii "payload bir JSON nesnesi olmali"
	.byte 0
/* end data */

.data
.balign 8
_str174:
	.quad 1073741824
	.ascii "{\"exp\":"
	.byte 0
/* end data */

.data
.balign 8
_str175:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str176:
	.quad 1073741824
	.ascii "exp"
	.byte 0
/* end data */

.data
.balign 8
_str177:
	.quad 1073741824
	.ascii ","
	.byte 0
/* end data */

.data
.balign 8
_str178:
	.quad 1073741824
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str179:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str180:
	.quad 1073741824
	.ascii "}"
	.byte 0
/* end data */

.data
.balign 8
_str181:
	.quad 1073741824
	.ascii "secret bos olamaz"
	.byte 0
/* end data */

.data
.balign 8
_str182:
	.quad 1073741824
	.ascii "exp_unix pozitif olmali"
	.byte 0
/* end data */

.data
.balign 8
_str183:
	.quad 1073741824
	.ascii "{\"alg\":\"HS256\",\"typ\":\"JWT\"}"
	.byte 0
/* end data */

.data
.balign 8
_str184:
	.quad 1073741824
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str185:
	.quad 1073741824
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str186:
	.quad 1073741824
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str187:
	.quad 1073741824
	.ascii "token uc parca olmali"
	.byte 0
/* end data */

.data
.balign 8
_str188:
	.quad 1073741824
	.ascii "exp"
	.byte 0
/* end data */

.data
.balign 8
_str189:
	.quad 1073741824
	.ascii "exp eksik"
	.byte 0
/* end data */

.data
.balign 8
_str190:
	.quad 1073741824
	.ascii "exp sayi olmali"
	.byte 0
/* end data */

.data
.balign 8
_str191:
	.quad 1073741824
	.ascii "token suresi dolmus"
	.byte 0
/* end data */

.data
.balign 8
_str192:
	.quad 1073741824
	.ascii "nbf"
	.byte 0
/* end data */

.data
.balign 8
_str193:
	.quad 1073741824
	.ascii "nbf sayi olmali"
	.byte 0
/* end data */

.data
.balign 8
_str194:
	.quad 1073741824
	.ascii "token henuz gecerli degil (nbf)"
	.byte 0
/* end data */

.data
.balign 8
_str195:
	.quad 1073741824
	.ascii "iat"
	.byte 0
/* end data */

.data
.balign 8
_str196:
	.quad 1073741824
	.ascii "iat sayi olmali"
	.byte 0
/* end data */

.data
.balign 8
_str197:
	.quad 1073741824
	.ascii "iat gelecekte"
	.byte 0
/* end data */

.data
.balign 8
_str198:
	.quad 1073741824
	.ascii "secret bos olamaz"
	.byte 0
/* end data */

.data
.balign 8
_str199:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str200:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str201:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str202:
	.quad 1073741824
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str203:
	.quad 1073741824
	.ascii "gecersiz imza"
	.byte 0
/* end data */

.data
.balign 8
_str204:
	.quad 1073741824
	.ascii "alg"
	.byte 0
/* end data */

.data
.balign 8
_str205:
	.quad 1073741824
	.ascii "alg eksik"
	.byte 0
/* end data */

.data
.balign 8
_str206:
	.quad 1073741824
	.ascii "alg eksik"
	.byte 0
/* end data */

.data
.balign 8
_str207:
	.quad 1073741824
	.ascii "HS256"
	.byte 0
/* end data */

.data
.balign 8
_str208:
	.quad 1073741824
	.ascii "yalnizca HS256 desteklenir"
	.byte 0
/* end data */

.data
.balign 8
_str209:
	.quad 1073741824
	.ascii "payload nesne olmali"
	.byte 0
/* end data */

.data
.balign 8
_str210:
	.quad 1073741824
	.ascii "test-secret-key-32chars-minimum!!"
	.byte 0
/* end data */

.data
.balign 8
_str211:
	.quad 1073741824
	.ascii "{\"sub\":\"alice\"}"
	.byte 0
/* end data */

.data
.balign 8
_str212:
	.quad 1073741824
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str213:
	.quad 1073741824
	.ascii "token parts"
	.byte 0
/* end data */

.data
.balign 8
_str214:
	.quad 1073741824
	.ascii "alice"
	.byte 0
/* end data */

.data
.balign 8
_str215:
	.quad 1073741824
	.ascii "payload sub"
	.byte 0
/* end data */

.data
.balign 8
_str216:
	.quad 1073741824
	.ascii "exp"
	.byte 0
/* end data */

.data
.balign 8
_str217:
	.quad 1073741824
	.ascii "payload exp"
	.byte 0
/* end data */

.data
.balign 8
_str218:
	.quad 1073741824
	.ascii "wrong-secret-key-32chars-minimum!"
	.byte 0
/* end data */

.data
.balign 8
_str219:
	.quad 1073741824
	.ascii "reject wrong secret"
	.byte 0
/* end data */

.data
.balign 8
_str220:
	.quad 1073741824
	.ascii "{\"sub\":\"bob\"}"
	.byte 0
/* end data */

.data
.balign 8
_str221:
	.quad 1073741824
	.ascii "reject expired"
	.byte 0
/* end data */

.data
.balign 8
_str222:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str223:
	.quad 1073741824
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str224:
	.quad 1073741824
	.ascii "liste indeksi sinirlarin disinda"
	.byte 0
/* end data */

.data
.balign 8
_str225:
	.quad 1073741824
	.ascii ".AAAA"
	.byte 0
/* end data */

.data
.balign 8
_str226:
	.quad 1073741824
	.ascii "reject tampered"
	.byte 0
/* end data */

.data
.balign 8
_str227:
	.quad 1073741824
	.ascii "jwt_test ok"
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

