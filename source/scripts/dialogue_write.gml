///dialogue_write(name,text,portrait);

name = argument0;
text = argument1;
portrait = argument2;

Dialogue.drawing = 1;
Dialogue.name = string(name);
Dialogue.text = string(text);
Dialogue.head = portrait;
