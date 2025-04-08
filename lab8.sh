#q1
ulimit -c
ulimit -c unlimited
ulimit -c
#q2
ulimit -c 0
ulimit -c
#q3
gcc -ggdb -o a.out file1.c -Wall -Wextra -g
./a.out
gcc -g file1.c -o a.out
gdb ./a.out
#q4
cat >file1.c
#q5
cat > file2.c
gcc -g file2.c -o a.out
./a.out
