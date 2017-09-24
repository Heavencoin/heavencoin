Heavencoin integration/staging tree
================================

https://www.heavencoins.com

Copyright (c) 2009-2014 Bitcoin Developers
Copyright (c) 2016 Heavencoin Developers

What is Heavencoin?
----------------

Heavencoin first started in January 2017 as a variant of Litecoin using Scrypt as
the Proof-of-Work hash algorithm.
 - 1 minute block target
<<<<<<< HEAD
 - 500,000,000 Stake Coins	
 - Premine: First 10 block are 50,000,000 HVC 
 - Bonus reward for block 10,000 - 100,000 of 25 coins
 - Bonus reward for block 100,000 - 800,000 of 50 coins
 - Bonus reward for block 800,000 - 1,200,000 of 250 coins
 - Bonus reward for block 1,200,000 - 1,600,000 of 915 coins
 - Subsidy is cut in half every 400,000 blocks starting at block 1600000
 - Difficulty Retarget: Every block using Kimoto's gravity well.
Heavencoin is in transition to its own designed Proof-of-Stake-Velocity (PoSV) and Proof-of-Work(POW) 

- rpcuser=hvcuser
- rpcpassword=hvcpasswrd
- rpcport=44356
- p2p = 44357
- addnode = 165.227.127.71
- addnode = 104.131.61.63
- rpcallowip=127.0.0.1

=======
 - 10 000 000 000 Stake Coins	
 - Difficulty Retarget: Every block using Kimoto's gravity well.
Heavencoin is in transition to its own designed Proof-of-Stake-Velocity (PoSV) and Proof-of-Work(POW) 

>>>>>>> 5bad4eceb6110f6b76393c681f64c376a62b8554
License
-------

Heavencoin is released under the terms of the MIT license. See `COPYING` for more
information or see http://opensource.org/licenses/MIT.

Development process
-------------------

Developers work in their own trees, then submit pull requests when they think
their feature or bug fix is ready.

If it is a simple/trivial/non-controversial change, then one of the Heavencoin
development team members simply pulls it.

If it is a *more complicated or potentially controversial* change, then the patch
submitter will be asked to start a discussion (if they haven't already) on the
appropriate channels.

The patch will be accepted if there is broad consensus that it is a good thing.
Developers should expect to rework and resubmit patches if the code doesn't
match the project's coding conventions (see `doc/coding.txt`) or are
controversial.

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/Heavencoin/heavencoin/tags) are created
regularly to indicate new official, stable release versions of Heavencoin.

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test. Please be patient and help out, and
remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write unit tests for new code, and to
submit new unit tests for old code.

Unit tests for the core code are in `src/test/`. To compile and run them:

    cd src; make -f makefile.unix test

Unit tests for the GUI code are in `src/qt/test/`. To compile and run them:

    qmake BITCOIN_QT_TEST=1 -o Makefile.test bitcoin-qt.pro
    make -f Makefile.test
    ./heavencoin-qt_test
