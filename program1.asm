#Name: CS2640 Program 1
#Date: March 26, 2023
#Objective: Familiarize ourselves with differnt MIPS instructions, syscall services, MARS environment, and overall practice with Assembly programming

.data
int: .word #int: .word (number here)
msg: .asciiz "Enter a number: \n"

.text
main: 
	#print msg
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall 
	move $s1, $v0
	
	li $v1, 5
      	syscall
      	move $s2, $v1
      	
      	la $a0, 32($s1)


      	
      	#exit program
	#li $v0, 10