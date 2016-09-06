#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/reg.h>	/* For constants ORIG_EAX / ORIG_RAX etc */

//#define _x86_
#define _x86_64_
//#define _ALT_1_
//#define _ALT_2_
#define _ALT_3_

#include <sys/user.h>

int main() {
	pid_t child;
	long orig_eax;

	child = fork();
	if(child == 0) {
		ptrace(PTRACE_TRACEME, 0, NULL, NULL);
		execl("./HelloWorld", "ls", NULL);
	} else {
		wait(NULL);
		#ifdef _x86_
		/* The third argument of ptrace is "void *addr" which stands
		 * for an offset to the address in the segment specified by the
		 * first argument.
		 * In our case 4 * ORIG_EAX means 4 bytes, which is the size of
		 * the register, multiplied by the index of the register which
		 * would provide us the right offset in the user segment where
		 * the value of the register is saved. */
		orig_eax = ptrace(PTRACE_PEEKUSER, 
		                  child, 4 * ORIG_EAX, 
		                  NULL);
		printf("The child made a "
		       "system call %ld\n", orig_eax);
		#endif
		#ifdef _x86_64_
		#ifdef _ALT_1_
		/* In contrast to the 32bit version of this program we now have
		 * replace the EAX register with the RAΧ and the offset
		 * coefficient with 8 since the size of the registers in the x64
		 * architecture is double the size of i386 which was 4 */
		 * orig_eax = ptrace(PTRACE_PEEKUSER, 
		                  child, 8 * ORIG_RAX, 
		                  NULL);
		printf("The child made a "
		       "system call %ld\n", orig_eax);
		#endif
		#ifdef _ALT_2_
		struct user_regs_struct regs;
		ptrace(PTRACE_GETREGS, 
		       child, NULL,
		       &regs);
		printf("The child made a "
		       "system call %ld\n", regs.orig_rax);
		#endif
		#ifdef _ALT_3_
		/* Here we utilize the user struct which contains a nested
		 * user_regs_struct name regs which if we access we will get
		 * the offset to the appropriate address */
		struct user *user_space = (struct user *)0;
		orig_eax = ptrace(PTRACE_PEEKUSER,
		                  child,
		                  &user_space->regs.orig_rax,
		                  NULL);
		printf("The child made a "
		       "system call %ld\n", orig_eax);
		#endif
		#endif
		/* Continue with child execution */
		ptrace(PTRACE_CONT, child, NULL, NULL);
	}
	return 0;
}
