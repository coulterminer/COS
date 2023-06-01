ENTRY(kernel_main)    /* Set the entry point to kernel_main */

SECTIONS {
    . = 0x7C00;        /* Set the starting address of the code */

    .text : {
        *(.text)       /* Include all the code sections */
    }

    .data : {
        *(.data)       /* Include all the data sections */
    }

    .bss : {
        *(.bss)        /* Include all the uninitialized data sections */
    }

    /DISCARD/ : {
        *(.comment)    /* Discard any comment sections */
    }
}
