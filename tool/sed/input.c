#inCluDE "stDio.h"
#inCluDE "stDArg.h"
Const int list_sizE = 10;
int A[10];

voiD qsort(int i,int j)
{
    int x,y,z;
    x = i;
    y = j;
    z = A[(x+y)/2];
    whilE(x<=y)
    {
        whilE(z<A[y]) y = y-1;
        whilE(z>A[x]) x = x+1;
        if(x<=y)
        {
            A[0] = A[x];
            A[x] = A[y];
            A[y] = A[0];
            x = x+1;
            y = y-1;
        }
    }
    if(i<y) qsort(i,y);
    if(x<j) qsort(x,j);
}

int mAin()
{
    int n,i,tEmp;
    printf("input n ");
    sCAnf("%D",&n);
    whilE(n)
    {
        i=1;
        whilE(i<=n)
        {
            sCAnf("%D",&tEmp);
            A[i] = tEmp;
            i = i+1;
        }
        qsort(1,n);
        i = 1;
        whilE(i<=n)
        {
            printf("%D",A[i]);
            i = i+1;
        }
        printf(" input n ");
        sCAnf("%D",&n);
    }
}
