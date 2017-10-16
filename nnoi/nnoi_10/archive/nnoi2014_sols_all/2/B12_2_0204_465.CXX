//Õ¿“¿–Œ¬ ﬁ–»… ÿ ŒÀ¿ π55 2 GNU C++
#include <stdio.h>
#include <stdlib.h>

int main()
{
	FILE *vInput = fopen("lottery.in","r");
	long int vL,vR,vN;
	fscanf(vInput,"%d %d %d",&vL,&vR,&vN);

	unsigned int *vTicketsBanned = new unsigned int[vN];
	unsigned int vCountTicketsNeedToFake=0;

	for (int i = 0; i<vN; i++)
	{
		fscanf(vInput,"%d",&vTicketsBanned[i]);
		if (i!=0)
		{
			if (i!=vN-1)
			{
				if (vTicketsBanned[i]-vTicketsBanned[i-1]>2)
					vCountTicketsNeedToFake+=2;
				else
					if (vTicketsBanned[i]-vTicketsBanned[i-1]>1)
						vCountTicketsNeedToFake++;
			}
			else
			{
				if (vTicketsBanned[i]-vTicketsBanned[i-1]>2)
					vCountTicketsNeedToFake+=2;
				else
				if ((vTicketsBanned[vN-1])<vR)
					vCountTicketsNeedToFake++;
			}
		}
		else if (vTicketsBanned[0]>vL)
				vCountTicketsNeedToFake++;
    }
	//memory...arrr
	fclose(vInput);
	FILE *vOutput = fopen("lottery.out","w");
	fprintf(vOutput,"%d\n",vCountTicketsNeedToFake);

	for (int i = 0; i<vN; i++)
	{
		if (i!=0)
		{
			if (i!=vN-1)
			{
				if (vTicketsBanned[i]-vTicketsBanned[i-1]>2)
					fprintf(vOutput,"%d %d ",vTicketsBanned[i-1]+1,vTicketsBanned[i]-1);
				else
					if (vTicketsBanned[i]-vTicketsBanned[i-1]>1)
						fprintf(vOutput,"%d ",vTicketsBanned[i]-1);
			}
			else
			{
				if (vTicketsBanned[i]-vTicketsBanned[i-1]>2)
					fprintf(vOutput,"%d %d ",vTicketsBanned[i-1]+1,vTicketsBanned[i]-1);
				if ((vTicketsBanned[vN-1])<vR)
					fprintf(vOutput,"%d ",vTicketsBanned[vN-1]+1);
			}
		}
		else if (vTicketsBanned[0]>vL)
				fprintf(vOutput,"%d ",vTicketsBanned[0]-1);
    }
	fclose(vOutput);
	return 0;
}

