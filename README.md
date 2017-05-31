Heavencoin integration/staging tree
================================

http://www.heavencoin.com

Copyright (c) 2009-2014 Bitcoin Developers
Copyright (c) 2011-2014 Litecoin Developers
Copyright (c) 2014 Heavencoin Developers

What is Heavencoin?
----------------

Heavencoin first started in January 2014 as a variant of Litecoin using Scrypt as
the Proof-of-Work hash algorithm.
 - 1 minute block target
 - subsidy halves in 500,000 blocks
 - ~109 billion total coins
 - 100,000 coins per block
 - Difficulty Retarget: Every block using Kimoto's gravity well.

Heavencoin is in transition to its own designed Proof-of-Stake-Velocity (PoSV) which
will replace Proof-of-Work (PoW) in second half of 2014.
 - 1 minute block target
 - subsidy halves every 50,000 blocks starting at block 140,000
 - ~30 billion mined during the PoW era
 - 5% annual interest once in PoSV era
 - academic paper: http://www.heavencoin.com/papers/PoSV.pdf
 - FAQs paper: http://www.heavencoin.com/papers/PoSV_FAQ.pdf

For more information, as well as an immediately useable, binary version of
the Heavencoin client sofware, see http://www.heavencoin.com.

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
completely stable. [Tags](https://github.com/heavencoin-project/heavencoin/tags) are created
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
