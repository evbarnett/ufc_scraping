CREATE TABLE events (
    eventId INT PRIMARY KEY
    eventName TEXT NOT NULL,
    eventDate DATE NOT NULL,
    statsLink TEXT NOT NULL
);

CREATE TABLE fighters (
    fighterId INT PRIMARY KEY,
    fighterName TEXT NOT NULL,
    nickname TEXT,
    statsLink TEXT NOT NULL,
    /* Facts */
    heightInches INT,
    weightPounds INT,
    reachInches INT,
    stance TEXT,
    dob DATE,
    /* Career Stats */
    sigStrikesPerMin REAL,
    avgTDPer15Min REAL,
    sigStrikeAccPercent INT,
    TDAccuracyPercent INT,
    sigStrikesAbsPerMin REAL,
    TDDefPercent INT,
    sigStrikeDefPercent INT,
    avgSubmissionAttemptPer15Min REAL
);

CREATE TABLE fights (
    fightId INT PRIMARY KEY,
    eventId INT FOREIGN KEY
    statsLink TEXT NOT NULL,
    firstFighterId INT FOREIGN KEY,
    secondFighterId INT FOREIGN KEY,
    /* TODO */
);

CREATE TABLE fight_rounds (
    fightId INT FOREIGN KEY,
    roundNumber INT,
    /* TODO */
);