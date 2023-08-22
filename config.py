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
    K("RSuper-m"): K("Delete"),
    
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
    K("RM-CAPSLOCK"): K("ESC"),
    
    K("RM-a"): K("a"),
    K("RM-b"): K("b"),
    K("RM-c"): K("c"),
    K("RM-d"): K("d"),
    K("RM-e"): K("e"),
    K("RM-f"): K("f"),
    K("RM-g"): K("g"),
    K("RM-h"): K("h"),
    K("RM-i"): K("i"),
    K("RM-k"): K("k"),
    K("RM-n"): K("n"),
    K("RM-o"): K("o"),
    K("RM-p"): K("p"),
    K("RM-q"): K("q"),
    K("RM-r"): K("r"),
    K("RM-s"): K("s"),
    K("RM-t"): K("t"),
    K("RM-u"): K("u"),
    K("RM-v"): K("v"),
    K("RM-w"): K("w"),
    K("RM-x"): K("x"),
    K("RM-y"): K("y"),
    K("RM-z"): K("z"),
    K("RM-comma"): K("comma"),
    
    K("RSuper-a"): K("a"),
    K("RSuper-b"): K("b"),
    K("RSuper-c"): K("c"),
    K("RSuper-d"): K("d"),
    K("RSuper-e"): K("e"),
    K("RSuper-f"): K("f"),
    K("RSuper-g"): K("g"),
    K("RSuper-h"): K("h"),
    K("RSuper-i"): K("i"),
    K("RSuper-n"): K("n"),
    K("RSuper-o"): K("o"),
    K("RSuper-p"): K("p"),
    K("RSuper-q"): K("q"),
    K("RSuper-r"): K("r"),
    K("RSuper-s"): K("s"),
    K("RSuper-t"): K("t"),
    K("RSuper-u"): K("u"),
    K("RSuper-v"): K("v"),
    K("RSuper-w"): K("w"),
    K("RSuper-x"): K("x"),
    K("RSuper-y"): K("y"),
    K("RSuper-z"): K("z"),
    
    K("RSuper-KEY_1"): K("KEY_1"),
    K("RSuper-KEY_2"): K("KEY_2"),
    K("RSuper-KEY_3"): K("KEY_3"),
    K("RSuper-KEY_4"): K("KEY_4"),
    K("RSuper-KEY_5"): K("KEY_5"),
    K("RSuper-KEY_6"): K("KEY_6"),
    K("RSuper-KEY_7"): K("KEY_7"),
    K("RSuper-KEY_8"): K("KEY_8"),
    K("RSuper-KEY_9"): K("KEY_9"),
    K("RSuper-KEY_0"): K("KEY_0"),

    K("RSuper-Left"): K("M-Left"),
    K("RSuper-Right"): K("M-Right"),
    
    K("RSuper-MUHENKAN"): K("GRAVE"),
    K("RM-HENKAN"): K("GRAVE"),
    
    K("MUHENKAN"): K("RESERVED"),
    K("HENKAN"): K("RESERVED"),
})
