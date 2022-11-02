System.debug('Starting number is ' +Candidates.candidateCount);
Candidates.companyName = 'softinnovas';
Candidates c1 = new Candidates();
Candidates.candidateCount++;
c1.name = 'Allanur';
c1.gender = 'male';
c1.printCandidate();

Candidates c2 = new Candidates();
Candidates.candidateCount++;
c2.name = 'Jeren';
c2.gender = 'female';
c2.printCandidate();

Candidates.companyName='Cola';
Candidates c3 = new Candidates();
Candidates.candidateCount++;

c3.name='Hally';
c3.gender='male';
c3.printCandidate();
System.debug('Ending number is ' +Candidates.candidateCount);