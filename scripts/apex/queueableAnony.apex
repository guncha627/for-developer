list<account> accs = [select id, name from account];
AccountQueueableExample aq = new AccountQueueableExample(accs);
id jobId = system.enqueueJob(aq);
system.debug(jobId);