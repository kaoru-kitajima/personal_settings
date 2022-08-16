# script for xkeysnail(keymapping app).

import re
from xkeysnail.transform import *


define_multipurpose_modmap({
    # simple press goes through, yet works as modifier.
    Key.HENKAN: [Key.HENKAN, Key.RIGHT_META],
    Key.MUHENKAN: [Key.MUHENKAN, Key.RIGHT_ALT]
})


define_keymap(None, {
    # HENKAN->RSuper, MUHENKAN->RM
    K("RSuper-j"): K("Left"),
    K("RSuper-comma"): K("Down"),
    K("RSuper-k"): K("Up"),
    K("RSuper-l"): K("Right"),
    K("RSuper-Semicolon"): K("BackSpace"),
    
    K("Shift-RSuper-j"): K("Shift-Left"),
    K("Shift-RSuper-comma"): K("Shift-Down"),
    K("Shift-RSuper-k"): K("Shift-Up"),
    K("Shift-RSuper-l"): K("Shift-Right"),
    K("Shift-RSuper-Semicolon"): K("Shift-BackSpace"),
    K("C-RSuper-j"): K("C-Left"),
    K("C-RSuper-comma"): K("C-Down"),
    K("C-RSuper-k"): K("C-Up"),
    K("C-RSuper-l"): K("C-Right"),
    K("C-RSuper-Semicolon"): K("C-BackSpace"),
    
    K("RM-j"): K("Home"),
    K("RM-l"): K("End"),
    K("Shift-RM-j"): K("Shift-Home"),
    K("Shift-RM-l"): K("Shift-End"),
    K("C-RM-j"): K("C-Home"),
    K("C-RM-l"): K("C-End"),

    K("RSuper-Left"): K("M-Left"),
    K("RSuper-Right"): K("M-Right"),
    
    K("RSuper-MUHENKAN"): K("GRAVE"),
    K("RM-HENKAN"): K("GRAVE"),
    
    K("MUHENKAN"): K("RESERVED"),
    K("HENKAN"): K("RESERVED"),
})
