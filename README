Cryptools
=========
A user-friendly playground for strategists to build, experiment, deploy and analyze different crypto trading strategies! Note: The tool is currently designed for personal use and not for production level use.

Setting up (Windows)
--------------------

1. Download and install [Anaconda](https://www.anaconda.com/distribution/#download-section) (for Python3 Windows 64bit) 

2. Open Anaconda Navigator (optional: register to share and/or keep track of your environments across machines) and install jupyter lab

3. Create a conda environment and install the following dependencies:

* pandas
* pyyaml
* import_ipynb
* mysqlclient
* ccxt

4. Download [MySQL installer](https://dev.mysql.com/downloads/installer/) to install and configure MySQL server 

5. Download and install [MySQL workbench](https://dev.mysql.com/downloads/workbench/) - a friendly interface to work with the database

6. Start MySQL server using the following parameters 
```
--local-infile=1
--secure-file-priv=""
```

7. Run setup-db.sql in the workbench

8. Set up config.yaml (see the example file)

9. Launch jupyter lab, code strategies and run!

Overview
--------

####Database Layout

![alt text](https://github.com/ehsueh/cryptools/blob/master/database/entity-relationship-diagram.png "entity relationship diagram")

Reference and Documentations
----------------------------

* [mysqlclient - MySQLdb](https://mysqlclient.readthedocs.io/index.html) - apparently the fastest compare to other Python MySQL connectors

* [ccxt](https://github.com/ccxt/ccxt/wiki/Manual) - manual for ccxt library (collection of many crypto exchange api wrappers)

Next
----
Vote for priority by incrementing the number in [].

* Support for backtesting (catalyst) and storing performance results [1]
* Visualization summary of performance results of different strategies [1]
* Analysis tools for comparing results of different strategies [1]
* Support auto-update of order details in database [1]
* Support analytics and alternative data [1]