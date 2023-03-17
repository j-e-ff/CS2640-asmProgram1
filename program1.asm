#Name: CS2640 Program 1
#Date: March 26, 2023
#Objective: Familiarize ourselves with differnt MIPS instructions, syscall services, MARS environment, and overall practice with Assembly programming

.data
int: .word #int: .word (number here)
msg: .asciiz "Enter a number: \n"
newLine: .asciiz "\n"
outputMsg: .asciiz "This is the output: \n"
arithmiticMsg: .asciiz "Arithmitic output: \n"
addMsg: .asciiz "add result: "
subMsg: .asciiz "sub result: "
mulMsg: .asciiz "multiplication result: "
divMsg: .asciiz "division result: "

.text
main: 
	#print msg
	li $v0, 4
	la $a0, msg
	syscall
	
	#collect input
	li $v0, 5
	syscall 
	move $s0, $v0
	
	li $v0, 5
      	syscall
      	move $s1, $v0
      	
      	#output user input
      	li $v0, 4
	la $a0, outputMsg
	syscall
	
      	move $a0, $s0
      	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	move $a0, $s1
	li $v0, 1
	syscall
	
	#arithmitic
      	add $t0,$s0,$s1
      	sub $t1,$s0,$s1
      	mul $t2,$s0,$s1
      	div $t3,$s0,$s1
      	
      	li $v0, 4
	la $a0, newLine
	syscall
	
      	li $v0, 4
	la $a0, arithmiticMsg
	syscall
      	
      	#printing add
      	li $v0, 4
	la $a0, addMsg
	syscall
	
      	li $v0,1
      	move $a0,$t0
      	syscall
      	
      	li $v0, 4
	la $a0, newLine
	syscall
	
	#printing sub
	li $v0, 4
	la $a0, subMsg
	syscall
	
	li $v0,1
      	move $a0,$t1
      	syscall
      	
      	li $v0, 4
	la $a0, newLine
	syscall
	
	#printing multiplication
	li $v0, 4
	la $a0, mulMsg
	syscall
	
	li $v0,1
      	move $a0,$t2
      	syscall
      	
      	li $v0, 4
	la $a0, newLine
	syscall
	
	#printing division
	li $v0, 4
	la $a0, divMsg
	syscall
	
	li $v0,1
      	move $a0,$t3
      	syscall
      	
      	li $v0, 4
	la $a0, newLine
	syscall
      	
      	#exit program
	li $v0, 10
	syscall
