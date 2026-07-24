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
.globl _nox_trace_dispatch
_nox_trace_dispatch:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x17, x2
	mov	x2, x1
	mov	x1, x17
	cmp	x2, #1
	beq	L466
	cmp	x2, #2
	beq	L465
	cmp	x2, #3
	beq	L464
	cmp	x2, #4
	beq	L463
	cmp	x2, #5
	beq	L462
	cmp	x2, #6
	beq	L461
	cmp	x2, #7
	beq	L460
	cmp	x2, #8
	beq	L459
	mov	x1, #8
	bl	_nox_alloc
	mov	x1, #0
	str	x1, [x0]
	b	L467
L459:
	bl	_nox_test_TestSuite_trace
	b	L467
L460:
	bl	_nox_test_AssertionError_trace
	b	L467
L461:
	bl	_nox_fs_FileMetadata_trace
	b	L467
L462:
	bl	_nox_fs_FsError_trace
	b	L467
L463:
	bl	_JsonValue_trace
	b	L467
L464:
	bl	_KeyError_trace
	b	L467
L465:
	bl	_IndexError_trace
	b	L467
L466:
	bl	_ValueError_trace
L467:
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
	beq	L483
	cmp	x2, #2
	beq	L482
	cmp	x2, #3
	beq	L481
	cmp	x2, #4
	beq	L480
	cmp	x2, #5
	beq	L479
	cmp	x2, #6
	beq	L478
	cmp	x2, #7
	beq	L477
	cmp	x2, #8
	bne	L484
	bl	_nox_test_TestSuite_gc_free
	b	L484
L477:
	bl	_nox_test_AssertionError_gc_free
	b	L484
L478:
	bl	_nox_fs_FileMetadata_gc_free
	b	L484
L479:
	bl	_nox_fs_FsError_gc_free
	b	L484
L480:
	bl	_JsonValue_gc_free
	b	L484
L481:
	bl	_KeyError_gc_free
	b	L484
L482:
	bl	_IndexError_gc_free
	b	L484
L483:
	bl	_ValueError_gc_free
L484:
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
	bge	L491
	adrp	x0, "Lfp1"@page
	add	x0, x0, "Lfp1"@pageoff
	ldr	d1, [x0]
	fsub	d0, d0, d1
	fcvtzs	x0, d0
	b	L492
L491:
	adrp	x0, "Lfp1"@page
	add	x0, x0, "Lfp1"@pageoff
	ldr	d1, [x0]
	fadd	d0, d0, d1
	fcvtzs	x0, d0
L492:
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
L495:
	cmp	x2, x3
	bge	L497
	mov	x4, #8
	mul	x4, x2, x4
	mov	x5, #16
	add	x4, x4, x5
	add	x4, x1, x4
	ldr	x4, [x4]
	add	x0, x4, x0
	mov	x4, #1
	add	x2, x2, x4
	b	L495
L497:
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
L500:
	cmp	x0, x2
	bge	L502
	mov	x3, #8
	mul	x3, x0, x3
	mov	x4, #16
	add	x3, x3, x4
	add	x3, x1, x3
	ldr	d1, [x3]
	fadd	d0, d1, d0
	mov	x3, #1
	add	x0, x0, x3
	b	L500
L502:
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
	beq	L505
	mov	x1, x20
	b	L511
L505:
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
	beq	L509
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L508
	mov	x1, x21
	b	L510
L508:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L510
L509:
	mov	x1, x21
L510:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L512
L511:
	mov	x0, x1
	b	L516
L512:
	cmp	x1, #0
	beq	L515
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L515
	bl	_nox_str_free_now
L515:
	mov	x0, #0
L516:
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
	bne	L524
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
	beq	L522
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L521
	mov	x1, x20
	b	L523
L521:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L523
L522:
	mov	x1, x20
L523:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L524:
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
	bne	L532
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
	beq	L530
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L529
	mov	x1, x20
	b	L531
L529:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L531
L530:
	mov	x1, x20
L531:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L532:
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
	beq	L541
	mov	x19, x0
	b	L547
L541:
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
	beq	L545
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L544
	mov	x1, x20
	b	L546
L544:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L546
L545:
	mov	x1, x20
L546:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	cmp	w0, #0
	bne	L548
L547:
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
	b	L549
L548:
	mov	x0, #0
L549:
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
	beq	L552
	mov	x1, x20
	b	L558
L552:
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
	beq	L556
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L555
	mov	x1, x21
	b	L557
