RankHandler rh = new RankHandler();
system.debug(rh.rankPrize(1));
system.debug(rh.rankPrize(2));
system.debug(rh.rankPrize(3));
system.debug(rh.rankPrize(5));
system.debug(rh.rankPrize(50));
system.debug(rh.rankPrize(0));

RankHandler rhh = new RankHandler();
system.debug(rhh.rankPrizeSwitch(1));
system.debug(rhh.rankPrizeSwitch(2));
system.debug(rhh.rankPrizeSwitch(3));
system.debug(rhh.rankPrizeSwitch(5));
system.debug(rhh.rankPrizeSwitch(50));
system.debug(rhh.rankPrizeSwitch(-1));