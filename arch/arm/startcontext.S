/*
 * Copyright (c) 2018 Ariadne Conill <ariadne@dereferenced.org>
 *
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * This software is provided 'as is' and without any warranty, express or
 * implied.  In no event shall the authors be liable for any damages arising
 * from the use of this software.
 */

.globl __start_context;
.fnstart
.cantunwind
	nop
__start_context:
	/* get the proper context into position and test for NULL */
	movs	r0, r4
	bne	__setcontext@plt

	/* we are returning into a null context, it seems, so maybe we should exit */
	b	exit@plt
