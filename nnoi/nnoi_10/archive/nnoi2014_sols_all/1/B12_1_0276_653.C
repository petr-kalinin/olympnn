//Õ¿“¿–Œ¬ ﬁ–»… ÿ ŒÀ¿ π55 1 GNU C++
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int Max( int aA,  int aB)
{
		if (aA>aB)
		return aA;
	else
		return aB;
}

int Min( int aA,  int aB)
{
	if (aA>aB)
		return aB;
	else
		return aA;
}

int NOD(int aA, int aB)
{
	long unsigned int temp;
	while (aB!=0)
	{
		temp=aA;
		aA=aB;
	    aB=temp%aB;
	}
	return aA;
}

int NOK(int aA,int aB)
{
	return (aA*aB)/NOD(aA,aB);
}

int main()
{
	int vA,vB,vN,vM, vAns_1, vAns_2; 
	FILE *vInput = fopen("classics.in","r");
	fscanf(vInput,"%d %d %d %d",&vA,&vB,&vN,&vM);
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
	fprintf(vOutput,"%d %d",vAns_1,vAns_2);
	fclose(vOutput);
	return 0;
}

