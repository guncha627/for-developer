list<case> cs = new list<case>();
for (Integer i = 0; i < 205; i++) {
    case c = new case();
    c.subject = 'This is bug';
    c.Description = 'Resolve it';
    c.status = 'New';
    c.origin = 'Web';
    cs.add(c);
}
insert cs;

list<case> listcase = [select id, status from case where status = 'New'];
for (case each : listcase) {
    each.Status = 'Working';
}
update listcase;