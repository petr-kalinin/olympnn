//ÍÀÒÀĞÎÂ ŞĞÈÉ ØÊÎËÀ ¹55 4 GNU C++
#include <stdio.h>
#include <stdlib.h>

inline int* Sort(int* &aMassive,int aLen)
{
	int temp;
	bool vIterOk=false;
	while (!vIterOk)
	{
		vIterOk=true;
		for (int i = 1; i<aLen; i++)
			if (aMassive[i]<aMassive[i-1])
			{
				temp=aMassive[i];
				aMassive[i]=aMassive[i-1];
				aMassive[i-1]=temp;
				vIterOk=false;
				if (i>=2&&aMassive[i]<aMassive[i-1])
				{
					temp=aMassive[i+1];
					aMassive[i+1]=aMassive[i];
					aMassive[i]=temp;
				}
			}
	}
	return aMassive;
}

int main()
{
	FILE *vInput = fopen("pots.in","r");
	long int vN,vM;
	fscanf(vInput,"%ld %ld",&vN,&vM);
	int *vKastrul=new int[vN];
	int *vKrishk=new int[vM];
	for (int i = 0; i<vN; i++)
		fscanf(vInput,"%d",&vKastrul[i]);
	for (int i = 0; i<vM; i++)
		fscanf(vInput,"%d",&vKrishk[i]);
	fclose(vInput);

	Sort(vKastrul,vN);
	Sort(vKrishk,vM);
		for (int i = 0; i<vN; i++)
		printf("%d ",vKastrul[i]);
		printf("\n");
	for (int i = 0; i<vM; i++)
		printf("%d ",vKrishk[i]);
	
	int vCount=0;
	int vDiff;

	if (vN>vM)//êàñòğşëü áîëüøå
	{
		vDiff=vN-vM;
		for (int i = vM-1; i>=0; i--)
			if (vKrishk[i]>vKastrul[i+vDiff])
				vCount++;
	}
	else
	{
		vDiff=vM-vN;
		for (int i = vN-1; i>=0; i--)
			if (vKastrul[i]<vKrishk[i+vDiff])
				vCount++;
	}

	FILE *vOutput = fopen("pots.out","w");
	fprintf(vOutput,"%d",vCount);
	fclose(vOutput);
	return 0;
}

