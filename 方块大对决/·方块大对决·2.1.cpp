#include<iostream>
#include<string>
#include<cstdio>
#include <time.h>  
#include<cstdlib>
#include<conio.h>
#include<windows.h>
#define cls system("cls")
using namespace std;
void zjm();void yi();void er();void san();void san_1(int);void si();void wu();void liu();void qi();
char ch;
int yx[4];
string yxtb[6],jz[9];
int jy,yy,sj;
/////////////////////////////////////////////
void draw();void gettime();
bool FIRST=true;
bool SX1=false,SX2=false;
string dt[10][10],jjz[10];
int dl[10][10]={0};
int xysj[301],xyz;
bool xy[10][10]={false};
bool xyy1,xyy2,xyy3,xyj1,xyj2,xyj3;
int i1,i2,j1,j2,x1=1000,x2=1000;
bool bt=false,ys=false,ysjn,jn1[4],jn2[4],pg1,pg2,jn11;
bool pd=false,fs=false,fsjn=false,dljn=false,tcjn=false;
int fsjnsj,fssj;
int jnsj1[4],jnsj2[4],pgsj1,pgsj2;
int sy2sj,sy3sj,sy5sj,syksj,synsj,Isysj;
bool hlj=false,hly=false;
int syhljsj,syhlysj,xyj1sj,xyj2sj,xyy1sj,xyy2sj;
int kssj,cxsj;
SYSTEMTIME sys;
////////////////////////////////////////////
void gettime()
{
GetLocalTime( &sys);
sj=(sys.wHour*60*60+sys.wMinute*60+sys.wSecond)*100+sys.wMilliseconds;
if ((sj-pgsj1>=100)&&(pg1==false)) {pgsj1=sj;pg1=true;pd=true;draw();}
if ((sj-pgsj2>=100)&&(pg2==false)) {pgsj2=sj;pg2=true;pd=true;draw();}
///////
if (((cxsj-syksj)/100%60>=5)&&(dljn==false)) {dljn=true;pd=true;draw();}
if (((cxsj-synsj)/100%60>=10)&&(tcjn==false)) {tcjn=true;pd=true;draw();}
if (((cxsj-Isysj)/100%60>=10)&&(ys==true)) {ys=false;pd=true;draw();}
if (((cxsj-Isysj)/100%60>=30)&&(ysjn==false)) {ysjn=true;pd=true;draw();}
///////
if (((cxsj-sy2sj)/100%60>=5)&&(jn11==false)) {jn11=true;pd=true;draw();}
if (((cxsj-sy3sj)/100%60>=10)&&(bt==false)) {bt=true;pd=true;draw();}
if (((cxsj-sy5sj)/100%60>=30)&&(fsjn==false)) {fsjn=true;pd=true;draw();}
if (((cxsj-sy5sj)/100%60>=8)&&(fs==true)) {fs=false;pd=true;draw();}
//////
if (((cxsj-syhljsj)/100%60>=10)&&(hlj==true)) {hlj=false;pd=true;draw();}
if (((cxsj-syhlysj)/100%60>=10)&&(hly==true)) {hly=false;pd=true;draw();}
if (((cxsj-xyj1sj)/100%60>=3)&&(xyj1==true)) {xyj1=false;pd=true;draw();}
if (((cxsj-xyj2sj)/100%60>=3)&&(xyj2==true)) {xyj2=false;pd=true;draw();}
if (((cxsj-xyy1sj)/100%60>=3)&&(xyy1==true)) {xyy1=false;pd=true;draw();}
if (((cxsj-xyy2sj)/100%60>=3)&&(xyy2==true)) {xyy2=false;pd=true;draw();}
if ((sj-kssj-100)>=cxsj) {cxsj=sj-kssj;pd=true;draw();}
if ((cxsj)>=30000) 
{
	if (x1<x2) {x1=0;printf("玩家2胜利！");getchar();;zjm();}
	else
	if (x2<x1) {x2=0;printf("玩家1胜利！");getchar();zjm();}
	else
	{cout<<"平局~";getchar();zjm();}
} 
}
void draw()
{
{
	cls;
	cout<<"已经开局:"<<cxsj/6000<<"分钟"<<(cxsj/100) %60<<"秒"<<endl;
	if (x1<=0) {x1=0;}
	if (x2<=0) {x2=0;}
	for (int i=1;i<=9;i++)
	{
		for (int j=1;j<=9;j++) 
		{if ((i1==i)&&(j1==j)) {if ((jy==1)) {if (!ys) printf("▲");else cout<<dt[i][j];} if(jy==2) printf("●");}
		 else if ((i2==i)&&(j2==j)) {if ((yy==1)) {if (!ys) printf("▲");else cout<<dt[i][j];}if(yy==2) printf("●");}
		 else 
		 {
		 if (!xy[i][j]) cout<<dt[i][j];else cout<<"§";
	     }
        }
		printf("\n");
	}
	if (xyj1) printf("玩家一获得神的祝福，血量回满！\n");
	if (xyy1) printf("玩家二获得神的祝福，血量回满！\n");
	if (xyj2) printf("玩家一获得神的祝福，冷却刷新！\n");
	if (xyy2) printf("玩家二获得神的祝福，冷却刷新！\n");
	if (hlj) printf("玩家一陷入混乱！\n");
	if (hly) printf("玩家二陷入混乱！\n");
	if (ys==true) 
	{if (jy==1) printf("玩家1进入回血状态！\n");else printf("玩家2进入回血状态！\n");}
	if (fs==true) 
	{if (yy==2) printf("玩家2进入反伤状态！\n");else printf("玩家1进入反伤状态！\n");}
	printf("玩家1血量:%000d  ",x1);
	cout<<endl;
	for (int i=1;i<=x1/100;i++) cout<<"■"; cout<<jjz[(x1%100)/10]<<endl;
	if (jy==1)
	{ 
	printf("玩家1地雷情况:");if(dljn==true) printf("可使用   ");else printf("还剩%d秒   ",5-(cxsj-syksj)/100%60);
	cout<<"突刺情况:";if(tcjn==true) printf("可使用   ");else printf("还剩%d秒    ",10-(cxsj-synsj)/100%60);
	printf("大.隐身情况:");if(ysjn==true) printf("可使用\n");else printf("还剩%d秒\n",30-(cxsj-Isysj)/100%60);
	cout<<endl; 
    }
    else
    {
	printf("玩家1瞬移情况:");if(jn11==true) printf("可使用   ");else printf("还剩%d秒   ",5-(cxsj-sy2sj)/100%60);
	cout<<"霸体情况:";if(bt==true) printf("可使用   ");else printf("还剩%d秒    ",10-(cxsj-sy3sj)/100%60);
	cout<<"大.反伤情况:";if(fsjn==true) printf("可使用\n");else printf("还剩%d秒\n",30-(cxsj-sy5sj)/100%60);
	cout<<endl;
	}
	printf("玩家2血量:%000d  ",x2);
	cout<<endl;
	for (int i=1;i<=x2/100;i++) cout<<"■"; cout<<jjz[(x2%100)/10]<<endl;
	if (yy==2)
	{
	printf("玩家2瞬移情况:");if(jn11==true) printf("可使用   ");else printf("还剩%d秒   ",5-(cxsj-sy2sj)/100%60);
	cout<<"霸体情况:";if(bt==true) printf("可使用   ");else printf("还剩%d秒    ",10-(cxsj-sy3sj)/100%60);
	cout<<"大.反伤情况:";if(fsjn==true) printf("可使用\n");else printf("还剩%d秒\n",30-(cxsj-sy5sj)/100%60);
    }
    else
    {
	printf("玩家2地雷情况:");if(dljn==true) printf("可使用   ");else printf("还剩%d秒   ",5-(cxsj-syksj)/100%60);
	cout<<"突刺情况:";if(tcjn==true) printf("可使用   ");else printf("还剩%d秒    ",10-(cxsj-synsj)/100%60);
	printf("大.隐身情况:");if(ysjn==true) printf("可使用\n");else printf("还剩%d秒\n",30-(cxsj-Isysj)/100%60);
	}
	if (x1<=0) {x1=0;printf("玩家2胜利！");getchar();zjm();}
	if (x2<=0) {x2=0;printf("玩家1胜利！");getchar();zjm();}
}}
void zjm()
{
	while(1==1)
	{
	cls;
	FIRST=true;
	printf("【1.双人战斗】      【2.人机战斗】      【3.英雄酒店】      【4.更换英雄】\n【5.英雄详情】      【6.操作指南】      【7.开发团队】      【9.退出游戏】\n");
    ch=getch();
    switch (ch)
    {
    	case '1':yi();break;
    	case '2':er();break;
    	case '3':san();break;
    	case '4':si();break;
    	case '5':wu();break;
    	case '6':liu();break;
    	case '7':qi();break;
    	case '9':exit(0);
	}
    }
}
void yi()  //双人战斗 
{
    x1=1000;x2=1000;pg1=true;pg2=true;jn11=true;ysjn=true;bt=true;fsjn=true;dljn=true;tcjn=true;fs=false;xyz=0;ys=false;
    xyy1=false;xyy2=false;xyj1=false;xyj2=false;
    memset(dl,0,sizeof(dl));
    memset(xy,false,sizeof(xy));
    memset(xysj,false,sizeof(xysj));
	jjz[1]="▏";jjz[2]="▎";jjz[3]="▍";jjz[4]="▌";
	jjz[5]="▋";jjz[6]="▊";jjz[7]="▉";jjz[0]=" ";
	jjz[8]="■";jjz[9]="■";
	yxtb[1]="▲";yxtb[2]="●";yxtb[3]="◆";yxtb[4]="■";yxtb[5]="★";
	jz[1]="▏";jz[2]="▎";jz[3]="▍";jz[4]="▌";
	jz[5]="▋";jz[6]="▊";jz[7]="▉";jz[0]=" ";
	for (int i=1;i<=9;i++)
	for (int j=1;j<=9;j++) dt[i][j]="□";
	dt[2][3]="■";dt[2][7]="■";dt[3][2]="■";dt[3][3]="■";dt[3][5]="■";
	dt[3][7]="■";dt[3][8]="■";dt[4][5]="■";dt[5][3]="■";dt[5][4]="■";
	dt[5][5]="■";dt[5][6]="■";dt[5][7]="■";dt[6][5]="■";dt[7][2]="■";
	dt[7][3]="■";dt[7][5]="■";dt[7][7]="■";dt[7][8]="■";dt[8][3]="■";
	dt[8][7]="■";
	dt[1][4]="∷";dt[1][5]="∷";dt[1][6]="∷";dt[2][4]="∷";dt[2][5]="∷";dt[2][6]="∷";
	dt[8][4]="∷";dt[8][5]="∷";dt[8][6]="∷";dt[9][4]="∷";dt[9][5]="∷";dt[9][6]="∷";
	i1=1;j1=5;i2=9;j2=5;
	cls;
	cout<<"请选择双方英雄(注:无法选择同一英雄):"<<endl;
	cout<<"玩家一: 【Q.▲】   【W.●】"<<endl;
	cout<<"玩家二：【1.▲】   【2.●】"<<endl;
	bool wyxz=false,wexz=false;
	do
	{
		char sl=getch();
		switch(sl)
		{
			case 'Q':{
				jy=1;wyxz=true;
				break;
			}
			case 'W':{
				jy=2;wyxz=true;
				break;
			}
			case '1':{
				yy=1;wexz=true;
				break;
			}
			case '2':{
				yy=2;wexz=true;
				break;
			}
		}
	}
	while ((wyxz==false)||(wexz==false)||(jy==yy));
	cout<<"选择完毕，玩家一:"<<yxtb[jy]<<"玩家二:"<<yxtb[yy]<<endl;
	Sleep(1000);
	if (FIRST)
	{
    cxsj=0;
    GetLocalTime( &sys);
    kssj=(sys.wHour*60*60+sys.wMinute*60+sys.wSecond)*100+sys.wMilliseconds;
    FIRST=false;
	}
    gettime();
    draw();
	char sl;
	while (true)
	{
	if (xy[i1][j1]) 
	{
		xyz=0;
		xy[i1][j1]=false;
		switch(rand()%4)
		{
			case 1:{
				x1=1000;
				xyj1sj=cxsj;
				xyj1=true;
				break;
			}
			case 2:{
				if (jy==1)
				{dljn=true;ysjn=true;tcjn=true;}
				else
				{jn11=true;bt=true;fsjn=true;}
				xyj2sj=cxsj;
				xyj2=true;
				break;
			}
			case 3:{
				xyj3=true;
				syhlysj=cxsj;
			    hly=true;
			    draw();
				break;
			}
		}
	}
	if (xy[i2][j2]) 
	{
		xyz=0;
		xy[i2][j2]=false;
		switch(rand()%4)
		{
			case 1:{
				x2=1000;
				xyy1sj=cxsj;
				xyy1=true;
				break;
			}
			case 2:{
				if (yy==2)
			    {jn11=true;bt=true;fsjn=true;}
			    else
			    {dljn=true;ysjn=true;tcjn=true;}
			    xyy2sj=cxsj;
			    xyy2=true;
				break;
			}
			case 3:{
				xyy3=true;
				syhljsj=cxsj;
			    hlj=true;
			    draw();
				break;
			}
		}
	}
	int xxx,yyy;
	if ((((cxsj/100) %60==0)||((cxsj/100) %60==30))&&(xysj[(cxsj/100)/30]==false)&&((cxsj/100)/30>0)&&(xyz==0));
	{
		xysj[(cxsj/100)/30]=true;
		do
		{
			xxx=rand()%10,yyy=rand()%10;
		}while((dt[xxx][yyy]!="□")&&(xy[xxx][yyy]==false));
	}	
	if (xyz==0) {xy[xxx][yyy]=true;xyz=xyz+1;}
	if(jy==1)
	{ 
	if (dl[i2][j2]>0) 
	{
	dt[i2][j2]="※";
	if(!fs) {x2=x2-rand()%(100*dl[i2][j2])-200*dl[i2][j2];dl[i2][j2]=0;draw();}
	else {
	x1=x1-rand()%(100*dl[i2][j2])-200*dl[i2][j2];
	x2=x2-(rand()%(100*dl[i2][j2])-200*dl[i2][j2])/4;
	dl[i2][j2]=0;draw();}
    }
    }
    else
    {
	if (dl[i1][j1]>0) 
	{
	dt[i1][j1]="※";
	if(!fs) {x1=x1-rand()%(100*dl[i1][j1])-200*dl[i1][j1];dl[i1][j1]=0;draw();}
	else {
	x2=x2-rand()%(100*dl[i1][j1])-200*dl[i1][j1];
	x1=x1-(rand()%(100*dl[i1][j1])-200*dl[i1][j1])/4;
	dl[i1][j1]=0;draw();}
    }
	}
	if ((abs(i2-9)<=1)&&(abs(j2-5)<=1)&&(x2<1000)) {x2=x2+rand()%5;if (x2>1000) x2=1000;draw();}
	if (((abs(i2-1)<=1)&&(abs(j2-5)<=1))||(dt[i2][j2]=="※")) 
	{if (jy==1) {if (!fs) x2=x2-rand()%5;else {x1=x1-(rand()%5);x2=x2-(rand()%5)/4;}draw();}} 
	if (((abs(i1-9)<=1)&&(abs(j1-5)<=1))||(dt[i2][j2]=="※")) 
	{if (yy==1) {if (!fs) x1=x1-rand()%5;else {x2=x2-(rand()%5);x1=x1-(rand()%5)/4;}draw();}} 
	if ((abs(i1-1)<=1)&&(abs(j1-5)<=1)&&(x1<1000)) {x1=x1+rand()%5;if (x1>1000) x1=1000;draw();}
	if (ys) {if (jy==1) {x1=x1+rand()%5;if (x1>1000) x1=1000;draw();}if (yy==1) {x2=x2+rand()%5;if (x2>1000) x2=1000;draw();}}
	gettime();
	if (pd==true) {draw();pd=false;}
	if (kbhit()) 
	{
	sl=getch();
	switch(sl)
	{
		case 'W':{
			if (hlj) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((j1>1)&&(dt[i1][j1-1]!="■")&&((i1!=i2)||(j1-1!=j2))) {j1--;draw();}
						break;
					}
					case 2:{
			if ((i1<9)&&(dt[i1+1][j1]!="■")&&((i1+1!=i2)||(j1!=j2))) {i1++;draw();}
						break;
					}
					case 3:{
			if ((j1<9)&&(dt[i1][j1+1]!="■")&&((i1!=i2)||(j1+1!=j2))) {j1++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX1)&&(i1>1)&&(dt[i1-1][j1]!="■")&&((i1-1!=i2)||(j1!=j2))) {i1--;draw();}
			if (SX1&&((i1>2)&&(dt[i1-2][j1]!="■")&&((i1-2!=i2)||(j1!=j2)))) {i1-=2;SX1=false;draw();}
			break;
		}
		case 'A':{
			if (hlj) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="■")&&((i1-1!=i2)||(j1!=j2))) {i1--;draw();}
						break;
					}
					case 2:{
			if ((i1<9)&&(dt[i1+1][j1]!="■")&&((i1+1!=i2)||(j1!=j2))) {i1++;draw();}
						break;
					}
					case 3:{
			if ((j1<9)&&(dt[i1][j1+1]!="■")&&((i1!=i2)||(j1+1!=j2))) {j1++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX1)&&(j1>1)&&(dt[i1][j1-1]!="■")&&((i1!=i2)||(j1-1!=j2))) {j1--;draw();}
			if (SX1&&((j1>2)&&(dt[i1][j1-2]!="■")&&((i1!=i2)||(j1-2!=j2)))) {j1-=2;SX1=false;draw();}
			break;
		}	
		case 'S':{
			if (hlj) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="■")&&((i1-1!=i2)||(j1!=j2))) {i1--;draw();}
						break;
					}
					case 2:{
			if ((j1>1)&&(dt[i1][j1-1]!="■")&&((i1!=i2)||(j1-1!=j2))) {j1--;draw();}
						break;
					}
					case 3:{
			if ((j1<9)&&(dt[i1][j1+1]!="■")&&((i1!=i2)||(j1+1!=j2))) {j1++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX1)&&(i1<9)&&(dt[i1+1][j1]!="■")&&((i1+1!=i2)||(j1!=j2))) {i1++;draw();}
			if (SX1&&((i1<8)&&(dt[i1+2][j1]!="■")&&((i1+2!=i2)||(j1!=j2)))) {i1+=2;SX1=false;draw();}
			break;
		}	
		case 'D':{
			if (hlj) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="■")&&((i1-1!=i2)||(j1!=j2))) {i1--;draw();}
						break;
					}
					case 2:{
			if ((j1>1)&&(dt[i1][j1-1]!="■")&&((i1!=i2)||(j1-1!=j2))) {j1--;draw();}
						break;
					}
					case 3:{
			if ((i1<9)&&(dt[i1+1][j1]!="■")&&((i1+1!=i2)||(j1!=j2))) {i1++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX1)&&(j1<9)&&(dt[i1][j1+1]!="■")&&((i1!=i2)||(j1+1!=j2))) {j1++;draw();}
			if (SX1&&((j1<8)&&(dt[i1][j1+2]!="■")&&((i1!=i2)||(j1+2!=j2)))) {j1+=2;SX1=false;draw();}
			break;
		}
		case 72:{
			if (hly) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((j2>1)&&(dt[i2][j2-1]!="■")&&((i2!=i1)||(j2-1!=j1))) {j2--;draw();}
						break;
					}
					case 2:{
			if ((i2<9)&&(dt[i2+1][j2]!="■")&&((i2+1!=i1)||(j2!=j1))) {i2++;draw();}
						break;
					}
					case 3:{
			if ((j2<9)&&(dt[i2][j2+1]!="■")&&((i2!=i1)||(j2+1!=j1))) {j2++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX2)&&(i2>1)&&(dt[i2-1][j2]!="■")&&((i2-1!=i2)||(j2!=j1))) {i2--;draw();}
			if (SX2&&((i2>2)&&(dt[i2-2][j2]!="■")&&((i2-2!=i2)||(j2!=j1)))) {i2-=2;SX2=false;draw();}
			break;
		}
		case 75:{
			if (hly) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="■")&&((i1-1!=i1)||(j1!=j2))) {i2--;draw();}
						break;
					}
					case 2:{
			if ((i2<9)&&(dt[i2+1][j2]!="■")&&((i2+1!=i1)||(j2!=j1))) {i2++;draw();}
						break;
					}
					case 3:{
			if ((j2<9)&&(dt[i2][j2+1]!="■")&&((i2!=i1)||(j2+1!=j1))) {j2++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX2)&&(j2>1)&&(dt[i2][j2-1]!="■")&&((i2!=i1)||(j2-1!=j1))) {j2--;draw();}
			if (SX2&&((j2>2)&&(dt[i2][j2-2]!="■")&&((i2!=i1)||(j2-2!=j1)))) {j2-=2;SX2=false;draw();}
			break;
		}
		case 80:{
			if (hly) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="■")&&((i1-1!=i1)||(j1!=j2))) {i1--;draw();}
						break;
					}
					case 2:{
			if ((j2>1)&&(dt[i2][j2-1]!="■")&&((i2!=i1)||(j2-1!=j1))) {j2--;draw();}
						break;
					}
					case 3:{
			if ((j2<9)&&(dt[i2][j2+1]!="■")&&((i2!=i1)||(j2+1!=j1))) {j2++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX2)&&(i2<9)&&(dt[i2+1][j2]!="■")&&((i2+1!=i1)||(j2!=j1))) {i2++;draw();}
			if (SX2&&((i2<8)&&(dt[i2+2][j2]!="■")&&((i2+2!=i1)||(j2!=j1)))) {i2+=2;SX2=false;draw();}
			break;
		}
		case 77:{
			if (hly) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="■")&&((i1-1!=i1)||(j1!=j2))) {i1--;draw();}
						break;
					}
					case 2:{
			if ((j2>1)&&(dt[i2][j2-1]!="■")&&((i2!=i1)||(j2-1!=j1))) {j2--;draw();}
						break;
					}
					case 3:{
			if ((i2<9)&&(dt[i2+1][j2]!="■")&&((i2+1!=i1)||(j2!=j1))) {i2++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX2)&&(j2<9)&&(dt[i2][j2+1]!="■")&&((i2!=i1)||(j2+1!=j1))) {j2++;draw();}
			if (SX2&&((j2<8)&&(dt[i2][j2+2]!="■")&&((i2!=i1)||(j2+2!=j1)))) {j2+=2;SX2=false;draw();}
			break;
		}
	    case 'V':{
	    	if ((abs(i2-i1)<=1)&&(abs(j2-j1)<=1)) 
			if (pg1==true) {pg1=false;x2=x2-rand()%50-10;draw();}
	    	break;
		}
		case 'B':{
			if (jy==1)
			{
			if (dljn==true)
			{
			dl[i1][j1]=dl[i1][j1]+1;
			dljn=false;
            syksj=cxsj;
			draw();
		    }
		    }
		    else
		    if (jy==2)
		    {
			if ((jn11==true)) 
            {
            jn11=false;
            sy2sj=cxsj;
			if ((dt[i2-1][j2-1]!="■")&&(i2-1>=1)&&(j2-1>=1)) {i1=i2-1;j1=j2-1;}
			else
			if ((dt[i2-1][j2]!="■")&&(i2-1>=1)) {i1=i2-1;j1=j2;}
			else
			if ((dt[i2-1][j2+1]!="■")&&(i2-1>=1)&&(j2+1<=9)) {i1=i2-1;j1=j2+1;}
			else
			if ((dt[i2][j2-1]!="■")&&(j2-1>=1)) {i1=i2;j1=j2-1;}
			else
			if ((dt[i2][j2+1]!="■")&&(j2+1<=9)) {i1=i2;j1=j2+1;}
			else
			if ((dt[i2+1][j2-1]!="■")&&(i2+1<=9)&&(j2-1>=1)) {i1=i2+1;j1=j2-1;}
			else
			if ((dt[i2+1][j2]!="■")&&(i2+1<=9)) {i1=i2+1;j1=j2;}
			else
			if ((dt[i2+1][j2+1]!="■")&&(i2+1<=9)&&(j2+1<=9)) {i1=i2+1;j1=j2+1;}
			draw();
			}
			}
			break;
		}
		case '1':{
	    	if ((abs(i2-i1)<=1)&&(abs(j2-j1)<=1)) 
			if (pg2==true) {pg2=false;x1=x1-rand()%50-10;draw();}
			break;
		}
		case '2':{
			if (yy==2)
			{
			if ((jn11==true)) 
            {
            jn11=false;
            sy2sj=cxsj;
			if ((dt[i1-1][j1-1]!="■")&&(i1-1>=1)&&(j1-1>=1)) {i2=i1-1;j2=j1-1;}
			else
			if ((dt[i1-1][j1]!="■")&&(i1-1>=1)) {i2=i1-1;j2=j1;}
			else
			if ((dt[i1-1][j1+1]!="■")&&(i1-1>=1)&&(j1+1<=9)) {i2=i1-1;j2=j1+1;}
			else
			if ((dt[i1][j1-1]!="■")&&(j1-1>=1)) {i2=i1;j2=j1-1;}
			else
			if ((dt[i1][j1+1]!="■")&&(j1+1<=9)) {i2=i1;j2=j1+1;}
			else
			if ((dt[i1+1][j1-1]!="■")&&(i1+1<=9)&&(j1-1>=1)) {i2=i1+1;j2=j1-1;}
			else
			if ((dt[i1+1][j1]!="■")&&(i1+1<=9)) {i2=i1+1;j2=j1;}
			else
			if ((dt[i1+1][j1+1]!="■")&&(i1+1<=9)&&(j1+1<=9)) {i2=i1+1;j2=j1+1;}
			draw();
			}
		    }
		    else
		    if (yy==1)
		    {
			if (dljn==true)
			{
			dl[i2][j2]=dl[i2][j2]+1;
			dljn=false;
            syksj=cxsj;
			draw();
		    }
			}
			break;
		}
		case 'G':{
			if (jy==1)
			{
			if (ysjn==true)
			{
			ysjn=false;
            Isysj=cxsj;
			ys=true;
			draw();
		    }
		    }
		    else
		    if (jy==2)
		    {
			if (fsjn==true)
			{
			fsjn=false;
            sy5sj=cxsj;
			fs=true;
			draw();
		    }
			}
			break;
		}
		case '3':{
			if (yy==2)
			{
	    	if ((abs(i2-i1)<=1)&&(abs(j2-j1)<=1)) 
			if (bt==true)
			{
			bt=false;
            sy3sj=cxsj;
			if (i2>=i1)
		    {
		    	if(j2>=j1) {i1=1;j1=1;}
		    	else {i1=1;j1=9;}
			}
			else
			if (j2>=j1) {i1=9;j1=1;}
			else {i1=9;j1=9;}
			x1=x1-rand()%200-100;
			draw();
		    }
		    }
		    else
		    if (yy==1)
		    {
	    	if ((tcjn==true)&((i1==i2)||(j1==j2)))
			{
			tcjn=false;
            synsj=cxsj;
			if (i1==i2)
			{
				if ((i1!=3)&&(i1!=7))
				if(j2>=j1) {if (!fs) x1=x1-((rand()%50)*j1);else {x1=x1-((rand()%50)*j1)/4;x2=x2-((rand()%50)*j1);}j2=2;j1=1;}
				else {if (!fs) x1=x1-((rand()%50)*(9-j1));else {x1=x1-((rand()%50)*(9-j1))/4;x2=x2-((rand()%50)*(9-j1));}j2=8;j1=9;}
			}
			else
			if ((j1!=3)&&(j1!=7))
			{
				if(i2>=i1) {if (!fs) x1=x1-((rand()%50)*i1);else {x1=x1-((rand()%50)*i1)/4;x2=x2-((rand()%50)*i1);}i2=2;i1=1;}
				else {if (!fs) x1=x1-((rand()%50)*(9-i1));else {x1=x1-((rand()%50)*(9-i1))/4;x2=x2-((rand()%50)*(9-i1));}i2=8;i1=9;}
			}
			draw();
		    }
			}
			break;
		}
		case '5':{
			if (yy==2)
			{
			if (fsjn==true)
			{
			fsjn=false;
            sy5sj=cxsj;
			fs=true;
			draw();
		    }
		    }
		    else
		    if (yy==1)
		    {
			if (ysjn==true)
			{
			ysjn=false;
            Isysj=cxsj;
			ys=true;
			draw();
		    }
			}
			break;
		}
	    case 'N':{
	    	if (jy==1)
	    	{
	    	if ((tcjn==true)&((i1==i2)||(j1==j2)))
			{
			tcjn=false;
            synsj=cxsj;
			if (i1==i2)
			{
				if ((i1!=3)&&(i1!=7))
				if(j1>=j2) {if (!fs) x2=x2-((rand()%50)*j2);else {x2=x2-((rand()%50)*j2)/4;x1=x1-((rand()%50)*j2);}j1=2;j2=1;}
				else {if (!fs) x2=x2-((rand()%50)*(9-j2));else {x2=x2-((rand()%50)*(9-j2))/4;x1=x1-((rand()%50)*(9-j2));}j1=8;j2=9;}
			}
			else
			if ((j1!=3)&&(j1!=7))
			{
				if(i1>=i2) {if (!fs) x2=x2-((rand()%50)*i2);else {x2=x2-((rand()%50)*i2)/4;x1=x1-((rand()%50)*i2);}i1=2;i2=1;}
				else {if (!fs) x2=x2-((rand()%50)*(9-i2));else {x2=x2-((rand()%50)*(9-i2))/4;x1=x1-((rand()%50)*(9-i2));}i1=8;i2=9;}
			}
			draw();
		    }
		    }
		    else
		    if (jy==2)
		    {
	    	if ((abs(i2-i1)<=1)&&(abs(j2-j1)<=1)) 
			if (bt==true)
			{
			bt=false;
            sy3sj=cxsj;
			if (i1>=i2)
		    {
		    	if(j1>=j2) {i2=1;j2=1;}
		    	else {i2=1;j2=9;}
			}
			else
			if (j1>=j2) {i2=9;j2=1;}
			else {i2=9;j2=9;}
			x2=x2-rand()%200-100;
			draw();
		    }
			}
			break;
		}
        case 'F':{SX1=true;
			break;
		}
		case '4':{SX2=true;
			break;
		}
	}
	} 
	}	
} 
void er() //人机战斗 
{
	cls;
	cout<<"开发中……";
	getchar();
}
void san() //英雄酒店 
{
	cls;
	cout<<"开发中……";
	getchar();
	/*cls();
	cout<<"这里是英雄酒店，你可以在这里招募你喜欢的英雄哦~"<<endl;
	cout<<"此次可招募英雄："<<endl;
	do
	{
	for (int i=1;i<=3;i++)
	{yx[i]=rand()%5+1;}
    }while((yx[1]==yx[2])||(yx[1]==yx[3])||(yx[2]==yx[3]));
    cout<<"1."<<yxtb[yx[1]]<<"   "<<"2."<<yxtb[yx[2]]<<"   "<<"3."<<yxtb[yx[3]]<<endl;
    cout<<"9.【返回】" <<endl;
    ch=getch();
    switch(ch)
    {
    	case 1:{
		    san_1(yx[1]);
			break;
		}
		case 2:{
		    san_1(yx[2]);
			break;
		}
		case 3:{
		    san_1(yx[3]);
			break;
		}
	 }
	 */ 
}
void san_1(int x) //英雄酒店-英雄购买 
{
	cout<<"所选英雄:"<<yxtb[x]<<endl;
	switch(x)
	{
		case 1:{
			cout<<"1：技能一 烈焰暴雷"<<endl;
			cout<<"2: 技能二 狂暴突刺"<<endl;
			cout<<"3: 技能三 隐身回血"<<endl;
			cout<<"9:返回"<<endl; 
			cout<<"温馨提示：输入对应数字查询技能详情"<<endl;
			ch=getch();
			break;
		}
	}
}
void si() //更换英雄 
{
	cls;
	cout<<"开发中……";
	getchar();
}
void wu() //英雄详情
{
	do
	{
	cls;
	cout<<"输入对应数字查看英雄详情"<<endl;
	cout<<"【1.▲】      【2.●】      【3.★】      【9.返回】"<<endl;
	char sl=getch();
	switch(sl)
	{
		case '1':{
			cout<<"刺客级别英雄，来无影去无踪，杀人于无形，杀人手段惨无人道"<<endl<<endl;
			cout<<"B/2键释放地雷埋于脚下，只对敌人生效，并造成200点基础伤害+100点随机伤害（效果可叠加）"<<endl;
			cout<<"N/3键当敌人于自己同一竖行或同一纵列时，突进将敌人逼入墙角，并且敌人每移动一格造成随机50点伤害"<<endl;
			cout<<"G/5键使用大招，10秒内获得隐身效果，且持续恢复自身血量（仍受血量上限的限制）"<<endl;
			cout<<"【回车返回】"<<endl;
			getchar();
			break;
		}
		case '2':{
			cout<<"神行太保级别的英雄，继承了忍者瞬移的功法，危机时能够霸体将对手拒于千里外，更有反伤绝技"<<endl<<endl;
			cout<<"B/2键瞬移至敌人周围任意一格，虽不造成伤害，但这一技能更促使了其神一般的存在"<<endl;
			cout<<"N/3键开启霸体，如果敌方在自己所在九宫格周围的任意一格，将对敌人造成100点基础伤害+200点随机伤害,并将敌方弹至角落"<<endl;
			cout<<"G/5键使用大招，10秒内获得反伤护甲，期间仅损失少量血量，自己所受的攻击将反弹给敌人100%的真实伤害"<<endl;
			cout<<"【回车返回】"<<endl;
			getchar();
			break;
		}
		case '3':{
			cout<<"开发人员自定义的神（bian）级（tai）英雄，独一无二的四技操作，轻松助你成神！"<<endl<<endl;
			cout<<"B/2键闪现（可穿墙,穿英雄）至方向键移动方向，穿英雄还会对其造成200点随机伤害"<<endl;
			cout<<"N/3键使用勾魂爪,但凡敌方在玩家周围的方圆三格内，都将被勾到玩家附近一格，且造成100点随机伤害"<<endl;
			cout<<"F/4键向方向键放置一堵血量为玩家剩余血量10%的墙体，敌方只能使用普通攻击破坏墙体"<<endl;
			cout<<"G/5键使敌方中毒10秒，持续损失血量且无法在基地恢复血量" <<endl;
			cout<<"【回车返回】" <<endl;
			getchar();
			break;
		} 
		case '9':{
			zjm();
			break;
		}
	}
    }
	while(1==1);
}
void liu() //操作指南 
{
	do{
	cls;
	cout<<"【1.地图图示】      【2.键位提示】      【9.返回】" <<endl;
	char sl=getch();
	switch(sl)
	{
		case '1':{
			cout<<"■为墙体，玩家不可进入墙体；∷为双方出生地的标志，在此范围内可以持续回血；□为道路，可以走动放雷；"<<endl;
			cout<<"※为地雷爆炸后遗留的火区，双方经过时都会减少血量；§为幸运之神的礼物，走过可拾取并获得随机buff加成；"<<endl;
			cout<<"【回车返回】";
			getchar();
			break;
		}
		case '2':{
	    cout<<"玩家一的出生地在地图上方，大写锁定后使用W、A、S、D字母键移动，V、B、N、G字母键分别控制普攻，技能一，技能二，大招的使用，回到出生地可无限回血，进入敌方出生地将持续损血"<<endl<<endl;
	    cout<<"玩家二的出生地在地图上方，大写锁定后使用↑、↓、←、→方向键移动，1、2、3、4数字键分别控制普攻，技能一，技能二，大招的使用，回到出生地可无限回血，进入敌方出生地将持续损血"<<endl<<endl;
	    cout<<"战斗时间限时五分钟，在时间结束前先击败对手的玩家获胜，到达终止时间时，血量剩余量多者获胜。"<<endl;
	    cout<<"【回车返回】";
	    getchar();
			break;
		}
		case '9':{
			zjm();
			break;
		}
    }
    }while(1==1);
}
void qi()  //开发团队 
{
	cls;
	cout<<"开发团队成员:" <<endl;
	cout<<"归属地:FJCT  胡FP，黄ZW"<<endl;
	cout<<"交流Q群:634528767  胡FP:Q号:1461140541  黄ZW:Q号:1933006974"<<endl;
	cout<<"【回车返回】"<<endl;
	getchar();
	zjm();
}
int main()
{
	////初始化 
	srand((unsigned)time(NULL)); 
	jjz[1]="▏";jjz[2]="▎";jjz[3]="▍";jjz[4]="▌";
	jjz[5]="▋";jjz[6]="▊";jjz[7]="▉";jjz[0]=" ";
	jjz[8]="■";jjz[9]="■";
	yxtb[1]="▲";yxtb[2]="●";yxtb[3]="◆";yxtb[4]="■";yxtb[5]="★";
	jz[1]="▏";jz[2]="▎";jz[3]="▍";jz[4]="▌";
	jz[5]="▋";jz[6]="▊";jz[7]="▉";jz[0]=" ";
	for (int i=1;i<=9;i++)
	for (int j=1;j<=9;j++) dt[i][j]="□";
	dt[2][3]="■";dt[2][7]="■";dt[3][2]="■";dt[3][3]="■";dt[3][5]="■";
	dt[3][7]="■";dt[3][8]="■";dt[4][5]="■";dt[5][3]="■";dt[5][4]="■";
	dt[5][5]="■";dt[5][6]="■";dt[5][7]="■";dt[6][5]="■";dt[7][2]="■";
	dt[7][3]="■";dt[7][5]="■";dt[7][7]="■";dt[7][8]="■";dt[8][3]="■";
	dt[8][7]="■";
	dt[1][4]="∷";dt[1][5]="∷";dt[1][6]="∷";dt[2][4]="∷";dt[2][5]="∷";dt[2][6]="∷";
	dt[8][4]="∷";dt[8][5]="∷";dt[8][6]="∷";dt[9][4]="∷";dt[9][5]="∷";dt[9][6]="∷";
	i1=1;j1=5;i2=9;j2=5;
	////初始化 
	for (int i=1;i<=136;i++)
	{int x=i%8;Sleep(0.9);cls;printf("正在进入方块世界~    Loading···\n");for (int j=1;j<=i/8;j++) printf("■");cout<<jz[x];}
	Sleep(500);
	zjm();
	return 0;
}
