
#define var __auto_type

#define let __auto_type const

#define iflet(VAR, VALUE) \
    ifletwhere(VAR, VALUE, YES)

#define ifletwhere(VAR, VALUE, WHERE) \
    for (BOOL iflet_once_##VAR = YES; iflet_once_##VAR; iflet_once_##VAR = NO) \
        for (let VAR = (VALUE); iflet_once_##VAR; iflet_once_##VAR = NO) \
            if (VAR != nil && (WHERE))

