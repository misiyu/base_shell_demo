#!/usr/bin/awk -f
BEGIN \
{
	data[0] = 4;
	data[1] = 90;
	data[2] = 6.9;
	data[3] = 8;
	data[4] = 10;
	data[5] = 1;
	data[6] = 60;
	data[7] = 7.8;
	data[8] = 9.3;
	for(i=0;i<9;i++)
	{
		for(j=i+1;j<9;j++)
			if(data[i]>data[j])
			{
				temp = data[i];
				data[i] = data[j];
				data[j] = temp;
				}
		}
	for(i=0;i<9;i++)
		printf("%.1f ",data[i]);
	printf("\n");
	}
