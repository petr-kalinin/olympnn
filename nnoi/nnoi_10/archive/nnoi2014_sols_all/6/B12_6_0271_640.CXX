//НАТАРОВ ЮРИЙ ШКОЛА №55 6 GNU C++
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
	FILE *vInput = fopen("trains.in","r");
	int vN,vM;
	int vVagCount=0;//answer
	fscanf(vInput,"%d %d",&vN,&vM);
	int* vVagonsCount = new int[vN+1];//колво вагонов на станциях

	for (int i = 0; i<=vN; i++)
		vVagonsCount[i]=0;

	int *vVcTime = new int[vM*2];
	int *vVcCount = new int[vM*2];
	int *vVcStantionNum = new int[vM*2];

	int tempFrom, tempTo, tempCount;
	char* tempTimeFromC=new char[5], *tempTimeToC=new char[5];

	int VcIter = 0;
	char* tempC1=new char[2],*tempC2=new char[2];

	for (int i = 0; i<vM; i++)
	{
		fscanf(vInput,"%d %d %d %s %s",&tempFrom, &tempTo, &tempCount, tempTimeFromC, tempTimeToC);//откуда, куда, сколько, ушел, пришел
		vVcCount[VcIter] = -tempCount;
		vVcCount[VcIter+1] = tempCount;
		vVcStantionNum[VcIter] = tempFrom;
		vVcStantionNum[VcIter+1] = tempTo;

		tempC1[0]=tempTimeFromC[0];
		tempC1[1]=tempTimeFromC[1];
		tempC2[0]=tempTimeFromC[3];
		tempC2[1]=tempTimeFromC[4];
		vVcTime[VcIter]=atoi(tempC1)*60+atoi(tempC2);

		tempC1[0]=tempTimeToC[0];
		tempC1[1]=tempTimeToC[1];
		tempC2[0]=tempTimeToC[3];
		tempC2[1]=tempTimeToC[4];
		vVcTime[VcIter+1]=atoi(tempC1)*60+atoi(tempC2);

		if (vVcTime[VcIter]>vVcTime[VcIter+1])
			vVcTime[VcIter+1]+=1440;//След. день

		VcIter+=2;
	}

	for (int i = 0; i<=2880; i++)
	{
		for (int a = 0; a<vM*2; a++)
		{
			if (vVcTime[a]==i)
				vVagonsCount[vVcStantionNum[a]]+=vVcCount[a];
		}
		//...
		for (int a = 0; a<vM*2; a++)
			if (vVcTime[a]==i)
			{
				if (vVagonsCount[vVcStantionNum[a]]<0)
				{
					vVagCount+=abs(vVagonsCount[vVcStantionNum[a]]);
					vVagonsCount[vVcStantionNum[a]]=0;
				}
			}
	}

	FILE *vOutput = fopen("trains.out","w");
	fprintf(vOutput,"%d",vVagCount);
	fclose(vOutput);
	return 0;
}

