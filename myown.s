.text
.balign 4
.globl _main
_main:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, ___stderrp@gotpage
	ldr	x0, [x0, ___stderrp@gotpageoff]
	ldr	x0, [x0]
	adrp	x1, _x@gotpage
	ldr	x1, [x1, _x@gotpageoff]
	ldr	x1, [x1]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, #0
	add	x2, sp, x2
	str	x1, [x2]
	adrp	x1, _message@page
	add	x1, x1, _message@pageoff
	bl	_fprintf
	mov	x0, #16
	add	sp, sp, x0
	mov	w0, #0
	ldp	x29, x30, [sp], 16
	ret
/* end function main */

.data
.balign 8
_message:
	.ascii "%d\n"
	.byte 0
/* end data */
