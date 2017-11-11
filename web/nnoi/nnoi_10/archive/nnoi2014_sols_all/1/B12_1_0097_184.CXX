//Õ¿“¿–Œ¬ ﬁ–»… ÿ ŒÀ¿ π55 1 GNU C++
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

long unsigned int Max( long unsigned int aA,  long unsigned int aB)
{
		if (aA>aB)
		return aA;
	else
		return aB;
}

long unsigned int Min( long unsigned int aA,  long unsigned int aB)
{
	if (aA>aB)
		return aB;
	else
		return aA;
}

long unsigned int NOD(long unsigned int aA, long unsigned int aB)
{
	if (aB==0) return aA;
	else
		return NOD(aB,aA%aB);
}

long unsigned int NOK(long unsigned int aA,long unsigned int aB)
{
	return (aA*aB)/NOD(aA,aB);
}

int main()
{
	long unsigned int vA,vB,vN,vM, vAns_1, vAns_2; 
	FILE *vInput = fopen("classics.in","r");
	fscanf(vInput,"%ld %ld %ld %ld",&vA,&vB,&vN,&vM);
	fclose(vInput);

	if (vN>vB*vM||vM>vA*vN)
	{
		vAns_1=0;
		vAns_2=0;
	}
	else
	{
		vAns_2 = Max(vN,vM)*Min(vA,vB)-1;
		if (vN==vM)
			vAns_1=vN-1;
		else
			vAns_1=Max(NOK(Max(vA,vB),Min(vA,vB)),NOK(Max(vM,vN),Min(vM,vN)))-Min(NOK(Max(vA,vB),Min(vA,vB)),NOK(Max(vM,vN),Min(vM,vN)))-1;
	}

	FILE *vOutput = fopen("classics.out","w");
	fprintf(vOutput,"%ld %ld\0",vAns_1,vAns_2);
	fclose(vOutput);
	return 0;
}

