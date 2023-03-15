#Name: CS2640 Program 1
#Date: March 26, 2023
#Objective: Familiarize ourselves with differnt MIPS instructions, syscall services, MARS environment, and overall practice with Assembly programming

.data
int: .word #int: .word (number here)
msg: .asciiz "Enter a number: \n"
newLine: .asciiz "\n"
outputMsg: .asciiz "This is the output: \n"

.text
main: 
	#print msg
	li $v0, 4
	la $a0, msg
	syscall
	
	#collect input
	li $v0, 5
	syscall 
	move $s1, $v0
	
	li $v0, 5
      	syscall
      	move $s2, $v0
      	
      	#output user input
      	li $v0, 4
	la $a0, outputMsg
	syscall
	
      	move $a0, $s1
      	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	move $a0, $s2
	li $v0, 1
	syscall
      	
      	#exit program
	li $v0, 10
	syscall