L555:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L557
L556:
	mov	x1, x21
L557:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L559
L558:
	mov	x0, x1
	b	L562
L559:
	cmp	x1, #0
	beq	L561
	bl	_List_str_release
L561:
	mov	x0, #0
L562:
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
	bne	L580
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
	beq	L568
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L567
	mov	x1, x20
	mov	x2, x21
	b	L569
L567:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L569
L568:
	mov	x1, x20
L569:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
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
	mov	x1, x20
	b	L574
L572:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L574
L573:
	mov	x1, x20
L574:
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
	beq	L578
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L577
	mov	x1, x20
	b	L579
L577:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L579
L578:
	mov	x1, x20
L579:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L580:
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
	bne	L598
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
	beq	L586
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L585
	mov	x1, x20
	mov	x2, x21
	b	L587
L585:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L587
L586:
	mov	x1, x20
L587:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
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
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L598:
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
	bne	L606
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
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L606:
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
	bne	L614
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
	beq	L612
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L611
	mov	x1, x20
	b	L613
L611:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L613
L612:
	mov	x1, x20
L613:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L614:
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
	beq	L681
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
	beq	L654
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L653
	mov	x1, x22
	b	L655
L653:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L655
L654:
	mov	x1, x22
L655:
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
	adrp	x2, _str46@page+8
	add	x2, x2, _str46@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L664
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L663
	mov	x1, x21
	b	L665
L663:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L665
L664:
	mov	x1, x21
L665:
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
	beq	L669
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L668
	mov	x1, x21
	b	L670
L668:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L670
L669:
	mov	x1, x21
L670:
	cmp	x1, #0
	beq	L674
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L673
	mov	x1, x20
	b	L675
L673:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L675
L674:
	mov	x1, x20
L675:
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
	beq	L679
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L678
	mov	x1, x20
	b	L680
L678:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L680
L679:
	mov	x1, x20
L680:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L681:
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
	beq	L709
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
	beq	L687
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L686
	mov	x1, x20
	mov	x2, x21
	b	L688
L686:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L688
L687:
	mov	x1, x20
L688:
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
	beq	L692
	mov	x3, #8
	sub	x3, x1, x3
	mov	x21, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L691
	mov	x1, x20
	mov	x2, x21
	b	L693
L691:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	b	L693
L692:
	mov	x1, x20
L693:
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L697
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L696
	mov	x1, x20
	b	L698
L696:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L698
L697:
	mov	x1, x20
L698:
	adrp	x2, _str49@page+8
	add	x2, x2, _str49@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L702
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L701
	mov	x1, x20
	b	L703
L701:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L703
L702:
	mov	x1, x20
L703:
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
	beq	L707
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L706
	mov	x1, x20
	b	L708
L706:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L708
L707:
	mov	x1, x20
L708:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L709:
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
	beq	L742
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
	beq	L715
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L714
	mov	x1, x21
	b	L716
L714:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L716
L715:
	mov	x1, x21
L716:
	cmp	x1, #0
	beq	L720
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L719
	mov	x1, x20
	b	L721
L719:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L721
L720:
	mov	x1, x20
L721:
	adrp	x2, _str51@page+8
	add	x2, x2, _str51@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L725
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L724
	fmov	d0, d8
	b	L726
L724:
	mov	x19, x0
	bl	_nox_str_free_now
	fmov	d0, d8
	mov	x0, x19
	b	L726
L725:
	fmov	d0, d8
L726:
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
	beq	L730
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L729
	mov	x1, x21
	b	L731
L729:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L731
L730:
	mov	x1, x21
L731:
	cmp	x1, #0
	beq	L735
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L734
	mov	x1, x20
	b	L736
L734:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L736
L735:
	mov	x1, x20
L736:
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
	beq	L740
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L739
	mov	x1, x20
	b	L741
L739:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L741
L740:
	mov	x1, x20
L741:
	mov	x19, x0
	bl	_nox_raise
	mov	x0, x19
	bl	_nox_exception_pending
	cmp	w0, #0
L742:
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
	beq	L745
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
L745:
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
	beq	L750
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L749
	mov	x1, x22
	b	L751
L749:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x20
	b	L751
L750:
	mov	x1, x22
L751:
	cmp	x1, #0
	beq	L755
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L754
	mov	x1, x21
	b	L756
L754:
	mov	x20, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x20
	b	L756
L755:
	mov	x1, x21
