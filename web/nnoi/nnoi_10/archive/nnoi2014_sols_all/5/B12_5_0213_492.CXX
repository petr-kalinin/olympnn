//Õ¿“¿–Œ¬ ﬁ–»… ÿ ŒÀ¿ π55 5 GNU C++
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
	int summ=0;
	int vN,vM,vK;

	FILE *vInput = fopen("powersum.in","r");
	fscanf(vInput,"%d %d %d",&vN,&vM,&vK);
	fclose(vInput);

	for (int i = 1; i<vN; i++)
		summ+=pow((double)i,vK);

	FILE *vOutput = fopen("powersum.in","w");
	fprintf(vOutput,"%d",summ%vM);
	fclose(vOutput);
	return 0;
}

