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
	if (x1<x2) {x1=0;printf("���2ʤ����");getchar();;zjm();}
	else
	if (x2<x1) {x2=0;printf("���1ʤ����");getchar();zjm();}
	else
	{cout<<"ƽ��~";getchar();zjm();}
} 
}
void draw()
{
{
	cls;
	cout<<"�Ѿ�����:"<<cxsj/6000<<"����"<<(cxsj/100) %60<<"��"<<endl;
	if (x1<=0) {x1=0;}
	if (x2<=0) {x2=0;}
	for (int i=1;i<=9;i++)
	{
		for (int j=1;j<=9;j++) 
		{if ((i1==i)&&(j1==j)) {if ((jy==1)) {if (!ys) printf("��");else cout<<dt[i][j];} if(jy==2) printf("��");}
		 else if ((i2==i)&&(j2==j)) {if ((yy==1)) {if (!ys) printf("��");else cout<<dt[i][j];}if(yy==2) printf("��");}
		 else 
		 {
		 if (!xy[i][j]) cout<<dt[i][j];else cout<<"��";
	     }
        }
		printf("\n");
	}
	if (xyj1) printf("���һ������ף����Ѫ��������\n");
	if (xyy1) printf("��Ҷ�������ף����Ѫ��������\n");
	if (xyj2) printf("���һ������ף������ȴˢ�£�\n");
	if (xyy2) printf("��Ҷ�������ף������ȴˢ�£�\n");
	if (hlj) printf("���һ������ң�\n");
	if (hly) printf("��Ҷ�������ң�\n");
	if (ys==true) 
	{if (jy==1) printf("���1�����Ѫ״̬��\n");else printf("���2�����Ѫ״̬��\n");}
	if (fs==true) 
	{if (yy==2) printf("���2���뷴��״̬��\n");else printf("���1���뷴��״̬��\n");}
	printf("���1Ѫ��:%000d  ",x1);
	cout<<endl;
	for (int i=1;i<=x1/100;i++) cout<<"��"; cout<<jjz[(x1%100)/10]<<endl;
	if (jy==1)
	{ 
	printf("���1�������:");if(dljn==true) printf("��ʹ��   ");else printf("��ʣ%d��   ",5-(cxsj-syksj)/100%60);
	cout<<"ͻ�����:";if(tcjn==true) printf("��ʹ��   ");else printf("��ʣ%d��    ",10-(cxsj-synsj)/100%60);
	printf("��.�������:");if(ysjn==true) printf("��ʹ��\n");else printf("��ʣ%d��\n",30-(cxsj-Isysj)/100%60);
	cout<<endl; 
    }
    else
    {
	printf("���1˲�����:");if(jn11==true) printf("��ʹ��   ");else printf("��ʣ%d��   ",5-(cxsj-sy2sj)/100%60);
	cout<<"�������:";if(bt==true) printf("��ʹ��   ");else printf("��ʣ%d��    ",10-(cxsj-sy3sj)/100%60);
	cout<<"��.�������:";if(fsjn==true) printf("��ʹ��\n");else printf("��ʣ%d��\n",30-(cxsj-sy5sj)/100%60);
	cout<<endl;
	}
	printf("���2Ѫ��:%000d  ",x2);
	cout<<endl;
	for (int i=1;i<=x2/100;i++) cout<<"��"; cout<<jjz[(x2%100)/10]<<endl;
	if (yy==2)
	{
	printf("���2˲�����:");if(jn11==true) printf("��ʹ��   ");else printf("��ʣ%d��   ",5-(cxsj-sy2sj)/100%60);
	cout<<"�������:";if(bt==true) printf("��ʹ��   ");else printf("��ʣ%d��    ",10-(cxsj-sy3sj)/100%60);
	cout<<"��.�������:";if(fsjn==true) printf("��ʹ��\n");else printf("��ʣ%d��\n",30-(cxsj-sy5sj)/100%60);
    }
    else
    {
	printf("���2�������:");if(dljn==true) printf("��ʹ��   ");else printf("��ʣ%d��   ",5-(cxsj-syksj)/100%60);
	cout<<"ͻ�����:";if(tcjn==true) printf("��ʹ��   ");else printf("��ʣ%d��    ",10-(cxsj-synsj)/100%60);
	printf("��.�������:");if(ysjn==true) printf("��ʹ��\n");else printf("��ʣ%d��\n",30-(cxsj-Isysj)/100%60);
	}
	if (x1<=0) {x1=0;printf("���2ʤ����");getchar();zjm();}
	if (x2<=0) {x2=0;printf("���1ʤ����");getchar();zjm();}
}}
void zjm()
{
	while(1==1)
	{
	cls;
	FIRST=true;
	printf("��1.˫��ս����      ��2.�˻�ս����      ��3.Ӣ�۾Ƶ꡿      ��4.����Ӣ�ۡ�\n��5.Ӣ�����顿      ��6.����ָ�ϡ�      ��7.�����Ŷӡ�      ��9.�˳���Ϸ��\n");
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
void yi()  //˫��ս�� 
{
    x1=1000;x2=1000;pg1=true;pg2=true;jn11=true;ysjn=true;bt=true;fsjn=true;dljn=true;tcjn=true;fs=false;xyz=0;ys=false;
    xyy1=false;xyy2=false;xyj1=false;xyj2=false;
    memset(dl,0,sizeof(dl));
    memset(xy,false,sizeof(xy));
    memset(xysj,false,sizeof(xysj));
	jjz[1]="��";jjz[2]="��";jjz[3]="��";jjz[4]="��";
	jjz[5]="��";jjz[6]="��";jjz[7]="��";jjz[0]=" ";
	jjz[8]="��";jjz[9]="��";
	yxtb[1]="��";yxtb[2]="��";yxtb[3]="��";yxtb[4]="��";yxtb[5]="��";
	jz[1]="��";jz[2]="��";jz[3]="��";jz[4]="��";
	jz[5]="��";jz[6]="��";jz[7]="��";jz[0]=" ";
	for (int i=1;i<=9;i++)
	for (int j=1;j<=9;j++) dt[i][j]="��";
	dt[2][3]="��";dt[2][7]="��";dt[3][2]="��";dt[3][3]="��";dt[3][5]="��";
	dt[3][7]="��";dt[3][8]="��";dt[4][5]="��";dt[5][3]="��";dt[5][4]="��";
	dt[5][5]="��";dt[5][6]="��";dt[5][7]="��";dt[6][5]="��";dt[7][2]="��";
	dt[7][3]="��";dt[7][5]="��";dt[7][7]="��";dt[7][8]="��";dt[8][3]="��";
	dt[8][7]="��";
	dt[1][4]="��";dt[1][5]="��";dt[1][6]="��";dt[2][4]="��";dt[2][5]="��";dt[2][6]="��";
	dt[8][4]="��";dt[8][5]="��";dt[8][6]="��";dt[9][4]="��";dt[9][5]="��";dt[9][6]="��";
	i1=1;j1=5;i2=9;j2=5;
	cls;
	cout<<"��ѡ��˫��Ӣ��(ע:�޷�ѡ��ͬһӢ��):"<<endl;
	cout<<"���һ: ��Q.����   ��W.��"<<endl;
	cout<<"��Ҷ�����1.����   ��2.��"<<endl;
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
	cout<<"ѡ����ϣ����һ:"<<yxtb[jy]<<"��Ҷ�:"<<yxtb[yy]<<endl;
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
		}while((dt[xxx][yyy]!="��")&&(xy[xxx][yyy]==false));
	}	
	if (xyz==0) {xy[xxx][yyy]=true;xyz=xyz+1;}
	if(jy==1)
	{ 
	if (dl[i2][j2]>0) 
	{
	dt[i2][j2]="��";
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
	dt[i1][j1]="��";
	if(!fs) {x1=x1-rand()%(100*dl[i1][j1])-200*dl[i1][j1];dl[i1][j1]=0;draw();}
	else {
	x2=x2-rand()%(100*dl[i1][j1])-200*dl[i1][j1];
	x1=x1-(rand()%(100*dl[i1][j1])-200*dl[i1][j1])/4;
	dl[i1][j1]=0;draw();}
    }
	}
	if ((abs(i2-9)<=1)&&(abs(j2-5)<=1)&&(x2<1000)) {x2=x2+rand()%5;if (x2>1000) x2=1000;draw();}
	if (((abs(i2-1)<=1)&&(abs(j2-5)<=1))||(dt[i2][j2]=="��")) 
	{if (jy==1) {if (!fs) x2=x2-rand()%5;else {x1=x1-(rand()%5);x2=x2-(rand()%5)/4;}draw();}} 
	if (((abs(i1-9)<=1)&&(abs(j1-5)<=1))||(dt[i2][j2]=="��")) 
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
			if ((j1>1)&&(dt[i1][j1-1]!="��")&&((i1!=i2)||(j1-1!=j2))) {j1--;draw();}
						break;
					}
					case 2:{
			if ((i1<9)&&(dt[i1+1][j1]!="��")&&((i1+1!=i2)||(j1!=j2))) {i1++;draw();}
						break;
					}
					case 3:{
			if ((j1<9)&&(dt[i1][j1+1]!="��")&&((i1!=i2)||(j1+1!=j2))) {j1++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX1)&&(i1>1)&&(dt[i1-1][j1]!="��")&&((i1-1!=i2)||(j1!=j2))) {i1--;draw();}
			if (SX1&&((i1>2)&&(dt[i1-2][j1]!="��")&&((i1-2!=i2)||(j1!=j2)))) {i1-=2;SX1=false;draw();}
			break;
		}
		case 'A':{
			if (hlj) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="��")&&((i1-1!=i2)||(j1!=j2))) {i1--;draw();}
						break;
					}
					case 2:{
			if ((i1<9)&&(dt[i1+1][j1]!="��")&&((i1+1!=i2)||(j1!=j2))) {i1++;draw();}
						break;
					}
					case 3:{
			if ((j1<9)&&(dt[i1][j1+1]!="��")&&((i1!=i2)||(j1+1!=j2))) {j1++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX1)&&(j1>1)&&(dt[i1][j1-1]!="��")&&((i1!=i2)||(j1-1!=j2))) {j1--;draw();}
			if (SX1&&((j1>2)&&(dt[i1][j1-2]!="��")&&((i1!=i2)||(j1-2!=j2)))) {j1-=2;SX1=false;draw();}
			break;
		}	
		case 'S':{
			if (hlj) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="��")&&((i1-1!=i2)||(j1!=j2))) {i1--;draw();}
						break;
					}
					case 2:{
			if ((j1>1)&&(dt[i1][j1-1]!="��")&&((i1!=i2)||(j1-1!=j2))) {j1--;draw();}
						break;
					}
					case 3:{
			if ((j1<9)&&(dt[i1][j1+1]!="��")&&((i1!=i2)||(j1+1!=j2))) {j1++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX1)&&(i1<9)&&(dt[i1+1][j1]!="��")&&((i1+1!=i2)||(j1!=j2))) {i1++;draw();}
			if (SX1&&((i1<8)&&(dt[i1+2][j1]!="��")&&((i1+2!=i2)||(j1!=j2)))) {i1+=2;SX1=false;draw();}
			break;
		}	
		case 'D':{
			if (hlj) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="��")&&((i1-1!=i2)||(j1!=j2))) {i1--;draw();}
						break;
					}
					case 2:{
			if ((j1>1)&&(dt[i1][j1-1]!="��")&&((i1!=i2)||(j1-1!=j2))) {j1--;draw();}
						break;
					}
					case 3:{
			if ((i1<9)&&(dt[i1+1][j1]!="��")&&((i1+1!=i2)||(j1!=j2))) {i1++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX1)&&(j1<9)&&(dt[i1][j1+1]!="��")&&((i1!=i2)||(j1+1!=j2))) {j1++;draw();}
			if (SX1&&((j1<8)&&(dt[i1][j1+2]!="��")&&((i1!=i2)||(j1+2!=j2)))) {j1+=2;SX1=false;draw();}
			break;
		}
		case 72:{
			if (hly) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((j2>1)&&(dt[i2][j2-1]!="��")&&((i2!=i1)||(j2-1!=j1))) {j2--;draw();}
						break;
					}
					case 2:{
			if ((i2<9)&&(dt[i2+1][j2]!="��")&&((i2+1!=i1)||(j2!=j1))) {i2++;draw();}
						break;
					}
					case 3:{
			if ((j2<9)&&(dt[i2][j2+1]!="��")&&((i2!=i1)||(j2+1!=j1))) {j2++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX2)&&(i2>1)&&(dt[i2-1][j2]!="��")&&((i2-1!=i2)||(j2!=j1))) {i2--;draw();}
			if (SX2&&((i2>2)&&(dt[i2-2][j2]!="��")&&((i2-2!=i2)||(j2!=j1)))) {i2-=2;SX2=false;draw();}
			break;
		}
		case 75:{
			if (hly) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="��")&&((i1-1!=i1)||(j1!=j2))) {i2--;draw();}
						break;
					}
					case 2:{
			if ((i2<9)&&(dt[i2+1][j2]!="��")&&((i2+1!=i1)||(j2!=j1))) {i2++;draw();}
						break;
					}
					case 3:{
			if ((j2<9)&&(dt[i2][j2+1]!="��")&&((i2!=i1)||(j2+1!=j1))) {j2++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX2)&&(j2>1)&&(dt[i2][j2-1]!="��")&&((i2!=i1)||(j2-1!=j1))) {j2--;draw();}
			if (SX2&&((j2>2)&&(dt[i2][j2-2]!="��")&&((i2!=i1)||(j2-2!=j1)))) {j2-=2;SX2=false;draw();}
			break;
		}
		case 80:{
			if (hly) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="��")&&((i1-1!=i1)||(j1!=j2))) {i1--;draw();}
						break;
					}
					case 2:{
			if ((j2>1)&&(dt[i2][j2-1]!="��")&&((i2!=i1)||(j2-1!=j1))) {j2--;draw();}
						break;
					}
					case 3:{
			if ((j2<9)&&(dt[i2][j2+1]!="��")&&((i2!=i1)||(j2+1!=j1))) {j2++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX2)&&(i2<9)&&(dt[i2+1][j2]!="��")&&((i2+1!=i1)||(j2!=j1))) {i2++;draw();}
			if (SX2&&((i2<8)&&(dt[i2+2][j2]!="��")&&((i2+2!=i1)||(j2!=j1)))) {i2+=2;SX2=false;draw();}
			break;
		}
		case 77:{
			if (hly) 
			{
				switch(rand()%4)
				{
					case 1:{
			if ((i1>1)&&(dt[i1-1][j1]!="��")&&((i1-1!=i1)||(j1!=j2))) {i1--;draw();}
						break;
					}
					case 2:{
			if ((j2>1)&&(dt[i2][j2-1]!="��")&&((i2!=i1)||(j2-1!=j1))) {j2--;draw();}
						break;
					}
					case 3:{
			if ((i2<9)&&(dt[i2+1][j2]!="��")&&((i2+1!=i1)||(j2!=j1))) {i2++;draw();}
						break;
					}
				}
			}
			else
			if ((!SX2)&&(j2<9)&&(dt[i2][j2+1]!="��")&&((i2!=i1)||(j2+1!=j1))) {j2++;draw();}
			if (SX2&&((j2<8)&&(dt[i2][j2+2]!="��")&&((i2!=i1)||(j2+2!=j1)))) {j2+=2;SX2=false;draw();}
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
			if ((dt[i2-1][j2-1]!="��")&&(i2-1>=1)&&(j2-1>=1)) {i1=i2-1;j1=j2-1;}
			else
			if ((dt[i2-1][j2]!="��")&&(i2-1>=1)) {i1=i2-1;j1=j2;}
			else
			if ((dt[i2-1][j2+1]!="��")&&(i2-1>=1)&&(j2+1<=9)) {i1=i2-1;j1=j2+1;}
			else
			if ((dt[i2][j2-1]!="��")&&(j2-1>=1)) {i1=i2;j1=j2-1;}
			else
			if ((dt[i2][j2+1]!="��")&&(j2+1<=9)) {i1=i2;j1=j2+1;}
			else
			if ((dt[i2+1][j2-1]!="��")&&(i2+1<=9)&&(j2-1>=1)) {i1=i2+1;j1=j2-1;}
			else
			if ((dt[i2+1][j2]!="��")&&(i2+1<=9)) {i1=i2+1;j1=j2;}
			else
			if ((dt[i2+1][j2+1]!="��")&&(i2+1<=9)&&(j2+1<=9)) {i1=i2+1;j1=j2+1;}
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
			if ((dt[i1-1][j1-1]!="��")&&(i1-1>=1)&&(j1-1>=1)) {i2=i1-1;j2=j1-1;}
			else
			if ((dt[i1-1][j1]!="��")&&(i1-1>=1)) {i2=i1-1;j2=j1;}
			else
			if ((dt[i1-1][j1+1]!="��")&&(i1-1>=1)&&(j1+1<=9)) {i2=i1-1;j2=j1+1;}
			else
			if ((dt[i1][j1-1]!="��")&&(j1-1>=1)) {i2=i1;j2=j1-1;}
			else
			if ((dt[i1][j1+1]!="��")&&(j1+1<=9)) {i2=i1;j2=j1+1;}
			else
			if ((dt[i1+1][j1-1]!="��")&&(i1+1<=9)&&(j1-1>=1)) {i2=i1+1;j2=j1-1;}
			else
			if ((dt[i1+1][j1]!="��")&&(i1+1<=9)) {i2=i1+1;j2=j1;}
			else
			if ((dt[i1+1][j1+1]!="��")&&(i1+1<=9)&&(j1+1<=9)) {i2=i1+1;j2=j1+1;}
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
void er() //�˻�ս�� 
{
	cls;
	cout<<"�����С���";
	getchar();
}
void san() //Ӣ�۾Ƶ� 
{
	cls;
	cout<<"�����С���";
	getchar();
	/*cls();
	cout<<"������Ӣ�۾Ƶ꣬�������������ļ��ϲ����Ӣ��Ŷ~"<<endl;
	cout<<"�˴ο���ļӢ�ۣ�"<<endl;
	do
	{
	for (int i=1;i<=3;i++)
	{yx[i]=rand()%5+1;}
    }while((yx[1]==yx[2])||(yx[1]==yx[3])||(yx[2]==yx[3]));
    cout<<"1."<<yxtb[yx[1]]<<"   "<<"2."<<yxtb[yx[2]]<<"   "<<"3."<<yxtb[yx[3]]<<endl;
    cout<<"9.�����ء�" <<endl;
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
void san_1(int x) //Ӣ�۾Ƶ�-Ӣ�۹��� 
{
	cout<<"��ѡӢ��:"<<yxtb[x]<<endl;
	switch(x)
	{
		case 1:{
			cout<<"1������һ ���汩��"<<endl;
			cout<<"2: ���ܶ� ��ͻ��"<<endl;
			cout<<"3: ������ �����Ѫ"<<endl;
			cout<<"9:����"<<endl; 
			cout<<"��ܰ��ʾ�������Ӧ���ֲ�ѯ��������"<<endl;
			ch=getch();
			break;
		}
	}
}
void si() //����Ӣ�� 
{
	cls;
	cout<<"�����С���";
	getchar();
}
void wu() //Ӣ������
{
	do
	{
	cls;
	cout<<"�����Ӧ���ֲ鿴Ӣ������"<<endl;
	cout<<"��1.����      ��2.��      ��3.�      ��9.���ء�"<<endl;
	char sl=getch();
	switch(sl)
	{
		case '1':{
			cout<<"�̿ͼ���Ӣ�ۣ�����Ӱȥ���٣�ɱ�������Σ�ɱ���ֶβ����˵�"<<endl<<endl;
			cout<<"B/2���ͷŵ������ڽ��£�ֻ�Ե�����Ч�������200������˺�+100������˺���Ч���ɵ��ӣ�"<<endl;
			cout<<"N/3�����������Լ�ͬһ���л�ͬһ����ʱ��ͻ�������˱���ǽ�ǣ����ҵ���ÿ�ƶ�һ��������50���˺�"<<endl;
			cout<<"G/5��ʹ�ô��У�10���ڻ������Ч�����ҳ����ָ�����Ѫ��������Ѫ�����޵����ƣ�"<<endl;
			cout<<"���س����ء�"<<endl;
			getchar();
			break;
		}
		case '2':{
			cout<<"����̫�������Ӣ�ۣ��̳�������˲�ƵĹ�����Σ��ʱ�ܹ����彫���־���ǧ���⣬���з��˾���"<<endl<<endl;
			cout<<"B/2��˲����������Χ����һ���䲻����˺�������һ���ܸ���ʹ������һ��Ĵ���"<<endl;
			cout<<"N/3���������壬����з����Լ����ھŹ�����Χ������һ�񣬽��Ե������100������˺�+200������˺�,�����з���������"<<endl;
			cout<<"G/5��ʹ�ô��У�10���ڻ�÷��˻��ף��ڼ����ʧ����Ѫ�����Լ����ܵĹ���������������100%����ʵ�˺�"<<endl;
			cout<<"���س����ء�"<<endl;
			getchar();
			break;
		}
		case '3':{
			cout<<"������Ա�Զ������bian������tai��Ӣ�ۣ���һ�޶����ļ������������������"<<endl<<endl;
			cout<<"B/2�����֣��ɴ�ǽ,��Ӣ�ۣ���������ƶ����򣬴�Ӣ�ۻ���������200������˺�"<<endl;
			cout<<"N/3��ʹ�ù���צ,�����з��������Χ�ķ�Բ�����ڣ�������������Ҹ���һ�������100������˺�"<<endl;
			cout<<"F/4�����������һ��Ѫ��Ϊ���ʣ��Ѫ��10%��ǽ�壬�з�ֻ��ʹ����ͨ�����ƻ�ǽ��"<<endl;
			cout<<"G/5��ʹ�з��ж�10�룬������ʧѪ�����޷��ڻ��ػָ�Ѫ��" <<endl;
			cout<<"���س����ء�" <<endl;
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
void liu() //����ָ�� 
{
	do{
	cls;
	cout<<"��1.��ͼͼʾ��      ��2.��λ��ʾ��      ��9.���ء�" <<endl;
	char sl=getch();
	switch(sl)
	{
		case '1':{
			cout<<"��Ϊǽ�壬��Ҳ��ɽ���ǽ�壻��Ϊ˫�������صı�־���ڴ˷�Χ�ڿ��Գ�����Ѫ����Ϊ��·�������߶����ף�"<<endl;
			cout<<"��Ϊ���ױ�ը�������Ļ�����˫������ʱ�������Ѫ������Ϊ����֮�������߹���ʰȡ��������buff�ӳɣ�"<<endl;
			cout<<"���س����ء�";
			getchar();
			break;
		}
		case '2':{
	    cout<<"���һ�ĳ������ڵ�ͼ�Ϸ�����д������ʹ��W��A��S��D��ĸ���ƶ���V��B��N��G��ĸ���ֱ�����չ�������һ�����ܶ������е�ʹ�ã��ص������ؿ����޻�Ѫ������з������ؽ�������Ѫ"<<endl<<endl;
	    cout<<"��Ҷ��ĳ������ڵ�ͼ�Ϸ�����д������ʹ�á�������������������ƶ���1��2��3��4���ּ��ֱ�����չ�������һ�����ܶ������е�ʹ�ã��ص������ؿ����޻�Ѫ������з������ؽ�������Ѫ"<<endl<<endl;
	    cout<<"ս��ʱ����ʱ����ӣ���ʱ�����ǰ�Ȼ��ܶ��ֵ���һ�ʤ��������ֹʱ��ʱ��Ѫ��ʣ�������߻�ʤ��"<<endl;
	    cout<<"���س����ء�";
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
void qi()  //�����Ŷ� 
{
	cls;
	cout<<"�����Ŷӳ�Ա:" <<endl;
	cout<<"������:FJCT  ��FP����ZW"<<endl;
	cout<<"����QȺ:634528767  ��FP:Q��:1461140541  ��ZW:Q��:1933006974"<<endl;
	cout<<"���س����ء�"<<endl;
	getchar();
	zjm();
}
int main()
{
	////��ʼ�� 
	srand((unsigned)time(NULL)); 
	jjz[1]="��";jjz[2]="��";jjz[3]="��";jjz[4]="��";
	jjz[5]="��";jjz[6]="��";jjz[7]="��";jjz[0]=" ";
	jjz[8]="��";jjz[9]="��";
	yxtb[1]="��";yxtb[2]="��";yxtb[3]="��";yxtb[4]="��";yxtb[5]="��";
	jz[1]="��";jz[2]="��";jz[3]="��";jz[4]="��";
	jz[5]="��";jz[6]="��";jz[7]="��";jz[0]=" ";
	for (int i=1;i<=9;i++)
	for (int j=1;j<=9;j++) dt[i][j]="��";
	dt[2][3]="��";dt[2][7]="��";dt[3][2]="��";dt[3][3]="��";dt[3][5]="��";
	dt[3][7]="��";dt[3][8]="��";dt[4][5]="��";dt[5][3]="��";dt[5][4]="��";
	dt[5][5]="��";dt[5][6]="��";dt[5][7]="��";dt[6][5]="��";dt[7][2]="��";
	dt[7][3]="��";dt[7][5]="��";dt[7][7]="��";dt[7][8]="��";dt[8][3]="��";
	dt[8][7]="��";
	dt[1][4]="��";dt[1][5]="��";dt[1][6]="��";dt[2][4]="��";dt[2][5]="��";dt[2][6]="��";
	dt[8][4]="��";dt[8][5]="��";dt[8][6]="��";dt[9][4]="��";dt[9][5]="��";dt[9][6]="��";
	i1=1;j1=5;i2=9;j2=5;
	////��ʼ�� 
	for (int i=1;i<=136;i++)
	{int x=i%8;Sleep(0.9);cls;printf("���ڽ��뷽������~    Loading������\n");for (int j=1;j<=i/8;j++) printf("��");cout<<jz[x];}
	Sleep(500);
	zjm();
	return 0;
}