L756:
	cmp	x1, #0
	beq	L760
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L759
	mov	x0, x19
	b	L761
L759:
	bl	_nox_str_free_now
	mov	x0, x19
	b	L761
L760:
	mov	x0, x19
L761:
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
	beq	L766
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L765
	mov	x1, x24
	b	L767
L765:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x24
	mov	x0, x19
	b	L767
L766:
	mov	x1, x24
L767:
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
	mov	x1, x23
	b	L772
L770:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L772
L771:
	mov	x1, x23
L772:
	cmp	x1, #0
	beq	L776
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L775
	mov	x1, x20
	b	L777
L775:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L777
L776:
	mov	x1, x20
L777:
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
	beq	L781
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L780
	mov	x1, x20
	b	L782
L780:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L782
L781:
	mov	x1, x20
L782:
	adrp	x2, _str69@page+8
	add	x2, x2, _str69@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
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
	mov	x1, x20
	b	L787
L785:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L787
L786:
	mov	x1, x20
L787:
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
	beq	L791
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L790
	mov	x1, x23
	b	L792
L790:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L792
L791:
	mov	x1, x23
L792:
	cmp	x1, #0
	beq	L796
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L795
	mov	x1, x20
	b	L797
L795:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L797
L796:
	mov	x1, x20
L797:
	adrp	x2, _str70@page+8
	add	x2, x2, _str70@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L801
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L800
	mov	x1, x20
	b	L802
L800:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L802
L801:
	mov	x1, x20
L802:
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
	beq	L806
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L805
	mov	x1, x23
	b	L807
L805:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x23
	mov	x0, x19
	b	L807
L806:
	mov	x1, x23
L807:
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
	mov	x1, x20
	b	L812
L810:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x20
	mov	x0, x19
	b	L812
L811:
	mov	x1, x20
L812:
	adrp	x2, _str71@page+8
	add	x2, x2, _str71@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_str_concat
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L816
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L815
	mov	x1, x21
	b	L817
L815:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x21
	mov	x0, x19
	b	L817
L816:
	mov	x1, x21
L817:
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
	beq	L821
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	ble	L820
	mov	x1, x22
	b	L822
L820:
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x1, x22
	mov	x0, x19
	b	L822
L821:
	mov	x1, x22
L822:
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
	bne	L834
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
	cmp	x1, #0
	beq	L831
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L831
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L831:
	adrp	x1, _str72@page+8
	add	x1, x1, _str72@pageoff+8
	cmp	x1, #0
	beq	L841
	adrp	x1, _str72@page
	add	x1, x1, _str72@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str72@page
	add	x2, x2, _str72@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L841
	adrp	x1, _str72@page+8
	add	x1, x1, _str72@pageoff+8
	bl	_nox_str_free_now
	b	L841
L834:
	mov	x1, x20
	cmp	x1, #0
	beq	L838
	mov	x2, #8
	sub	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #1
	sub	x2, x2, x3
	mov	x3, #8
	sub	x3, x1, x3
	str	x2, [x3]
	cmp	x2, #0
	bgt	L838
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L838:
	adrp	x1, _str72@page+8
	add	x1, x1, _str72@pageoff+8
	cmp	x1, #0
	beq	L841
	adrp	x1, _str72@page
	add	x1, x1, _str72@pageoff
	ldr	x1, [x1]
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, _str72@page
	add	x2, x2, _str72@pageoff
	str	x1, [x2]
	cmp	x1, #0
	bgt	L841
	adrp	x1, _str72@page+8
	add	x1, x1, _str72@pageoff+8
	bl	_nox_str_free_now
L841:
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
.globl _web_password_hash
_web_password_hash:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_nox_crypto_argon2_hash_raw
	ldp	x29, x30, [sp], 16
	ret
/* end function web_password_hash */

