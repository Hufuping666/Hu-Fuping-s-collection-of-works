#include<cstdio>
#include<iostream>
#include<cstdlib>
#include<conio.h>
#include<windows.h> 
using namespace std;
void clrscr();bool check();bool can(int a,int b,int c,int d);
void gon();void AI();void dr();void jc();void draw();bool yes();bool yy();
void len();void zb(int,int);
////////////////////
int qp[20][20];int jl[101][3];int lz[10][10][3];int l[20][20][3];
int jlzz=0,cs=0,x=0,y=0,aix=0,aiy=0;
bool doo=false,frist=true;
void clrscr()
{
	system("cls");
}
bool check()
{
	for (int i=5;i<=13;i++)
	{
		for (int j=5;j<=13;j++)
		{
			if (qp[i][j]==2)
			{
				if ((qp[i][j]==qp[i+1][j])&&(qp[i+1][j]==qp[i+2][j])&&(qp[i+2][j]==qp[i+3][j])&&(qp[i+3][j]==qp[i+4][j]))   return true;
				if ((qp[i][j]==qp[i+1][j+1])&&(qp[i+1][j+1]==qp[i+2][j+2])&&(qp[i+2][j+2]==qp[i+3][j+3])&&(qp[i+3][j+3]==qp[i+4][j+4]))  return true;
				if ((qp[i][j]==qp[i][j+1])&&(qp[i][j+1]==qp[i][j+2])&&(qp[i][j+2]==qp[i][j+3])&&(qp[i][j+3]==qp[i][j+4]))   return true;
				if  ((qp[i][j]==qp[i-1][j+1])&&(qp[i-1][j+1]==qp[i-2][j+2])&&(qp[i-2][j+2]==qp[i-3][j+3])&&(qp[i-3][j+3]==qp[i-4][j+4]))   return true;
			}
		}
	}
	return false;
}
bool can(int a,int b,int c,int d)
{
	int sz[10];
	memset(sz,0,sizeof(sz));
	int m=a,n=b;
	int k=0;
	switch(c)
	{
		case 1:           // |
			{
		     	while ((qp[m][n]!=d)&&(m-4>=1))
				{
					m--;k++;
				}
				while ((qp[m][n]!=d)&&(m-4<=9))
				{
					m++;k++;
				}
				if (k-1>=5) return true;
				else return false;
			}
		case 2:           // `
			{
		     	while ((qp[m][n]!=d)&&(m-4>=1)&&(n-4>=1))
				{
					m--;n--;k++;
				}
				while ((qp[m][n]!=d)&&(m-4<=9)&&(n-4<=9))
				{
					m++;n++;k++;
				}
				if (k-1>=5) return true;
				else return false;
			}
		case 3:           // — 
			{
		     	while ((qp[m][n]!=d)&&(n-4>=1))
				{
					n--;k++;
				}
				while ((qp[m][n]!=d)&&(n-4<=9))
				{
					n++;k++;
				}
				if (k-1>=5) return true;
				else return false;
			}
		case 4:           // /
			{
		     	while ((qp[m][n]!=d)&&(m-4<=9)&&(n-4>=1))
				{
					m++;n--;k++;
				}
				while ((qp[m][n]!=d)&&(m-4>=1)&&(n-4<=9))
				{
					m--;n++;k++;
				}
				if (k-1>=5) return true;
				else return false;
			}
	}
}
void zb(int x,int y)
{
	int aaa=0,bbb=0;
	int x_x=x,y_y=y;
	{
		int aa=0;
		while(qp[x_x][y_y-1]==1) {y_y--;aa++;}
		y_y=y;
		while(qp[x_x][y_y+1]==1) {y_y++;aa++;}
		if (aa) bbb++;
		int bb=0;
		while(qp[x_x][y_y-1]==2) {y_y--;bb++;}
		y_y=y;
		while(qp[x_x][y_y+1]==2) {y_y++;bb++;}
		if (bb) bbb++;
		aaa=max(aaa,max(aa,bb));
	}
	x_x=x,y_y=y;
	{
		int aa=0;
		while(qp[x_x-1][y_y]==1) {x_x--;aa++;}
		x_x=x;
		while(qp[x_x+1][y_y]==1) {x_x++;aa++;}
		if (aa) bbb++;
		int bb=0;
		while(qp[x_x-1][y_y]==2) {x_x--;bb++;}
		y_y=y;
		while(qp[x_x+1][y_y]==2) {x_x++;bb++;}
		if (bb) bbb++;
		aaa=max(aaa,max(aa,bb));
	}
	x_x=x,y_y=y;
	{
	int jsq=1;int aa=0,bb=0;
	while (qp[x_x-jsq][y_y-jsq]==1) {jsq++;aa++;}
	jsq=1;int x_x=x,y_y=y;
	while (qp[x_x+jsq][y_y+jsq]==1) {jsq++;aa++;}
	if (aa) bbb++;
	while (qp[x_x-jsq][y_y-jsq]==2) {jsq++;bb++;}
	jsq=1;x_x=x,y_y=y;
	while (qp[x_x+jsq][y_y+jsq]==2) {jsq++;bb++;}
	if (bb) bbb++;
	aaa=max(aaa,max(aa,bb));
    }
    x_x=x,y_y=y;
	{
	int jsq=1;int aa=0,bb=0;
	while (qp[x_x-jsq][y_y+jsq]==1) {jsq++;aa++;}
	jsq=1;int x_x=x,y_y=y;
	while (qp[x_x+jsq][y_y-jsq]==1) {jsq++;aa++;}
	if (aa) bbb++;
	while (qp[x_x-jsq][y_y+jsq]==2) {jsq++;bb++;}
	jsq=1;x_x=x,y_y=y;
	while (qp[x_x+jsq][y_y-jsq]==2) {jsq++;bb++;}
	if (bb) bbb++;
	aaa=max(aaa,max(aa,bb));
    }
	l[x][y][1]=aaa;l[x][y][2]=bbb;
}
void len()
{
	memset(l,0,sizeof(l));
	for (int i=5;i<=13;i++)
	for (int j=5;j<=13;j++)
	 zb(i,j);
}
void AI()
{
	int x=0,y=0,m=0,n=0;
	len();
	bool yyy=false;
	for (int i=5;i<=13;i++)
	for (int j=5;j<=13;j++)
	{
		if ((yyy==false)&&(qp[i][j]==0)) 
		 if (l[i][j][1]>m)
		  {x=i;y=j;m=l[i][j][1];n=l[i][j][2];}
		  else
		  if (l[i][j][1]==m&&l[i][j][2]>n)
		  {x=i;y=j;m=l[i][j][1];n=l[i][j][2];}
	}
	qp[x][y]=2;
	if (check()==true) 
   {
   	cs=1;
   	clrscr();dr();
   	printf("AI胜利！");getch();
   	printf("棋局记录：\n");
		for (int i=1;i<=jlzz;i++)
		{
			printf("X:%d Y:%d\n",jl[i][1],jl[i][2]);
		}
		getch();
					exit(0);
   }
}
void dr()
{
    clrscr();
	if (cs==0) printf("当前出手:【玩家】    棋子图标:○\n"); else printf("当前出手:【 AI 】    棋子图标:×\n");
	printf("0-1-2-3-4-5-6-7-8-9--->(y)\n");
	int k=0;
	for (int i=5;i<=13;i++)
	{
		k++;
		printf("%d",k);
		for (int j=5;j<=13;j++)
		{
			switch(qp[i][j])
			{
				case 0:printf("■");break;
			    case 1:printf("○");break;
			    case 2:printf("×");break;
			}
		}
		printf("\n");
	}   	
}
void jc()
{
	bool mp=true;
	for (int i=5;i<=13;i++)
	{
		for (int j=5;j<=13;j++)
		{
			if (qp[i][j]==0) mp=false;
			if (qp[i][j]==1)
			{
				if ((qp[i][j]==qp[i+1][j])&&(qp[i+1][j]==qp[i+2][j])&&(qp[i+2][j]==qp[i+3][j])&&(qp[i+3][j]==qp[i+4][j]))           //  |
				{
					clrscr();dr();printf("玩家胜利！");getch();clrscr();
		            printf("棋局记录：\n");
	            	for (int i=1;i<=jlzz;i++)
	            	{
	            		printf("X:%d Y:%d\n",jl[i][1],jl[i][2]);
	            	}
	            	getch();
	            	exit(0);
				}
				if ((qp[i][j]==qp[i+1][j+1])&&(qp[i+1][j+1]==qp[i+2][j+2])&&(qp[i+2][j+2]==qp[i+3][j+3])&&(qp[i+3][j+3]==qp[i+4][j+4]))   //  `
				{
					clrscr();dr();printf("玩家胜利！");getch();
					printf("棋局记录：\n");
		for (int i=1;i<=jlzz;i++)
		{
			printf("X:%d Y:%d\n",jl[i][1],jl[i][2]);
		}
		getch();
					exit(0);
				}
				if ((qp[i][j]==qp[i][j+1])&&(qp[i][j+1]==qp[i][j+2])&&(qp[i][j+2]==qp[i][j+3])&&(qp[i][j+3]==qp[i][j+4]))           //  — 
				{
					clrscr();dr();printf("玩家胜利！");getch();
					printf("棋局记录：\n");
		for (int i=1;i<=jlzz;i++)
		{
			printf("X:%d Y:%d\n",jl[i][1],jl[i][2]);
		}
		getch();
					exit(0);
				}
				if  ((qp[i][j]==qp[i-1][j+1])&&(qp[i-1][j+1]==qp[i-2][j+2])&&(qp[i-2][j+2]==qp[i-3][j+3])&&(qp[i-3][j+3]==qp[i-4][j+4]))   //  /
				{
					clrscr();dr();printf("玩家胜利！");getch();
					printf("棋局记录：\n");
		for (int i=1;i<=jlzz;i++)
		{
			printf("X:%d Y:%d\n",jl[i][1],jl[i][2]);
		}
		getch();
					exit(0);
				}
			}
		    if (qp[i][j]==2)
			{
				if ((qp[i][j]==qp[i+1][j])&&(qp[i+1][j]==qp[i+2][j])&&(qp[i+2][j]==qp[i+3][j])&&(qp[i+3][j]==qp[i+4][j]))           //  |
				{
					clrscr();dr();printf("AI胜利！");getch();
					printf("棋局记录：\n");
		for (int i=1;i<=jlzz;i++)
		{
			printf("X:%d Y:%d\n",jl[i][1],jl[i][2]);
		}
		getch();
					exit(0);
				}
				if ((qp[i][j]==qp[i+1][j+1])&&(qp[i+1][j+1]==qp[i+2][j+2])&&(qp[i+2][j+2]==qp[i+3][j+3])&&(qp[i+3][j+3]==qp[i+4][j+4]))  //  `
				{
					clrscr();dr();printf("AI胜利！");getch();
					printf("棋局记录：\n");
		for (int i=1;i<=jlzz;i++)
		{
			printf("X:%d Y:%d\n",jl[i][1],jl[i][2]);
		}
		getch();
					exit(0);
				}
				if ((qp[i][j]==qp[i][j+1])&&(qp[i][j+1]==qp[i][j+2])&&(qp[i][j+2]==qp[i][j+3])&&(qp[i][j+3]==qp[i][j+4]))           //  — 
				{
					clrscr();dr();printf("AI胜利！");getch();
					printf("棋局记录：\n");
		for (int i=1;i<=jlzz;i++)
		{
			printf("X:%d Y:%d\n",jl[i][1],jl[i][2]);
		}
		getch();
					exit(0);
				}
				if  ((qp[i][j]==qp[i-1][j+1])&&(qp[i-1][j+1]==qp[i-2][j+2])&&(qp[i-2][j+2]==qp[i-3][j+3])&&(qp[i-3][j+3]==qp[i-4][j+4]))   //  /
				{
					clrscr();dr();printf("AI胜利！");getch();
					printf("棋局记录：\n");
		for (int i=1;i<=jlzz;i++)
		{
			printf("X:%d Y:%d\n",jl[i][1],jl[i][2]);
		}
		getch();
					exit(0);
				}
			}
		}
	}
	if (mp==true) 
	{
		printf("平局……");
		getch();
		clrscr();
		printf("棋局记录：\n");
		for (int i=1;i<=jlzz;i++)
		{
			printf("X:%d Y:%d\n",jl[i][1],jl[i][2]);
		}
		getch();
		exit(0);
	}
	dr();
	printf("AI正在思考中……");
	Sleep(500);
	doo=false;AI();
}
void draw()
{
	x=0,y=0;
	bool kk=true;
	while (kk==true)
	{
	clrscr();
	if (cs==0) printf("当前出手:【玩家】    棋子图标:○\n"); else printf("当前出手:【 AI 】    棋子图标:×\n");
	printf("0-1-2-3-4-5-6-7-8-9--->(y)\n");
	int k=0;
	for (int i=5;i<=13;i++)
	{
		k++;
		printf("%d",k);
		for (int j=5;j<=13;j++)
		{
			switch(qp[i][j])
			{
				case 0:printf("■");break;
			    case 1:printf("○");break;
			    case 2:printf("×");break;
			}
		}
		printf("\n");
	}
	printf("(x)\n\n");
	printf("上局AI出手：X:%d Y:%d\n",aix,aiy);
	printf("请输入下一个棋子坐标([x,y])用回车或空格分开:\n");	
	scanf("%d%d",&x,&y);
	jlzz++;
	jl[jlzz][1]=x;jl[jlzz][2]=y;
	if (qp[x+4][y+4]==0) kk=false;
	else 
	  {  
		clrscr();
		printf("该坐标上已经放置了棋子！");
		getch();
 	  }
    }
	qp[x+4][y+4]=1;
	jc();
}
int main()
{
	system("color 07");
	memset(jl,0,sizeof(jl));
	memset(qp,0,sizeof(qp));
	printf("欢迎体验五子棋AI对战版(菜鸟级别)！    注: Made by 胡福平\n");
	printf("注：游戏中你需要输入你希望将棋放置在的坐标（该坐标不同于几何坐标）实现放置棋子，并且AI会对其作出回应\n");
	printf("回车进入快速游戏\n");
	getchar();
	while (true)
	{
	draw();
    }
	getch();
	return 0;
}
