=====
Find Longest Word Made of Other Words
=====

Write a program that reads a file containing a sorted list of words (one word per line, no spaces, all lower case), then identifies the total count of how many of the words in the list can be constructed of other words in the list.

For example, if the file contained:

       cat # no
       cats # no
       catsdogcats # yes
       catxdogcatsrat #no
       dog #no
       dogcatsdog # yes
       rat #no
       ratcatdogcat # yes

The program should then go on to report how many of the words in the list can be constructed of other words in the list.

Performance matters: the program should return results quickly even for very large lists (100,000+ items).

Please find attached a file, “words for problem.txt”, containing a word list, with 173k rows, for testing purposes.