.text
.balign 4
.globl _web_password_verify
_web_password_verify:
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
/* end function web_password_verify */

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
	adrp	x1, _str73@page+8
	add	x1, x1, _str73@pageoff+8
	mov	x19, x0
	bl	_nox_crypto_argon2_hash
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_nox_str_char_count
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #20
	mov	x20, x1
	cset	w1, gt
	adrp	x2, _str74@page+8
	add	x2, x2, _str74@pageoff+8
	mov	x19, x0
	bl	_nox_test_assert_true
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L879
	adrp	x2, _str75@page+8
	add	x2, x2, _str75@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_crypto_argon2_verify
	mov	w1, w0
	mov	x0, x19
	adrp	x2, _str76@page+8
	add	x2, x2, _str76@pageoff+8
	mov	x19, x0
	bl	_nox_test_assert_true
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L878
	adrp	x2, _str77@page+8
	add	x2, x2, _str77@pageoff+8
	mov	x20, x1
	mov	x19, x0
	bl	_nox_crypto_argon2_verify
	mov	w1, w0
	mov	x0, x19
	mov	w2, #1
	eor	w1, w1, w2
	adrp	x2, _str78@page+8
	add	x2, x2, _str78@pageoff+8
	mov	x19, x0
	bl	_nox_test_assert_true
	mov	x0, x19
	mov	x19, x0
	bl	_nox_exception_pending
	mov	x1, x20
	mov	w2, w0
	mov	x0, x19
	cmp	w2, #0
	bne	L877
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, #0
	add	x2, sp, x2
	mov	x20, x1
	adrp	x1, _str79@page+8
	add	x1, x1, _str79@pageoff+8
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
	beq	L876
	mov	x2, #8
	sub	x3, x1, x2
	ldr	x2, [x3]
	mov	x4, #1
	sub	x2, x2, x4
	str	x2, [x3]
	cmp	x2, #0
	bgt	L876
	mov	x19, x0
	bl	_nox_str_free_now
	mov	x0, x19
L876:
	bl	_nox_runtime_deinit
	mov	w0, #0
	b	L880
L877:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L880
L878:
	bl	_nox_unhandled_exception
	mov	w0, #0
	b	L880
L879:
	bl	_nox_unhandled_exception
	mov	w0, #0
L880:
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
	bgt	L890
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
L884:
	cmp	x19, x21
	bge	L889
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L887
	mov	x23, x0
	bl	_nox_str_release
	mov	x1, x24
	mov	x0, x23
	b	L888
L887:
	mov	x1, x24
L888:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L884
L889:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L890:
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
	bgt	L900
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
L894:
	cmp	x19, x21
	bge	L899
	mov	x24, x1
	mov	x1, #8
	mul	x1, x19, x1
	mov	x2, #16
	add	x1, x1, x2
	add	x1, x24, x1
	ldr	x1, [x1]
	cmp	x1, #0
	beq	L897
	mov	x23, x0
	bl	_JsonValue_release
	mov	x1, x24
	mov	x0, x23
	b	L898
L897:
	mov	x1, x24
L898:
	mov	x2, #1
	add	x19, x19, x2
	str	x19, [x20]
	b	L894
L899:
	mov	x2, #8
	mul	x2, x22, x2
	mov	x3, #16
	add	x2, x2, x3
	bl	_nox_rc_free_payload
L900:
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
	bne	L908
	mov	x19, #0
L903:
	cmp	x19, x20
	bge	L907
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
	bne	L908
	mov	x0, #1
	add	x19, x19, x0
	mov	x22, x2
	b	L903
L907:
	mov	w0, #1
	b	L909
L908:
	mov	w0, #0
L909:
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
	bne	L919
	mov	x19, #0
L912:
	cmp	x19, x20
	bge	L918
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
	bne	L915
	mov	x21, x0
	bl	_JsonValue_eq
	mov	x2, x23
	mov	x1, x22
	mov	w3, w0
	mov	x0, x21
	cmp	w3, #0
	beq	L919
	b	L917
L915:
	mov	x2, x23
	mov	x1, x22
	and	w3, w3, w4
	cmp	w3, #0
	beq	L919
L917:
	mov	x3, #1
	add	x19, x19, x3
	b	L912
L918:
	mov	w0, #1
	b	L920
L919:
	mov	w0, #0
L920:
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
	.ascii "correct horse battery staple"
	.byte 0
/* end data */

.data
.balign 8
_str74:
	.quad 1073741824
	.ascii "hash length"
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.quad 1073741824
	.ascii "correct horse battery staple"
	.byte 0
/* end data */

.data
.balign 8
_str76:
	.quad 1073741824
	.ascii "verify ok"
	.byte 0
/* end data */

.data
.balign 8
_str77:
	.quad 1073741824
	.ascii "wrong password"
	.byte 0
/* end data */

.data
.balign 8
_str78:
	.quad 1073741824
	.ascii "verify fail"
	.byte 0
/* end data */

.data
.balign 8
_str79:
	.quad 1073741824
	.ascii "password_test ok"
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

