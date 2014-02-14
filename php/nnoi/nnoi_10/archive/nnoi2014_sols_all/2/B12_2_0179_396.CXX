//Õ¿“¿–Œ¬ ﬁ–»… ÿ ŒÀ¿ π55 2 GNU C++
#include <stdio.h>
#include <stdlib.h>

int main()
{
	FILE *vInput = fopen("lottery.in","r");
	long unsigned int vL,vR,vN;
	fscanf(vInput,"%ld %ld %ld",&vL,&vR,&vN);

	long unsigned int *vTicketsBanned = new long unsigned int[vN];
	long unsigned int vCountTicketsNeedToFake=0;
	bool *vIsThisTicketFree = new bool[1000000001];

	for (int i = 0; i<vN; i++)
	{
		fscanf(vInput,"%ld",&vTicketsBanned[i]);
		vIsThisTicketFree[vTicketsBanned[i]] = false;
    }
	fclose(vInput);

    for (int i = 0; i<vN; i++)
	{
			if (vIsThisTicketFree[vTicketsBanned[i]+1]&&(vTicketsBanned[i]+1)<=vR)
				vCountTicketsNeedToFake++;
			else
			if (vIsThisTicketFree[vTicketsBanned[i]-1]&&(vTicketsBanned[i]-1)>=vL)
				vCountTicketsNeedToFake++;
	}

	FILE *vOutput = fopen("lottery.out","w");
	fprintf(vOutput,"%ld\n",vCountTicketsNeedToFake);
	for (int i = 0; i<vN; i++)
	{
			if (vIsThisTicketFree[vTicketsBanned[i]+1]&&(vTicketsBanned[i]+1)<=vR)
				fprintf(vOutput,"%ld ",vTicketsBanned[i]+1);
			else
			if (vIsThisTicketFree[vTicketsBanned[i]-1]&&(vTicketsBanned[i]-1)>=vL)
				fprintf(vOutput,"%ld ",vTicketsBanned[i]-1);
	}
	fclose(vOutput);
	return 0;
}

