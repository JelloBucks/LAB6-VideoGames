#LAB6 Python starter code
#imports go here
#import MySQLdb
import _mysql

#code goes here

buffer = "true"



def oneQuery():
	db = _mysql.connect(host="localhost",user="root",passwd="mysql",db="videogames")
	db.query("""SELECT gameTitle, gameType, consoleID, releaseDate FROM games;""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	db.close()

def twoQuery():
	db = _mysql.connect(host="localhost",user="root",passwd="mysql",db="videogames")
	db.query("""SELECT * FROM consoles;""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	db.close()

def threeQuery():
	db = _mysql.connect(host="localhost",user="root",passwd="mysql",db="videogames")
	db.query("""SELECT gameTitle, gameType, consoleID, releaseDate FROM games WHERE consoleID='1';""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	if nR == 0:
		print("""All games that are available on Xbox One""")
	db.close()
	

def fourQuery():
	db = _mysql.connect(host="localhost",user="root",passwd="mysql",db="videogames")
	db.query("""SELECT gameTitle, gameType, consoleID, releaseDate FROM games WHERE consoleID='3';""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	if nR == 0:
		print("""All games that are available on PC""")
	db.close()


def fiveQuery():
	db = _mysql.connect(host="localhost",user="root",passwd="mysql",db="videogames")
	db.query("""SELECT gameTitle, gameType, consoleID, releaseDate FROM games WHERE consoleID='2';""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	if nR == 0:
		print("""All games that are available on Xbox One""")
	db.close()

def sixQuery():
	db = _mysql.connect(host="localhost",user="root",passwd="mysql",db="videogames")
	db.query("""SELECT gameTitle, gameType, consoleID, releaseDate FROM games WHERE consoleID='4';""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	if nR == 0:
		print("""All games that are available on Xbox One""")
	db.close()

def sevenQuery():
	db = _mysql.connect(host="localhost",user="root",passwd="mysql",db="videogames")
	db.query("""SELECT a.gameTitle, a.gameType, a.consoleID, a.releaseDate FROM games AS a INNER JOIN gamegenres AS b ON a.gameID = b.gameID WHERE b.gameTypeID = 1;""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	if nR == 0:
		print("""All games that are First Person Shooters""")
	db.close()

while buffer:
	print("""
	0.Exit
	1.See Video Games
	2.See Consoles
	3.See what games are available on Xbox One
	4.See what games are available on PC
	5.See what games are available on Playstation 4
	6.See what games are available on Nintendo Switch
	7.See what games are first person shooters
	""")
	buffer=input("what would you like to do? ")
	if buffer == 1:
		oneQuery()
	if buffer == 2:
		twoQuery()
	if buffer == 3:
		threeQuery()
	if buffer == 4:
		fourQuery()
	if buffer == 5:
		fiveQuery()
        if buffer == 6:
		sixQuery()
        if buffer == 7:
		sevenQuery()