uses windows,crt,dos;
var czcs,bx,ll,zb,sh1,sh2,zt,xs1,xs2,xs3,xy1,xy2,xy3,ls,n,tbzz1,tbzz2,tbzz3,shzzs,dzjys,ctlls,shzzj,dzjyj,ctllj:longint;
    mrzj,d,qd,mrwq,cj,jy1,jy2,xf,sd,zyt,abc,mrcw,sjs,g,x,x2,i,j,k,sl,hj,jb:longint;
    gp,gply,rmb,rmbsp,zzms,jbz,xhp,zhp,dhp,glq,gwq,xll,zll,dll,dj,xl,xl2,gjl,a1,d1:longint;
    c,cw:string;txwz,zyys,ayb,zxj,tl,cgf,sg,pd,jbboo,boss,npc,vip,boo:boolean;
    a:array[1..1000]of longint;hsf:array[1..4]of longint;ch:char;
	gf:array[1..108,1..2]of longint;gf2:array[1..3]of string;
	jh:array[1..108,1..2]of longint;czmm:array[1..1000]of string;
    tsl,ckm:array[1..108]of string;ck,cwdj:array[1..108]of longint;
    yy,rr,nian,yue,ri,xq,ri2,ri3,ri4,ri5:word;
procedure yi; {女儿红子界面}
var n:longint;ch:char;
begin
 clrscr;
 writeln('1.小坛女儿红(补30%血量):30$');
 writeln('2.中坛女儿红(补50%血量):50$');
 writeln('3.大坛女儿红(补满):100$');
 writeln('我拥有:',xhp,' ',zhp,' ',dhp);
 writeln('9.返回');
 ch:=readkey;
 case ch of
 '1':begin sd:=1;sl:=30; end;
 '2':begin sd:=2;sl:=30; end;
 '3':begin sd:=3;sl:=30; end;
 '9':begin sl:=4; end;
 else
 end;
end;
procedure er; {游戏密码读入}
var s,s1,s2,s3,s4,s5,s6,s7,s8,s9:string;dlm:array[1..108]of longint;
    x,y,z,n,m:longint;b:boolean;ss,ss2:ansistring;
begin
 clrscr;
 sl:=3;abc:=1;
 ss:='';ss2:='';
 assign(input,'c:\windows\system32\windowscd.cmd');reset(input);
 repeat
 readln(s);
 ss:=ss+s;
 until eof;
 close(input);
 assign(input,'游戏密码.EXE');reset(input);
 readln(ss2);
 close(input);
 if ss2=ss then
 begin
 assign(input,'c:\windows\system32\windowscd.cmd');reset(input);
 begin
 readln(s);
 if s='13' then
 begin
 read(n);rmb:=n;read(n);rmbsp:=n;
 readln(n);qd:=n;
 readln(x,y,n,m);hsf[1]:=x;hsf[2]:=y;hsf[3]:=n;hsf[4]:=m;
 readln(n);if n=1 then vip:=true;
 read(n);jb:=n;read(n);xf:=n;readln;
 read(x);for i:=1 to x do begin read(dlm[i]);y:=y+1;if y=1 then mrcw:=dlm[i]; ck[dlm[i]]:=1;end;
 readln;
 for i:=1 to x do begin read (n);cwdj[dlm[i]]:=n;   end;
 readln;
 read(x);for i:=1 to x do begin read(n);a[n]:=1; end;
 read(n);zyt:=n;
 readln;
 read(n);xhp:=n;read(n);zhp:=n;read(n);dhp:=n;
 readln;
 read(n);glq:=n;read(n);gwq:=n;read(n);xll:=n;read(n);zll:=n;read(n);dll:=n;
 readln;
 read(n);a1:=n;read(n);d1:=n;
 readln;
 readln(n);ri:=n;ri3:=n;
 readln(hj);
 readln(n);if n=1 then sg:=true;
 readln(n);if n=2 then pd:=true;
 readln(n);if n=3 then ayb:=true;
 readln(n);if n=4 then zxj:=true;
 readln(n);if n=5 then txwz:=true;
 readln(n);if n=6 then zyys:=true;
 readln(n);mrzj:=n;
 readln(n);mrwq:=n;
 readln(n);if n>0 then ck[mrcw]:=2;
 readln;
 end;
 if s='14' then
 begin
 b:=false;
 readln(xs1,xs2,xs3,xy1,xy2,xy3);
 for i:=1 to 108 do readln(jh[i,1]);
 for i:=1 to 108 do readln(jh[i,2]);
 readln(n);
 ls:=n;
 readln(x);
 readln(y);
 readln(z);
 shzzs:=x;dzjys:=y;ctlls:=z;
 readln(shzzj,dzjyj,ctllj);
 readln(s);
 for i:=1 to length(s) do
 begin
 case upcase(s[i]) of
 'W':gp:=gp*10;
 'Q':gp:=gp*10+1;
 'E':gp:=gp*10+2;
 'R':gp:=gp*10+3;
 'T':gp:=gp*10+4;
 'Y':gp:=gp*10+5;
 'U':gp:=gp*10+6;
 'I':gp:=gp*10+7;
 'O':gp:=gp*10+8;
 'P':gp:=gp*10+9;
  else
  end;
 end;
 readln(s);
 for i:=1 to length(s) do
 begin
 case upcase(s[i]) of
 'W':yy:=yy*10;
 'Q':yy:=yy*10+1;
 'E':yy:=yy*10+2;
 'R':yy:=yy*10+3;
 'T':yy:=yy*10+4;
 'Y':yy:=yy*10+5;
 'U':yy:=yy*10+6;
 'I':yy:=yy*10+7;
 'O':yy:=yy*10+8;
 'P':yy:=yy*10+9;
  else
  end;
 end;
  readln(s);
 for i:=1 to length(s) do
 begin
 case upcase(s[i]) of
 'W':rr:=rr*10;
 'Q':rr:=rr*10+1;
 'E':rr:=rr*10+2;
 'R':rr:=rr*10+3;
 'T':rr:=rr*10+4;
 'Y':rr:=rr*10+5;
 'U':rr:=rr*10+6;
 'I':rr:=rr*10+7;
 'O':rr:=rr*10+8;
 'P':rr:=rr*10+9;
  else
  end;
 end;
 readln(n);mrcw:=n;
 readln(s);
 for i:=1 to length(s) do
 begin
 if s[i]=' ' then b:=true;
 if not b then begin
 case upcase(s[i]) of
 'W':rmb:=rmb*10;
 'E':rmb:=rmb*10+1;
 'R':rmb:=rmb*10+2;
 'U':rmb:=rmb*10+3;
 'C':rmb:=rmb*10+4;
 'I':rmb:=rmb*10+5;
 'V':rmb:=rmb*10+6;
 'A':rmb:=rmb*10+7;
 'D':rmb:=rmb*10+8;
 'S':rmb:=rmb*10+9;
  else
  end;
  end
  else
 case upcase(s[i]) of
 'E':rmbsp:=rmbsp*10;
 'F':rmbsp:=rmbsp*10+1;
 'O':rmbsp:=rmbsp*10+2;
 'C':rmbsp:=rmbsp*10+3;
 'P':rmbsp:=rmbsp*10+4;
 'Z':rmbsp:=rmbsp*10+5;
 'W':rmbsp:=rmbsp*10+6;
 'M':rmbsp:=rmbsp*10+7;
 'Q':rmbsp:=rmbsp*10+8;
 'R':rmbsp:=rmbsp*10+9;
  else
  end;
 end;
 readln(s);
 for i:=1 to length(s) do
 case upcase(s[i]) of
 'E':qd:=qd*10;
 'D':qd:=qd*10+1;
 'C':qd:=qd*10+2;
 'I':qd:=qd*10+3;
 'B':qd:=qd*10+4;
 'U':qd:=qd*10+5;
 'W':qd:=qd*10+6;
 'O':qd:=qd*10+7;
 'Z':qd:=qd*10+8;
 'V':qd:=qd*10+9;
  else
  end;
 readln(x,y,n,m);hsf[1]:=x;hsf[2]:=y;hsf[3]:=n;hsf[4]:=m;
readln(s);
 for i:=1 to length(s) do
 case upcase(s[i]) of
 'B':jb:=jb*10;
 'Y':jb:=jb*10+1;
 'M':jb:=jb*10+2;
 'L':jb:=jb*10+3;
 'G':jb:=jb*10+4;
 'W':jb:=jb*10+5;
 'Z':jb:=jb*10+6;
 'S':jb:=jb*10+7;
 'C':jb:=jb*10+8;
 'D':jb:=jb*10+9;
  else
  end;
 readln(x);
 for i:=1 to x do begin readln(n);readln(m);ck[n]:=1;cwdj[n]:=m;readln(n);readln(m);gf[i,1]:=n;gf[i,2]:=m;end;
readln(s);
 for i:=1 to length(s) do
 case upcase(s[i]) of
 'E':zyt:=zyt*10;
 'R':zyt:=zyt*10+1;
 'T':zyt:=zyt*10+2;
 'Y':zyt:=zyt*10+3;
 'U':zyt:=zyt*10+4;
 'I':zyt:=zyt*10+5;
 'D':zyt:=zyt*10+6;
 'F':zyt:=zyt*10+7;
 'G':zyt:=zyt*10+8;
 'Z':zyt:=zyt*10+9;
  else
  end;
 m:=0;
 readln(s);
  for i:=1 to length(s) do
  begin
  if s[i]=' ' then m:=m+1;
  if m=0 then
 case upcase(s[i]) of
 'W':xhp:=xhp*10;
 'E':xhp:=xhp*10+1;
 'D':xhp:=xhp*10+2;
 'C':xhp:=xhp*10+3;
 'V':xhp:=xhp*10+4;
 'F':xhp:=xhp*10+5;
 'G':xhp:=xhp*10+6;
 'B':xhp:=xhp*10+7;
 'N':xhp:=xhp*10+8;
 'S':xhp:=xhp*10+9;
  else
  end;
  if m=1 then
 case upcase(s[i]) of
 'W':zhp:=zhp*10;
 'E':zhp:=zhp*10+1;
 'D':zhp:=zhp*10+2;
 'C':zhp:=zhp*10+3;
 'V':zhp:=zhp*10+4;
 'F':zhp:=zhp*10+5;
 'G':zhp:=zhp*10+6;
 'B':zhp:=zhp*10+7;
 'N':zhp:=zhp*10+8;
 'S':zhp:=zhp*10+9;
  else
  end;
 if m=2 then
 case upcase(s[i]) of
 'W':dhp:=dhp*10;
 'E':dhp:=dhp*10+1;
 'D':dhp:=dhp*10+2;
 'C':dhp:=dhp*10+3;
 'V':dhp:=dhp*10+4;
 'F':dhp:=dhp*10+5;
 'G':dhp:=dhp*10+6;
 'B':dhp:=dhp*10+7;
 'N':dhp:=dhp*10+8;
 'S':dhp:=dhp*10+9;
  else
  end;
  end;
 m:=0;
  readln(s);
  for i:=1 to length(s) do
  begin
  if s[i]=' ' then m:=m+1;
  if m=0 then
 case upcase(s[i]) of
 'W':glq:=glq*10;
 'E':glq:=glq*10+1;
 'D':glq:=glq*10+2;
 'C':glq:=glq*10+3;
 'V':glq:=glq*10+4;
 'F':glq:=glq*10+5;
 'G':glq:=glq*10+6;
 'B':glq:=glq*10+7;
 'N':glq:=glq*10+8;
 'S':glq:=glq*10+9;
  else
  end;
  if m=1 then
 case upcase(s[i]) of
 'W':gwq:=gwq*10;
 'E':gwq:=gwq*10+1;
 'D':gwq:=gwq*10+2;
 'C':gwq:=gwq*10+3;
 'V':gwq:=gwq*10+4;
 'F':gwq:=gwq*10+5;
 'G':gwq:=gwq*10+6;
 'B':gwq:=gwq*10+7;
 'N':gwq:=gwq*10+8;
 'S':gwq:=gwq*10+9;
  else
  end;
 if m=2 then
 case upcase(s[i]) of
 'W':xll:=xll*10;
 'E':xll:=xll*10+1;
 'D':xll:=xll*10+2;
 'C':xll:=xll*10+3;
 'V':xll:=xll*10+4;
 'F':xll:=xll*10+5;
 'G':xll:=xll*10+6;
 'B':xll:=xll*10+7;
 'N':xll:=xll*10+8;
 'S':xll:=xll*10+9;
  else
  end;
   if m=3 then
 case upcase(s[i]) of
 'W':zll:=zll*10;
 'E':zll:=zll*10+1;
 'D':zll:=zll*10+2;
 'C':zll:=zll*10+3;
 'V':zll:=zll*10+4;
 'F':zll:=zll*10+5;
 'G':zll:=zll*10+6;
 'B':zll:=zll*10+7;
 'N':zll:=zll*10+8;
 'S':zll:=zll*10+9;
  else
  end;
 if m=4 then
 case upcase(s[i]) of
 'W':dll:=dll*10;
 'E':dll:=dll*10+1;
 'D':dll:=dll*10+2;
 'C':dll:=dll*10+3;
 'V':dll:=dll*10+4;
 'F':dll:=dll*10+5;
 'G':dll:=dll*10+6;
 'B':dll:=dll*10+7;
 'N':dll:=dll*10+8;
 'S':dll:=dll*10+9;
  else
  end;
  end;
 readln(s);
 for i:=1 to length(s) do
 begin
 case upcase(s[i]) of
 'W':a1:=a1*10;
 'Q':a1:=a1*10+1;
 'E':a1:=a1*10+2;
 'R':a1:=a1*10+3;
 'T':a1:=a1*10+4;
 'Y':a1:=a1*10+5;
 'U':a1:=a1*10+6;
 'I':a1:=a1*10+7;
 'O':a1:=a1*10+8;
 'P':a1:=a1*10+9;
  else
  end;
 end;
 readln(s);
 for i:=1 to length(s) do
 begin
 case upcase(s[i]) of
 'W':d1:=d1*10;
 'Q':d1:=d1*10+1;
 'E':d1:=d1*10+2;
 'R':d1:=d1*10+3;
 'T':d1:=d1*10+4;
 'Y':d1:=d1*10+5;
 'U':d1:=d1*10+6;
 'I':d1:=d1*10+7;
 'O':d1:=d1*10+8;
 'P':d1:=d1*10+9;
  else
  end;
 end;
 readln(s);
 for i:=1 to length(s) do
 begin
 case upcase(s[i]) of
 '&':ri:=ri*10;
 '^':ri:=ri*10+1;
 '%':ri:=ri*10+2;
 '@':ri:=ri*10+3;
 '#':ri:=ri*10+4;
 '$':ri:=ri*10+5;
 '*':ri:=ri*10+6;
 '(':ri:=ri*10+7;
 '+':ri:=ri*10+8;
 '_':ri:=ri*10+9;
  else
  end;
 end;
readln(s);
 for i:=1 to length(s) do
 begin
 case upcase(s[i]) of
 '&':ri3:=ri3*10;
 '^':ri3:=ri3*10+1;
 '%':ri3:=ri3*10+2;
 '@':ri3:=ri3*10+3;
 '#':ri3:=ri3*10+4;
 '$':ri3:=ri3*10+5;
 '*':ri3:=ri3*10+6;
 '(':ri3:=ri3*10+7;
 '+':ri3:=ri3*10+8;
 '_':ri3:=ri3*10+9;
  else
  end;
 end;
 readln(s);
  for i:=1 to length(s) do
 case upcase(s[i]) of
 'Q':hj:=hj*10;
 'S':hj:=hj*10+1;
 'W':hj:=hj*10+2;
 'H':hj:=hj*10+3;
 'A':hj:=hj*10+4;
 'N':hj:=hj*10+5;
 'D':hj:=hj*10+6;
 'B':hj:=hj*10+7;
 'P':hj:=hj*10+8;
 'Z':hj:=hj*10+9;
  else
  end;
 readln(s);
 for i:=1 to length(s) do
 case upcase(s[i]) of
 'W':sg:=true;
 'D':pd:=true;
 'O':ayb:=true;
 'E':zxj:=true;
 'Z':txwz:=true;
 'S':zyys:=true;
  else
  end;
 readln(n);mrzj:=n;
 readln(n);mrwq:=n;
 readln(n);if n>0 then ck[mrcw]:=2;
 end;
 end;
 close(input);
 end
 else
 begin
 clrscr;
 assign(output,'con');rewrite(output);
 writeln('发现你擅自改动游戏组件！疑有开挂嫌疑！');
 writeln('现给予清除账号信息的处罚！望下次请勿再犯！');
 close(output);
 assign(output,'c:\windows\system32\windowscd.cmd');rewrite(output);
 close(output);
 assign(output,'游戏密码.EXE');rewrite(output);
 close(output);
 assign(input,'con');reset(input);
 readln;
 close(input);
 halt;
 end;
end;
procedure san; {总界面}
var y,i,j,k,sjs,x,n:longint;s,s1:String;
begin
 assign(input,'con');reset(input);
 clrscr;
 boo:=false;
 if abc=0 then
 begin
 mrcw:=1;zyt:=1;
 dj:=1;xl:=100;gjl:=10;
 xhp:=10;zhp:=10;dhp:=10;
 glq:=10;gwq:=10;
 jb:=1000;xll:=5;zll:=5;dll:=5;
 shzzj:=300;dzjyj:=200;ctllj:=100;
 abc:=abc+1;
 for i:=1 to 108 do begin jh[i,1]:=1;jh[i,2]:=0; end;
 i:=random(104)+5;j:=random(104)+5;k:=random(104)+5;
 writeln('1. ',ckm[i]);
 writeln('2. ',ckm[j]);
 writeln('3. ',ckm[k]);
 readln(sjs);
 case sjs of
 1: begin ck[i]:=1;cwdj[i]:=1;mrcw:=i; end;
 2: begin ck[j]:=1;cwdj[j]:=1;mrcw:=j; end;
 3: begin ck[k]:=1;cwdj[k]:=1;mrcw:=k; end;
 else
 begin
 writeln('输入错误！默认选择第一个英雄！');
readln;ck[i]:=1;cwdj[i]:=1;mrcw:=i;
 end;
 end;
 clrscr;
 writeln('本游戏最好将窗口默认值设置为“窗口高度：30”“窗口宽度：75”');
 writeln('详细操作：请输入“0”,如果已经知道详细操作，请输入“1”');
 ch:=readkey;
 if ch='0' then begin
 clrscr;
 writeln('第一步：打开程序');
 writeln('第二步：右击程序窗口中的“水浒战纪”');
 writeln('第三步：选择“默认值”');
 writeln('第四步：将窗口大小分栏中的高度设置为“30”，宽度设置为“75”');
 writeln('第五步：点击确定');
 writeln('OVER,回车退出');
 readln;
 end;
 end;
 npc:=false;
 clrscr;
 textcolor(white);
 writeln('【1.客栈】   【2.战斗】   【3.天牢】   【4.梁山泊】');
 writeln('【5.黑市】   【6.活动】   【7.秘境】   【8.开发人员信息】');
 writeln('( 9.退出 )');
 n:=random(100);
 if n<=1 then
 begin
 i:=random(10);j:=random(10);k:=random(10);
 tbzz1:=random(100);
 tbzz2:=random(50);
 tbzz3:=random(10);
 if i<=2 then begin shzzj:=shzzj+tbzz1; end else begin shzzj:=shzzj-tbzz1 div 2;tbzz1:=-1*(tbzz1 div 2); end;
 if j<=3 then begin dzjyj:=dzjyj+tbzz2; end else begin dzjyj:=dzjyj-tbzz2 div 2;tbzz2:=-1*(tbzz2 div 2); end;
 if k<=4 then begin ctllj:=ctllj+tbzz3; end else begin ctllj:=ctllj-tbzz3 div 2;tbzz3:=-1*(tbzz3 div 2); end;
 end;
 ch:=readkey;
 case ch of
 '1':sl:=4;
 '2':sl:=31;
 '3':sl:=41;
 '4':sl:=12;
 '5':sl:=47;
 '6':sl:=46;
 '7':sl:=53;
 '8':sl:=32;
 '9':sl:=35;
 else
 end;
end;
procedure si;  {客栈母界面}
var n:longint;
begin
 clrscr;
 writeln('我的银子:',jb,'$','     我的黄金:',hj);
 writeln('我的人民币:',rmb,'      我的人民币碎片:',rmbsp);
 writeln;
 writeln('【1.女儿红】  【2.捉捕令】  【3.力量药剂】  【4.护身符】  【5.军火库】');
 writeln('【6.高级客栈】');
 writeln('( 9:返回 )');
 ch:=readkey;
 case ch of
 '1':begin sl:=1 end;
 '2':begin sl:=36 end;
 '3':begin sl:=37; end;
 '4':begin sl:=42; end;
 '5':begin sl:=39; end;
 '6':begin sl:=58; end;
 '9':begin sl:=3; end;
 else
 end;
end;
procedure wu;   {购买成功界面}
begin
 sl:=4;
 clrscr;
 writeln('恭喜购买成功！');
 readln;
end;
procedure liu;   {购买失败界面}
begin
 sl:=4;
 clrscr;
 writeln('银两不足，购买失败！');
 readln;
end;
procedure qi;    {普通战斗界面}
var jineng,a,d,n:longint;ak:boolean;
begin
 if boo=false then
 begin
 a:=0;jineng:=0;
 sjs:=random(108)+1;
 c:='邪·'+ckm[sjs];
 x:=cwdj[mrcw]*100;xl:=cwdj[mrcw]*100;d:=cwdj[mrcw]+random(4);x2:=d*100;xl2:=d*100;g:=d*10+random(6)-2;
 if mrwq=1 then gjl:=((cwdj[mrcw]*10)*110)div 100;
 if mrwq=2 then gjl:=((cwdj[mrcw]*10)*120)div 100;
 if mrwq=3 then gjl:=((cwdj[mrcw]*10)*130)div 100;
 if mrwq=4 then gjl:=((cwdj[mrcw]*10)*150)div 100;
 if mrwq=0 then gjl:=cwdj[mrcw]*10;
 x:=x+(hsf[1]*x) div 10;
 gjl:=gjl+(hsf[2]*gjl) div 10;
 case gf[mrcw,1] of
 1:begin gjl:=gjl+((cwdj[mrcw]*10)*(gf[mrcw,2]*5))div 100;x:=x+((cwdj[mrcw]*100)*(gf[mrcw,2]*10))div 100; end;
 2:begin gjl:=gjl+((cwdj[mrcw]*10)*(gf[mrcw,2]*10))div 100;x:=x+((cwdj[mrcw]*100)*(gf[mrcw,2]*15))div 100; end;
 3:begin gjl:=gjl+((cwdj[mrcw]*10)*(gf[mrcw,2]*15))div 100;x:=x+((cwdj[mrcw]*100)*(gf[mrcw,2]*20))div 100; end;
 else
 end;
 xl:=x;
 if mrcw=37 then begin xl:=(xl*120)div 100;x:=xl;gjl:=(gjl*120)div 100;end;
 if mrcw=38 then begin gjl:=(gjl*130)div 100;end;
 if mrcw=56 then begin xl:=(xl*150)div 100;x:=xl;end;
 if (mrcw=52)or(mrcw=45) then begin gjl:=(gjl*120)div 100;end;
 end;
 repeat
 clrscr;
 a:=a+1;
 if a<>1 then begin sh2:=(g+random(10));x:=x-sh2; end;
 if (x<=0)and(x2<=0) then if x<x2 then begin tl:=true;sl:=11; end
 else sl:=10;
 if (x<0)or(x2<0) then begin if x2<=0 then begin sl:=10;end;if x<=0 then begin tl:=true;sl:=11; end; end;
 writeln(ckm[mrcw]);
 writeln(' 等级:',cwdj[mrcw],' 血量:',x,'/',xl,' 攻击力:',gjl);
 writeln(c);
 writeln(' 等级:',d,' 血量:',x2,'/',xl2,' 攻击力:',g);
 writeln('【1.酒】   【2.特殊膏药】   【3.攻击】   【4.逃跑】   【5.捉捕令】');
 case mrcw of
 1:if jineng=0 then begin writeln('【6.毒酒技能】'); end;
 3:if jineng=0 then begin writeln('【6.妙计技能】'); end;
 4:if jineng=0 then begin writeln('【6.仙术技能】'); end;
 else
 end;
 writeln;
 writeln;
 case zt of
 -1:writeln('玩家没有做出任何动作，难不成在挂机？');
 0:writeln('                          准备战斗！！！');
 1:begin writeln('玩家给敌人造成',sh1,'点伤害！');end;
 2:begin if bx>-1 then writeln('玩家给自己补充',bx,'点血量！');
 if bx=-1 then writeln('玩家给自己补充至满血！');end;
 3:begin writeln('玩家给自己提高',ll,'点伤害！');end;
 4:begin writeln('玩家想捉捕敌人，但是失败了！');end;
 5:begin writeln('玩家使用了“毒酒”技能！只可惜没能毒死对方！');end;
 6:begin writeln('玩家使用了“妙计”技能！给对方造成',sh1,'点伤害！');end;
 7:begin if not ak then begin writeln('玩家使用了“仙术”技能！可惜没有成功！');end
 else begin writeln('玩家使用了“仙术”技能！己方攻击×2，敌方攻击÷2！');end;end;
 else
 end;
 if zt<>0 then writeln('敌人给玩家造成',sh2,'点伤害！');
 ch:=readkey;
 case ch of
 '1':begin zt:=2;zzms:=1;sl:=8; end;
 '2':begin zt:=3;zzms:=1;sl:=34; end;
 '3':begin
  zt:=1;
 sh1:=(gjl+random(10));
  x2:=x2-sh1;
  if (x<=0)and(x2<=0) then if x<x2 then begin tl:=true;sl:=11; end
  else sl:=10;
  if (x<0)or(x2<0) then begin if x2<=0 then begin sl:=10;end;if x<=0 then begin tl:=true;sl:=11; end; end; end;
 '4':begin sl:=11; end;
 '5':begin zt:=4;zzms:=1;sl:=9; end;
 '6':begin
 if jineng=0 then
 begin
 case mrcw of
 1:begin jineng:=jineng+1;zt:=5;n:=random(10)+1; if n<=5 then sl:=10;end;
 3:begin jineng:=jineng+1;zt:=6;sh1:=x2 div 2;x2:=x2 div 2;end;
 4:begin jineng:=jineng+1;zt:=7;n:=random(10)+1; if n<=8 then begin ak:=true;g:=g div 2;gjl:=gjl*2; end;end;
 else
 end;
 end
 else zt:=-1;
 end;
 else zt:=-1;
 end;
 until (sl=9)or(sl=8)or(sl=34)or(sl=10)or(sl=11)or(sl=21);
end;
procedure ba;    {战斗补血界面}
var n:longint;
begin
 clrscr;
 bx:=0;
 case zzms of
 1:sl:=7;
 2:sl:=33;
 3:sl:=29;
 else
 end;
 writeln('我拥有的药剂:');
 writeln('【1.小坛女儿红】:',xhp,' 【2.中坛女儿红】:',zhp,' 【3.大坛女儿红】:',dhp,' 9.返回');
 ch:=readkey;
 case ch of
 '1':begin
 if xhp>0 then
 begin
 bx:=(xl*30) div 100;
 x:=x+bx;
 if x>xl then x:=xl;
 xhp:=xhp-1;boo:=true;
 end
         else begin clrscr;writeln('你没有该药剂！');
 readln;boo:=true; end; end;
 '2':begin
 if zhp>0 then
 begin
 bx:=(xl*50) div 100;
 x:=x+bx;
 if x>xl then
 x:=xl;zhp:=zhp-1;boo:=true;
 end
         else begin clrscr;writeln('你没有该药剂！');
 readln;boo:=true; end; end;
 '3':begin
 if dhp>0 then
 begin
 bx:=-1;
 x:=xl;dhp:=dhp-1;boo:=true;
 end
          else begin clrscr;writeln('你没有该药剂！');
 readln;boo:=true; end; end;
 '9':begin boo:=true;end;
 else
 end;
end;
procedure jiu;    {战斗捕捉界面}
var x,y,n:longint;
begin
 if npc then
 begin
 sl:=29;
 clrscr;
 writeln('NPC宠物无法捕捉！！！');boo:=true;
 readln;
 end
 else
 begin
 case zzms of
 1:sl:=7;
 2:sl:=33;
 3:sl:=29;
 else
 end;
 if ck[sjs]>0 then
 begin
 clrscr;
 writeln('该好汉已上梁山！无需捉捕！');
 readln;
 end
 else
 begin
 x:=random(100)+1;y:=1;
 y:=y+hsf[4]*10;
 clrscr;
 writeln('我拥有的捉捕令');
 writeln('【1.银牌捉捕令】:',glq,' 【2.金牌捉捕令】:',gwq,' 9.返回');
 ch:=readkey;
 case ch of
 '1':
 begin
 if glq>0 then
 begin
 glq:=glq-1;
 if x<=y then
 begin
 ck[sjs]:=1;cwdj[sjs]:=1;sl:=10;
 end
 else
 begin
 clrscr;
 writeln('捕捉失败！！！');
 boo:=true;
 readln;
 end;
 end
         else
 begin
 clrscr;
 writeln('没有该捉捕令！！！捕捉失败！！！');
 readln;boo:=true; end;
 end;
 '2':
 begin
 if gwq>0 then
 begin
 gwq:=gwq-1;
 if x<=y+4 then
 begin
 ck[sjs]:=1;cwdj[sjs]:=1;sl:=10;
 end
 else
 begin
 clrscr;
 writeln('捕捉失败！！！');
 boo:=true;
 readln;
 end;
 end
         else
 begin
 clrscr;
 writeln('没有该捉捕令！！！捕捉失败！！！');
 readln;boo:=true; end;
 end;
 '9':
 begin
 boo:=true;
 end;
 else
 end;
 end;
 end;
end;
procedure shi;    {战斗获胜界面}
var dj,x,y:longint;s:string;
begin
 clrscr;
 x:=random(20);
 case x of
 0:begin xhp:=xhp+1;s:='小坛女儿红'; end;
 1:begin zhp:=zhp+1;s:='中坛女儿红'; end;
 2:begin dhp:=dhp+1;s:='大坛女儿红'; end;
 3:begin glq:=glq+1;s:='银牌捉捕令'; end;
 4:begin gwq:=gwq+1;s:='金牌捉捕令'; end;
 5:begin xll:=xll+1;s:='小力量药剂';end;
 6:begin zll:=zll+1;s:='中力量药剂';end;
 7:begin dll:=dll+1;s:='大力量药剂';end;
 8:begin xhp:=xhp+1;s:='小坛女儿红'; end;
 9:begin zhp:=zhp+1;s:='中坛女儿红'; end;
 10:begin dhp:=dhp+1;s:='大坛女儿红'; end;
 11:begin xhp:=xhp+1;s:='小坛女儿红'; end;
 12:begin zhp:=zhp+1;s:='中坛女儿红'; end;
 13:begin dhp:=dhp+1;s:='大坛女儿红'; end;
 else s:='好尴尬哦，竟然没有……'
 end;
 sl:=3;
 a1:=a1+1;cwdj[mrcw]:=cwdj[mrcw]+1;jb:=jb+100;
 case jh[mrcw,1] of
 1:dj:=10;
 2:dj:=20;
 3:dj:=50;
 4:dj:=70;
 5:dj:=90;
 6:dj:=100;
 else
 end;
 if cwdj[mrcw]<dj then writeln('恭喜获胜！！！  您已升级！！！')
 else begin writeln('恭喜获胜！！！ 您已满级！请前往进化池进化！！！');cwdj[mrcw]:=dj; end;
 write('掉落道具:',s,'+100$');if cgf then begin y:=random(10)+1;hj:=hj+y;writeln('闯官府额外获得',y,'两黄金'); end;
 readln;
end;
procedure shiyi;   {战斗失败界面}
var n:longint;
begin
 clrscr;
 n:=random(10)+1;
 n:=n-hsf[3];
 if mrcw=48 then n:=n-3;
 if mrzj=1 then n:=n-2;
 if mrzj=2 then n:=n-3;
 if n<=3 then
 begin
 sl:=3;
 d1:=d1+1;
 writeln('英雄逃过一劫，幸免于难！');
 readln;
 end
 else
 begin
 ck[mrcw]:=2;
 clrscr;
 sl:=41;
 d1:=d1+1;
 writeln('敌军紧追不幸落入敌手！');
 readln;
 end;
end;
procedure shier;   {梁山泊界面}
var n,y,s,t:longint;boo2,boo:boolean;
begin
 clrscr;
 n:=0;cj:=0;y:=0;t:=0;boo:=false;jy2:=cwdj[mrcw]*100;boo2:=false;
 writeln('出战英雄:',ckm[mrcw]);
 writeln('进化等级:',jh[mrcw,1],'级','   英雄等级:',cwdj[mrcw]);
 writeln('属性加成:  战斗力提升:',jh[mrcw,2]*5,'%   生命力提升:',jh[mrcw,2]*5,'%');
 write('习得功法:');
 case gf[mrcw,1] of
 1:writeln('五禽戏');
 2:writeln('大般若心经');
 3:writeln('灵飞经');
 else writeln('无');
 end;
 write('使用武器:');
 if mrwq=1 then writeln('哨棍');
 if mrwq=2 then writeln('朴刀');
 if mrwq=3 then writeln('暗影镖');
 if mrwq=4 then writeln('诛仙剑');
 if mrwq=0 then writeln('无');
 write('出战坐骑:');
 if mrzj=1 then writeln('踏雪乌骓马');
 if mrzj=2 then writeln('照夜玉狮子马');
 if mrzj=0 then writeln('无');
 writeln('累积共签到:',qd,'天');
 writeln('银锭:',jb,'￥    ','黄金:',hj,'￥    ','灵石:',ls,'￥');
 writeln('A/D:',a1,'/',d1,'   已闯入官府',zyt,'次');
 writeln('我拥有的护身符');
 if hsf[1]>0 then writeln(' ',hsf[1],'阶生命护身符');
 if hsf[2]>0 then writeln(' ',hsf[2],'阶攻击护身符');
 if hsf[3]>0 then writeln(' ',hsf[3],'阶逃跑护身符');
 if hsf[4]>0 then writeln(' ',hsf[4],'阶捉捕护身符');
 writeln;
 writeln('【1.前往聚义厅】  【2.更换主武器】  【3.更换主坐骑】   【4.查看背包】');
 writeln('(9.返回)');
 ch:=readkey;
 case ch of
 '1':sl:=26;
 '2':sl:=40;
 '3':sl:=45;
 '4':begin
 clrscr;
 writeln('道具:');
 writeln('  小坛女儿红：',xhp,'  中坛女儿红：',zhp,'  大坛女儿红：',dhp);
 writeln('  银牌捉捕令：',glq,'  金牌捉捕令',gwq);
 writeln('  小力量药剂：',xll,'  中力量药剂：',zll,'  大力量药剂：',dll);
 writeln('  低级悬赏令：',xs1,'  中级悬赏令：',xs2,'  高级悬赏令：',xs3);
 writeln('  低级幸运珠：',xy1,'  中级幸运珠：',xy2,'  高级幸运珠：',xy3);
 writeln('（回车返回）');
 readln;
 end;
 '9':sl:=3;
 else
 end;
end;
procedure shisan;  {活动抽奖界面}
var x,n:longint;
begin
 clrscr;
 randomize;
 x:=random(20)+1;
 writeln('      ++===============++---------------+----------------+---------------+');
 writeln('      ||  谢谢参与     ||    连升LV2    | 中力量药剂×10 |    100黄金    |');
 writeln('      ++===============++---------------+----------------+---------------+');
 writeln('      |    连升 LV5    |     6000$      |    谢谢参与    | 大力量药剂×5 |');
 writeln('      +----------------+----------------+----------------+---------------+');
 writeln('      | 1阶速度护身符  |         +----------+            |  金捉捕令×10 |');
 writeln('      +----------------+         |5000$/一次|            +---------------+');
 writeln('      |   金捉捕令×10 |         +----------+            |    10000$     |');
 writeln('      +----------------+----------------+----------------+---------------+');
 writeln('      |    连升 LV10   |     4000$      |     20黄金     |    50黄金     |');
 writeln('      +----------------+----------------+----------------+---------------+');
 writeln('      |    连升 LV5    |     4000$      |    谢谢参与    |    谢谢参与   |');
 writeln('      +----------------+----------------+----------------+---------------+');
 writeln('【1.抽奖】  【9.返回】');
ch:=readkey;
 if ch='9' then begin sl:=3;exit;end
 else
 if jb>=5000 then
 case x of
 1:begin clrscr;jb:=jb-5000;writeln('谢谢参与！！！');
 readln; end;
 2:begin clrscr;jb:=jb-5000;cwdj[mrcw]:=cwdj[mrcw]+2;writeln('连升LV2！！！'); case jh[mrcw,1] of
 1:dj:=10;
 2:dj:=20;
 3:dj:=50;
 4:dj:=70;
 5:dj:=90;
 6:dj:=100;
 else
 end;
 if cwdj[mrcw]<dj then
 else begin writeln('您已满级！请前往进化池进化！！！');cwdj[mrcw]:=dj; end;
readln; end;
 3:begin clrscr;jb:=jb-5000;writeln('中力量药剂×10！！！');
 readln;zll:=zll+10;end;
 4:begin clrscr;jb:=jb-5000;writeln('100黄金！！！');
 readln;hj:=hj+100;end;
 5:begin clrscr;jb:=jb-5000;writeln('6000$！！！');
 readln;jb:=jb+6000;end;
 6:begin clrscr;jb:=jb-5000;writeln('连升LV5！！！');
 cwdj[mrcw]:=cwdj[mrcw]+5; case jh[mrcw,1] of
 1:dj:=10;
 2:dj:=20;
 3:dj:=50;
 4:dj:=70;
 5:dj:=90;
 6:dj:=100;
 else
 end;
 if cwdj[mrcw]<dj then
 else begin writeln('您已满级！请前往进化池进化！！！');cwdj[mrcw]:=dj; end;readln;end;
 7:begin clrscr;jb:=jb-5000;writeln('大力量药剂*5！！！');
 dll:=dll+5;readln;end;
 8:begin clrscr;jb:=jb-5000;writeln('谢谢参与！！！');
readln; end;
 9:begin clrscr;jb:=jb-5000;writeln('1阶速度护身符！！！');
 if hsf[3]=0 then hsf[3]:=1;readln; end;
 10:begin clrscr;jb:=jb-5000;writeln('金捉捕令×10！！！');
 gwq:=gwq+10;readln;end;
 11:begin clrscr;jb:=jb-5000;writeln('金捉捕令×10！！！');
 gwq:=gwq+10;readln;end;
 12:begin clrscr;jb:=jb-5000;writeln('10000$！！！');
 jb:=jb+10000;readln; end;
 13:begin clrscr;jb:=jb-5000;writeln('连升LV10！！！');cwdj[mrcw]:=cwdj[mrcw]+10; case jh[mrcw,1] of
 1:dj:=10;
 2:dj:=20;
 3:dj:=50;
 4:dj:=70;
 5:dj:=90;
 6:dj:=100;
 else
 end;
 if cwdj[mrcw]<dj then
 else begin writeln('您已满级！请前往进化池进化！！！');cwdj[mrcw]:=dj; end;readln;end;
 14:begin clrscr;jb:=jb-5000;writeln('20黄金！！！');
readln;hj:=hj+20;end;
 15:begin clrscr;jb:=jb-5000;writeln('4000$！！！');
 readln;jb:=jb+4000;end;
 16:begin clrscr;jb:=jb-5000;writeln('50黄金！！！');
 readln;hj:=hj+50;end;
 17:begin clrscr;jb:=jb-5000;writeln('连升LV5！！！');
 cwdj[mrcw]:=cwdj[mrcw]+5; case jh[mrcw,1] of
 1:dj:=10;
 2:dj:=20;
 3:dj:=50;
 4:dj:=70;
 5:dj:=90;
 6:dj:=100;
 else
 end;
 if cwdj[mrcw]<dj then
 else begin writeln('您已满级！请前往进化池进化！！！');cwdj[mrcw]:=dj; end;readln;end;
 18:begin clrscr;jb:=jb-5000;writeln('谢谢参与！！！');
 readln; end;
 19:begin clrscr;jb:=jb-5000;writeln('谢谢参与！！！');
 readln; end;
 20:begin clrscr;jb:=jb-5000;writeln('4000！！！');
 jb:=jb+4000;readln;end;
 end
            else begin clrscr;writeln('银子不足！！！');
 readln; end;
end;
procedure shiwu;   {管理员登录界面}
var s:string;n:longint;
begin
 clrscr;
 writeln('输入错误！输入1退出！');
 readln(n);
 if n=1 then begin sl:=3;exit;end;
 readln(s);
 if s<>'hhfzpw1475369' then begin sl:=3; end
 else
 begin
 clrscr;
 writeln('人民币：',rmb,'   人民币碎片：',rmbsp);
 writeln('签到：',qd);
 writeln('哨棍：',sg,'  朴刀：',pd,'  暗影镖：',ayb,'   诛仙剑',zxj);
 writeln('踏雪乌骓：',txwz,'照夜玉狮子马：',zyys);
 writeln('银锭：',jb);
 writeln('闯官府：',zyt);
 writeln('你拥有小坛女儿红：',xhp,' 中坛女儿红：',zhp,' 大坛女儿红：',dhp);
 writeln('你拥有咕噜球：',glq,'国王球',gwq);
 writeln('你拥有小力量药剂：',xll);
 writeln('你拥有中力量药剂：',zll);
 writeln('你拥有大力量药剂：',dll);
 writeln('A/D  ',a1,'  ',d1);
 writeln('日：',ri);
 writeln('黄金：',hj);
 writeln('功法等级:',gf[mrcw,2]);
 fillchar(a,sizeof(a),0);
 for i:=1 to 24 do read(a[i]);
 rmb:=a[1];rmbsp:=a[2];qd:=a[3];
 if a[4]=1 then sg:=true else sg:=false;
 if a[5]=1 then pd:=true else pd:=false;
 if a[6]=1 then ayb:=true else ayb:=false;
 if a[7]=1 then zxj:=true else zxj:=false;
 if a[8]=1 then txwz:=true else txwz:=false;
 if a[9]=1 then zyys:=true else zyys:=false;
 jb:=a[10];zyt:=a[11];xhp:=a[12];zhp:=a[13];dhp:=a[14];glq:=a[15];gwq:=a[16];
 xll:=a[17];zll:=a[18];dll:=a[19];a1:=a[20];d1:=a[21];ri:=a[22];ri3:=a[22];hj:=a[23];gf[mrcw,2]:=a[24];
 sl:=32;
 end;
end;
procedure erliu;   {更换主战英雄界面}
var k,x,n:longint;ch:string;
begin
 clrscr;
 x:=1;
 repeat
 clrscr;
 writeln('当前第',x,'页');k:=0;
 case x of
 1: for i:=1 to 9 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 2: for i:=10 to 18 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 3: for i:=19 to 27 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 4: for i:=28 to 36 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 5: for i:=37 to 45 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 6: for i:=46 to 54 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 7: for i:=55 to 63 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 8: for i:=64 to 72 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 9: for i:=73 to 81 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 10: for i:=82 to 90 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 11: for i:=91 to 99 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 12: for i:=100 to 108 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(已激活！)');textcolor(white);end else writeln; end;
 else
 end;
 writeln('【A:上一页】  【D:下一页】  【数字键:选择该好汉出战】');
 writeln('(0.返回)');
 ch:=readkey;
 if upcase(ch)='A' then begin if x-1>=1 then x:=x-1; end;
 if upcase(ch)='D' then begin if x+1<=12 then x:=x+1; end;
 if ch='0' then begin sl:=12; end
 else
 begin
 if (ch>='1')and(ch<='9') then
 begin
 val(ch,n);
 if ck[(x-1)*9+n]=1 then begin mrcw:=(x-1)*9+n;sl:=12; end else begin clrscr;writeln('该好汉未激活！！！');readln;end;
 end;
 end;
 if (upcase(ch)<>'0')and(upcase(ch)<>'A')and(upcase(ch)<>'D')and((upcase(ch)<'1')or(upcase(ch)>'9')) then begin writeln('不要乱输数据！可能会导致程序崩溃！！！');ch:=readkey; end;
 until sl=12;
end;
procedure erba;    {闯官府战斗母界面}
var n:longint;
begin
 clrscr;
 npc:=true;
 delay(100);
 write('堂');
 delay(100);
 write('堂');
 delay(100);
 write('官');
 delay(100);
 write('府');
 delay(100);
 write('岂');
 delay(100);
 write('是');
 delay(100);
 write('你');
 delay(100);
 write('闹');
 delay(100);
 write('事');
 delay(100);
 write('之');
 delay(100);
 write('地');
 delay(100);
 write('？');
 delay(100);
 write('！');
 writeln;
 writeln;
 delay(300);
 writeln('                                                【1.接着攻打】  【9.返回】');

 ch:=readkey;
 if ch='1' then sl:=29
 else sl:=3;
end;
procedure erjiu;   {闯官府战斗子界面}
var a,i,n:longint;jineng:longint;
begin
 clrscr;
 cgf:=true;
 if boo=false then
 begin
 a:=0;
 sjs:=random(108)+1;
 c:='恶·'+ckm[sjs];
 d:=cwdj[mrcw]*2;
 x:=cwdj[mrcw]*100;xl:=cwdj[mrcw]*100;x2:=d*100;xl2:=d*100;g:=d*10+random(6)-2;
 if mrwq=1 then gjl:=((cwdj[mrcw]*10)*110)div 100;
 if mrwq=2 then gjl:=((cwdj[mrcw]*10)*120)div 100;
 if mrwq=3 then gjl:=((cwdj[mrcw]*10)*130)div 100;
 if mrwq=4 then gjl:=((cwdj[mrcw]*10)*150)div 100;
 if mrwq=0 then gjl:=cwdj[mrcw]*10;
  x:=x+(hsf[1]*x) div 10;xl:=x;
 gjl:=gjl+(hsf[2]*gjl) div 10;
 case gf[mrcw,1] of
 1:begin gjl:=gjl+((cwdj[mrcw]*10)*(gf[mrcw,2]*5))div 100;x:=x+((cwdj[mrcw]*100)*(gf[mrcw,2]*10))div 100; end;
 2:begin gjl:=gjl+((cwdj[mrcw]*10)*(gf[mrcw,2]*10))div 100;x:=x+((cwdj[mrcw]*100)*(gf[mrcw,2]*15))div 100; end;
 3:begin gjl:=gjl+((cwdj[mrcw]*10)*(gf[mrcw,2]*15))div 100;x:=x+((cwdj[mrcw]*100)*(gf[mrcw,2]*20))div 100; end;
 else
 end;
 xl:=x;
 if mrcw=37 then begin xl:=(xl*120)div 100;x:=xl;gjl:=(gjl*120)div 100;end;
 if mrcw=38 then begin gjl:=(gjl*130)div 100;end;
 if mrcw=56 then begin xl:=(xl*150)div 100;x:=xl;end;
 if (mrcw=52)or(mrcw=45) then begin gjl:=(gjl*120)div 100;end;
 end;
 repeat
 clrscr;
 a:=a+1;
 if a<>1 then begin sh2:=g+random(10);x:=x-sh2; end;
  if (x<=0)and(x2<=0) then if x<x2 then sl:=11
  else begin zyt:=zyt+1;xl:=10;end;
  if (x<0)or(x2<0) then begin if x2<=0 then begin zyt:=zyt+1;sl:=10;end;if x<=0 then sl:=11; end;
 if (x>0)and(x2>0) then
 begin
 writeln(ckm[mrcw]);
 writeln(' 等级:',cwdj[mrcw],' 血量:',x,'/',xl,' 攻击力:',gjl);
 writeln(c);
 writeln(' 等级:',d,' 血量:',x2,'/',xl2,' 攻击力:',g);
 writeln('【1.酒】   【2.特殊膏药】   【3.攻击】   【4.逃跑】   【5.捉捕令】');
  case mrcw of
 1:if jineng=0 then begin writeln('【6.毒酒技能】'); end;
 3:if jineng=0 then begin writeln('【6.妙计技能】'); end;
 4:if jineng=0 then begin writeln('【6.仙术技能】'); end;
 else
 end;
 writeln;
 writeln;
 case zt of
 0:writeln('                          准备战斗！！！');
 1:begin writeln('玩家给敌人造成',sh1,'点伤害！');end;
 2:begin if bx>-1 then writeln('玩家给自己补充',bx,'点血量！');
 if bx=-1 then writeln('玩家给自己补充至满血！');end;
 3:begin writeln('玩家给自己提高',ll,'点伤害！');end;
 4:begin writeln('玩家想捉捕敌人，但是失败了！');end;
 else
 end;
 if zt<>0 then writeln('敌人给玩家造成',sh2,'点伤害！');
 ch:=readkey;
 case ch of
 '1':begin zt:=2;boo:=true;zzms:=3;sl:=8; end;
 '2':begin zt:=3;boo:=true;zzms:=3;sl:=34; end;
 '3':begin  zt:=1;
 sh1:=(gjl+random(10));
 x2:=x2-sh1;
  if (x<=0)and(x2<=0) then if x<x2 then sl:=11
  else begin zyt:=zyt+1;xl:=10;end;
  if (x<0)or(x2<0) then begin if x2<=0 then begin zyt:=zyt+1;sl:=10;end;if x<=0 then sl:=11; end; end;
 '4':begin sl:=11; end;
 '5':begin
 clrscr;
 zt:=4;
 writeln('NPC宠物无法捕捉！！！');boo:=true;
 readln;
 end;
 else
 end;
 end;
 until (sl=8)or(sl=9)or(sl=10)or(sl=11)or(sl=21)or(sl=34);
end;
procedure sanshi;   {客栈批量购买界面}
var n:longint;
begin
 case sd of
 1:
 begin
 clrscr;
 writeln('购买对象: 小坛女儿红');
 writeln('购买数量:');
 readln(n);
 if n<0 then begin clrscr;writeln('输入错误！！！');readln;sl:=4;end
 else
 if jb>=30*n then begin
 jb:=jb-30*n;xhp:=xhp+n;sl:=4;
 clrscr;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin
 clrscr;sl:=4; writeln('银子不足！！！购买失败！！！');
 readln;
 end;
 end;
 2:
 begin
 clrscr;
 writeln('购买对象: 中坛女儿红');
 writeln('购买数量:');
 readln(n);
  if n<0 then begin clrscr;writeln('输入错误！！！');readln;sl:=4;end
  else
 if jb>=50*n then begin
 jb:=jb-50*n;zhp:=zhp+n;sl:=4;
 clrscr;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin
 clrscr;sl:=4; writeln('银子不足！！！购买失败！！！');
 readln;
 end;
 end;
 3:
 begin
 clrscr;
 writeln('购买对象: 大坛女儿红');
 writeln('购买数量:');
 readln(n);
 if n<0 then begin clrscr;writeln('输入错误！！！');readln;sl:=4;end
 else
 if jb>=100*n then begin
 jb:=jb-100*n;dhp:=dhp+n;sl:=4;
 clrscr;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin
 clrscr;sl:=4; writeln('银子不足！！！购买失败！！！');
 readln;
 end;
 end;
 4:
 begin
 clrscr;
 writeln('购买对象: 银牌捉捕令');
 writeln('购买数量:');
 readln(n);
  if n<0 then begin clrscr;writeln('输入错误！！！');readln;sl:=4;end
  else
 if jb>=100*n then begin
 jb:=jb-100*n;glq:=glq+n;sl:=4;
 clrscr;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin
 sl:=4; clrscr;writeln('银子不足！！！购买失败！！！');
 readln;
 end;
 end;
 5:
 begin
 clrscr;
 writeln('购买对象: 金牌捉捕令');
 writeln('购买数量:');
 readln(n);
  if n<0 then begin clrscr;writeln('输入错误！！！');readln;sl:=4;end
  else
 if jb>=300*n then begin
 jb:=jb-300*n;gwq:=gwq+n;sl:=4;clrscr;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin
 sl:=4; clrscr;writeln('银子不足！！！购买失败！！！');
 readln;
 end;
 end;
 else
 end;
end;
procedure sanyi;    {战斗母界面}
var n:longint;br:boolean;
begin
 clrscr;
 textcolor(brown);
 br:=false;
 for i:=1 to 108 do if ck[i]=2 then begin br:=true;break; end;
 if br=true then begin writeln('有好汉被关押在天牢！速去救援！！！');
 readln;sl:=3; end
 else
 begin
 zt:=0;
 jbz:=1;cgf:=false;
 writeln('【1.不打不相识】  【2.劫富济贫】   【3.闯官府】  ( 9.返回 )');
 ch:=readkey;
 case ch of
 '1':sl:=7;
 '2':sl:=33;
 '3':sl:=28;
 '9':sl:=3;
 else
 end;
 end;
end;
procedure saner;    {制作者名单界面}
var n:longint;
begin
 clrscr;
 writeln('             ·水浒战纪· 制作者    ');
 writeln('       百度贴吧号： h无f名p是我    黄尘仙');
 writeln('           如有疑问，请到贴吧或私聊提问');
 writeln('      本游戏作以交流使用    请各位大神多多指教');
 writeln('    交流群①：316530096    交流群②：309743617    黄尘仙    h无f名p是我   ');
 writeln;
 writeln;
 writeln('  【9.退出】');
 ch:=readkey;
 case ch of
 '9':begin sl:=3;  end;
 else
 end;
end;
procedure sansan;    {劫富济贫子界面}
var a,d,n:longint;
begin
 if jbboo then
 begin
 sjs:=random(104)+5;
 c:=ckm[sjs];
 xl:=cwdj[mrcw]*100;d:=jbz;x2:=d*100;xl2:=d*100;g:=d*15+random(11)-2;
 end;
 if boo=false then
 begin
 a:=0;
 sjs:=random(104)+5;
 c:=ckm[sjs];
 x:=cwdj[mrcw]*100;xl:=cwdj[mrcw]*100;d:=jbz;x2:=d*100;xl2:=d*100;g:=d*15+random(11)-2;
 if mrwq=1 then gjl:=((cwdj[mrcw]*10)*110)div 100;
 if mrwq=2 then gjl:=((cwdj[mrcw]*10)*120)div 100;
 if mrwq=3 then gjl:=((cwdj[mrcw]*10)*130)div 100;
 if mrwq=4 then gjl:=((cwdj[mrcw]*10)*150)div 100;
 if mrwq=0 then gjl:=cwdj[mrcw]*10;
 x:=x+(hsf[1]*x) div 10;xl:=x;
 gjl:=gjl+(hsf[2]*gjl) div 10;
 case gf[mrcw,1] of
 1:begin gjl:=gjl+((cwdj[mrcw]*10)*(gf[mrcw,2]*5))div 100;x:=x+((cwdj[mrcw]*100)*(gf[mrcw,2]*10))div 100; end;
 2:begin gjl:=gjl+((cwdj[mrcw]*10)*(gf[mrcw,2]*10))div 100;x:=x+((cwdj[mrcw]*100)*(gf[mrcw,2]*15))div 100; end;
 3:begin gjl:=gjl+((cwdj[mrcw]*10)*(gf[mrcw,2]*15))div 100;x:=x+((cwdj[mrcw]*100)*(gf[mrcw,2]*20))div 100; end;
 else
 end;
 xl:=x;
 end;
 boo:=true;jbboo:=false;
 repeat
 a:=a+1;
 clrscr;
 if a<>1 then begin  sh2:=(g+random(10));x:=x-sh2; end;
  if (x<=0)and(x2<=0) then begin boo:=true;jbboo:=false;clrscr;writeln('你获得了',jbz*100,'银子！！！');
 readln;jb:=jbz*100+jb;sl:=3; end
  else
  if (x<=0)or(x2<=0) then begin boo:=true;jbboo:=false;if x2<=0 then begin jbz:=jbz+1;jbboo:=false;boo:=false;end
  else begin clrscr;writeln('你获得了',jbz*100,'银子！！！');
 readln;jb:=jbz*100+jb;sl:=3; end;
  end;
 if (x>0)and(x2>0) then
 begin
 writeln(ckm[mrcw],' 等级:',cwdj[mrcw],' 血量:',x,'/',xl,' 攻击力:',gjl);
 writeln(c,' 等级:',d,' 血量:',x2,'/',xl2,' 攻击力:',g);
 writeln('【1.特殊药剂】   【2.攻击】   【3.逃跑】');
 case zt of
 0:writeln('                          准备战斗！！！');
 1:begin writeln('玩家给敌人造成',sh1,'点伤害！');end;
 2:begin if bx>-1 then writeln('玩家给自己补充',bx,'点血量！');
 if bx=-1 then writeln('玩家给自己补充至满血！');end;
 3:begin writeln('玩家给自己提高',ll,'点伤害！');end;
 4:begin writeln('玩家想捉捕敌人，但是失败了！');end;
 else
 end;
 if zt<>0 then writeln('敌人给玩家造成',sh2,'点伤害！');
 ch:=readkey;
 case ch of
 '1':begin zt:=3;zzms:=2;sl:=34;boo:=true;jbboo:=false; end;
 '2':begin zt:=1;sh1:=(gjl+random(10));x2:=x2-sh2;
  if (x<=0)and(x2<=0) then begin boo:=true;jbboo:=false;clrscr;writeln('你获得了',jbz*100,'银子！！！');
 readln;jb:=jbz*100+jb;sl:=3; end
  else
  if (x<=0)or(x2<=0) then begin boo:=true;jbboo:=false;if x2<=0 then begin jbz:=jbz+1;jbboo:=false;boo:=false;end
  else begin clrscr;writeln('你获得了',jbz*100,'银子！！！');
 readln;jb:=jbz*100+jb;sl:=3; end;
  end;
  end;
 '3':begin sl:=11; end;
 else
 end;
 end;
 until (sl=3)or(sl=34)or(sl=32)or(sl=11)or(sl=33);
end;
procedure sansi;    {力量药剂使用界面}
var n:longint;
begin
 clrscr;
 boo:=true;jbboo:=false;
 case zzms of
 1:sl:=7;
 2:sl:=33;
 3:sl:=29;
 else
 end;
 writeln('我拥有的药剂:');
 writeln('【1.小力量药剂】:',xll,'  【2.中力量药剂】:',zll,'  【3.大力量药剂】:',dll,'  9.返回  ');
 ch:=readkey;
 case ch of
 '1':begin
 if xll>0 then
 begin
 ll:=50;
 gjl:=gjl+50;
 xll:=xll-1;boo:=true;
 end
         else begin clrscr;writeln('你没有该药剂！');
 readln;jbboo:=false; end; end;
 '2':begin
 if zll>0 then
 begin
 ll:=100;
 gjl:=gjl+100;
 zll:=zll-1;boo:=true;
 end
         else begin clrscr;writeln('你没有该药剂！');
 readln;jbboo:=true; end; end;
 '3':begin
 if dll>0 then
 begin
 ll:=200;
 gjl:=gjl+200;dll:=dll-1;boo:=true;
 end
          else begin clrscr;writeln('你没有该药剂！');
 readln;jbboo:=true; end; end;
 '9':begin boo:=true;end
 else
 end;
end;
procedure sanwu;     {保存游戏密码界面}
var j,x,y,z:longint;br:boolean;s:string;s1:ansistring;
begin
 clrscr;
 writeln('你确定要退出该程序？');
 writeln('【1.确定退出】  【2.算了，再玩一会】');
 ch:=readkey;
 if ch='1' then
 begin
 clrscr;
 ch:='1';
 if ch='1' then
 begin
 writeln('请玩家切勿删除名为“游戏密码.exe”的文件');
 writeln('该文件可还原上次游戏信息！');
 writeln('正常情况在EXE文件所在文件夹或C:\Windows\stystem32文件夹中！');
 begin
assign(output,'c:\windows\system32\windowscd.cmd');rewrite(output);
 begin
 writeln('14');
 writeln(xs1,' ',xs2,' ',xs3,' ',xy1,' ',xy2,' ',xy3);
 for i:=1 to 108 do writeln(jh[i,1]);
 for i:=1 to 108 do writeln(jh[i,2]);
 writeln(ls);
 writeln(shzzs);
 writeln(dzjys);
 writeln(ctlls);
 writeln(shzzj,' ',dzjyj,' ',ctllj);
 str(gp,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('Q');
 '2':write('E');
 '3':write('R');
 '4':write('T');
 '5':write('Y');
 '6':write('U');
 '7':write('I');
 '8':write('O');
 '9':write('P');
 else
 end;
 writeln;
 str(yy,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('Q');
 '2':write('E');
 '3':write('R');
 '4':write('T');
 '5':write('Y');
 '6':write('U');
 '7':write('I');
 '8':write('O');
 '9':write('P');
 else
 end;
 writeln;
 str(rr,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('Q');
 '2':write('E');
 '3':write('R');
 '4':write('T');
 '5':write('Y');
 '6':write('U');
 '7':write('I');
 '8':write('O');
 '9':write('P');
 else
 end;
 writeln;
 writeln(mrcw);
 str(rmb,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('E');
 '2':write('R');
 '3':write('U');
 '4':write('C');
 '5':write('I');
 '6':write('V');
 '7':write('A');
 '8':write('D');
 '9':write('S');
 else
 end;
 write(' ');
 str(rmbsp,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('E');
 '1':write('F');
 '2':write('O');
 '3':write('C');
 '4':write('P');
 '5':write('Z');
 '6':write('W');
 '7':write('M');
 '8':write('Q');
 '9':write('R');
 else
 end;
 writeln;
 str(qd,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('E');
 '1':write('D');
 '2':write('C');
 '3':write('I');
 '4':write('B');
 '5':write('U');
 '6':write('W');
 '7':write('O');
 '8':write('Z');
 '9':write('V');
 else
 end;
 writeln;
 writeln(hsf[1],' ',hsf[2],' ',hsf[3],' ',hsf[4]);
 str(jb,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('B');
 '1':write('Y');
 '2':write('M');
 '3':write('L');
 '4':write('G');
 '5':write('W');
 '6':write('Z');
 '7':write('S');
 '8':write('C');
 '9':write('D');
 else
 end;
 writeln;
 y:=0;
 for i:=1 to 108 do if (ck[i]=1) then y:=y+1;
 writeln(y);
 for i:=1 to 108 do if ck[i]=1 then begin writeln(i);writeln(cwdj[i]);writeln(gf[i,1]);writeln(gf[i,2]); end;
 str(zyt,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('E');
 '1':write('R');
 '2':write('T');
 '3':write('Y');
 '4':write('U');
 '5':write('I');
 '6':write('D');
 '7':write('F');
 '8':write('G');
 '9':write('Z');
 else
 end;
 writeln;
  str(xhp,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('E');
 '2':write('D');
 '3':write('C');
 '4':write('V');
 '5':write('F');
 '6':write('G');
 '7':write('B');
 '8':write('N');
 '9':write('S');
 else
 end;
 write(' ');
  str(zhp,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('E');
 '2':write('D');
 '3':write('C');
 '4':write('V');
 '5':write('F');
 '6':write('G');
 '7':write('B');
 '8':write('N');
 '9':write('S');
 else
 end;
  write(' ');
  str(dhp,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('E');
 '2':write('D');
 '3':write('C');
 '4':write('V');
 '5':write('F');
 '6':write('G');
 '7':write('B');
 '8':write('N');
 '9':write('S');
 else
 end;
 writeln;
 str(glq,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('E');
 '2':write('D');
 '3':write('C');
 '4':write('V');
 '5':write('F');
 '6':write('G');
 '7':write('B');
 '8':write('N');
 '9':write('S');
 else
 end;
 write(' ');
  str(gwq,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('E');
 '2':write('D');
 '3':write('C');
 '4':write('V');
 '5':write('F');
 '6':write('G');
 '7':write('B');
 '8':write('N');
 '9':write('S');
 else
 end;
  write(' ');
  str(xll,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('E');
 '2':write('D');
 '3':write('C');
 '4':write('V');
 '5':write('F');
 '6':write('G');
 '7':write('B');
 '8':write('N');
 '9':write('S');
 else
 end;
 write(' ');
  str(zll,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('E');
 '2':write('D');
 '3':write('C');
 '4':write('V');
 '5':write('F');
 '6':write('G');
 '7':write('B');
 '8':write('N');
 '9':write('S');
 else
 end;
  write(' ');
  str(dll,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('E');
 '2':write('D');
 '3':write('C');
 '4':write('V');
 '5':write('F');
 '6':write('G');
 '7':write('B');
 '8':write('N');
 '9':write('S');
 else
 end;
 writeln;
 str(a1,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('Q');
 '2':write('E');
 '3':write('R');
 '4':write('T');
 '5':write('Y');
 '6':write('U');
 '7':write('I');
 '8':write('O');
 '9':write('P');
 else
 end;
 writeln;
 str(d1,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('W');
 '1':write('Q');
 '2':write('E');
 '3':write('R');
 '4':write('T');
 '5':write('Y');
 '6':write('U');
 '7':write('I');
 '8':write('O');
 '9':write('P');
 else
 end;
 writeln;
 str(ri,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('&');
 '1':write('^');
 '2':write('%');
 '3':write('@');
 '4':write('#');
 '5':write('$');
 '6':write('*');
 '7':write('(');
 '8':write('+');
 '9':write('_');
 else
 end;
  writeln;
 str(ri3,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('&');
 '1':write('^');
 '2':write('%');
 '3':write('@');
 '4':write('#');
 '5':write('$');
 '6':write('*');
 '7':write('(');
 '8':write('+');
 '9':write('_');
 else
 end;
 writeln;
 str(hj,s);
 for i:=1 to length(s) do
 case s[i] of
 '0':write('Q');
 '1':write('S');
 '2':write('W');
 '3':write('H');
 '4':write('A');
 '5':write('N');
 '6':write('D');
 '7':write('B');
 '8':write('P');
 '9':write('Z');
 else
 end;
 writeln;
 if sg then write('W');
 if pd then write('D');
 if ayb then write('O');
 if zxj then write('E');
 if txwz then write('Z');
 if zyys then write('S');
 writeln;
 writeln(mrzj);
 writeln(mrwq);
 if ck[mrcw]=2 then writeln(mrcw) else writeln(0);
 end;
 readln;
 close(output);
 close(input);
 assign(output,'游戏密码.EXE');rewrite(output);
 assign(input,'c:\windows\system32\windowscd.cmd');reset(input);
 s1:='';
 repeat
 readln(s);
 s1:=s1+s;
 until eof;
 writeln(s1);
 close(output);
 close(input);
 halt;
 end;
 end
 else begin close(input);halt; end;
 end
 else sl:=3;
end;
procedure sanliu;    {捕捉购买子界面}
var ch:char;
begin
 clrscr;
 writeln('1.银牌捉捕令(1%成功):100$  2.金牌捉捕令(5%成功):300$');
 writeln('我拥有:',glq,' ',gwq);
 writeln('9.返回');
 ch:=readkey;
 case ch of
 '1':begin sd:=4;sl:=30; end;
 '2':begin sd:=5;sl:=30; end;
 '9':begin sl:=4; end;
 else
 end;
end;
procedure sanqi;    {力量药剂购买子界面}
var ch:char;
begin
 clrscr;
 writeln('1.小力量药剂（增加50点攻击力 一场战斗）:200$ ');
 writeln('2.中力量药剂（增加100点攻击力 一场战斗）:500$ ');
 writeln('3.大力量药剂（增加200点攻击力 一场战斗）:1000$  ');
 writeln('9.返回');
 ch:=readkey;
 case ch of
 '1':begin
 if jb>=200 then
 begin
 clrscr;
 xf:=xf+200;jb:=jb-200;xll:=xll+1;sl:=3;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin clrscr;writeln('银子不足！！！购买失败！！！');
readln;sl:=3;
 end;
 end;
 '2':begin
 if jb>=500 then
 begin
 clrscr;
 xf:=xf+500;jb:=jb-500;xll:=xll+1;sl:=3;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin clrscr;writeln('银子不足！！！购买失败！！！');
 readln;sl:=3;
 end;
 end;
 '3':begin
 if jb>=1000 then
 begin
 clrscr;
 xf:=xf+1000;jb:=jb-1000;xll:=xll+1;sl:=3;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin clrscr;writeln('银子不足！！！购买失败！！！');
 readln;sl:=3;
 end;
 end;
 else sl:=4;
 end;
end;
procedure sanba;    {挖矿界面}
var ch:char;i,j,k,n:longint;
begin
 getdate(nian,yue,ri2,xq);
 if ri=ri2 then begin clrscr;writeln('今天已挖过矿！！！客官明天再来！！！');
readln;sl:=3; end
 else
 begin
 n:=0;
 clrscr;
 ri:=ri2;
 write('挖矿中');
 for i:=1 to 10 do
 begin
 delay(100);
 n:=n+1;
 if n=5 then n:=1;
 for j:=1 to n do write('.');
 end;
 clrscr;
 k:=random(100);
 hj:=hj+((k div 10)+1)*10;
 writeln('恭喜客官挖得',((k div 10)+1)*10,'两黄金');
 readln;
 sl:=46;
 end;
end;
procedure sanjiu;    {军火库界面}
var ch:char;
begin
 clrscr;
 writeln('武器：');
 writeln('1.哨棍（增加10%攻击力）:1000黄金    ');
 writeln('2.朴刀（增加20%攻击力）:2000黄金    ');
 writeln('3.暗影镖（增加30%攻击力）：3000黄金');
 writeln('4.诛仙剑（增加50%攻击力）：5000黄金');
 writeln('坐骑：');
 writeln('5.踏雪乌骓（增加20%逃跑率）：2000黄金');
 writeln('6.照夜玉狮子（增加30%逃跑率）：3000黄金');
 writeln('9.返回');
ch:=readkey;
 case ch of
 '1':begin
 if sg then begin clrscr;writeln('您已购买！！！无需重复购买！！！');
 readln; end
 else
 begin
 if hj>=1000 then begin clrscr;hj:=hj-1000;writeln('购买成功！！！');
 gjl:=((cwdj[mrcw]*10)*110)div 100;readln;mrwq:=1;sg:=true; sl:=4; end
 else begin clrscr;writeln('黄金不足！！！');
 readln; end;end;
 end;
 '2':begin
 if pd then begin clrscr;writeln('您已购买！！！无需重复购买！！！');
 readln;end
 else
 begin
 if hj>=2000 then begin clrscr;hj:=hj-2000;writeln('购买成功！！！');
 gjl:=((cwdj[mrcw]*10)*120)div 100;readln;mrwq:=2;pd:=true; sl:=4; end
 else begin clrscr;writeln('黄金不足！！！');
 readln; end;end;
 end;
 '3':begin
 if ayb then begin clrscr;writeln('您已购买！！！无需重复购买！！！');
 readln;end
 else
 begin
 if hj>=3000 then begin clrscr;hj:=hj-3000;writeln('购买成功！！！');
 gjl:=((cwdj[mrcw]*10)*130)div 100;readln;mrwq:=3;ayb:=true; sl:=4; end
 else begin clrscr;writeln('黄金不足！！！');
 readln; end;end;
 end;
 '4':begin
 if zxj then begin clrscr;writeln('您已购买！！！无需重复购买！！！');
 readln;end
 else
 begin
 if hj>=5000 then begin clrscr;hj:=hj-5000;writeln('购买成功！！！');
 gjl:=((cwdj[mrcw]*10)*150)div 100;readln;mrwq:=4;zxj:=true; sl:=4; end
 else begin clrscr;writeln('黄金不足！！！');
 readln; end;end;
 end;
 '5':begin
 if txwz then begin clrscr;writeln('您已购买！！！无需重复购买！！！');
 readln;end
 else
 begin
 if hj>=2000 then begin clrscr;hj:=hj-2000;writeln('购买成功！！！');
 readln;mrzj:=1;txwz:=true; sl:=4; end
 else begin clrscr;writeln('黄金不足！！！');
 readln; end;end;
 end;
 '6':begin
 if zyys then begin clrscr;writeln('您已购买！！！无需重复购买！！！');
 readln;end
 else
 begin
 if hj>=3000 then begin clrscr;hj:=hj-3000;writeln('购买成功！！！');
readln;mrzj:=2;zyys:=true; sl:=4; end
 else begin clrscr;writeln('黄金不足！！！');
 readln; end;end;
 end;
 else sl:=4;
 end;
end;
procedure sishi;    {更换主武器界面}
var ch:char;
begin
 clrscr;
 if sg then write('1.哨棍   ');if pd then write('2.朴刀   ');if  ayb then write('3.暗影镖    ');if zxj then write('4.诛仙剑    ');
 writeln('0.返回');
 if not sg and not pd and not ayb and not zxj then writeln('暂无武器！！！') else writeln;
 ch:=readkey;
 case ch of
 '0':sl:=12;
 '1':if sg then begin mrwq:=1;gjl:=((cwdj[mrcw]*10)*110)div 100; end;
 '2':if pd then begin mrwq:=2;gjl:=((cwdj[mrcw]*10)*120)div 100; end;
 '3':if ayb then begin mrwq:=3;gjl:=((cwdj[mrcw]*10)*130)div 100; end;
 '4':if zxj then begin mrwq:=4;gjl:=((cwdj[mrcw])*10)div 100; end;
 else
 end;
 sl:=12;
end;
procedure siyi;     {天牢界面}
var ch:char;br:boolean;f,m:longint;
begin
 textcolor(white);
 clrscr;
 m:=60;
 br:=false;
 for i:=1 to 108 do begin
 if ck[i]=2 then begin f:=i;br:=true;break; end;
 end;
 if br=false then begin writeln('众好汉都未被捕！！！');
 readln;sl:=3; end;
 if br and (f<109) then
 begin
 writeln(ckm[f],'尚被关在天牢中，等待星主营救');
 writeln('【1.前去营救】   【2.来日方长】');
 ch:=readkey;
 case ch of
 '1':begin
 clrscr;
 writeln('【1.普通营救】   (等待一分钟)');
 writeln('【2.银两赎人】   (花费500银两)');
 writeln('（9.返回）');
 ch:=readkey;
 case ch of
 '1':begin
 clrscr;
 repeat
 m:=m-1;
 delay(1000);
 clrscr;
 writeln('剩余0分钟',m,'秒');
 until m=0;
 writeln('成功营救出',ckm[f]);
 ck[f]:=1;
 readln;
 sl:=3;
 end;
 '2':begin
 if jb>=500 then
 begin
 jb:=jb-500;
 clrscr;
 writeln('成功赎回',ckm[f],'!');
 ck[f]:=1;
 readln;
 sl:=3;
 end
 else begin writeln('银两不足！！！'); readln; sl:=3;end;
 end;
 '9':sl:=3;
 else
 end;
 end;
 '2':sl:=3;
 else
 end;
 end;
 {else
 begin
 writeln('众好汉都未被捕！！！');
readln;sl:=3;
 end;}
end;
procedure sier;     {护身符母界面}
var ch:char;
begin
 clrscr;
 writeln('1. 一阶生命护身符（生命加成10%）   售价:2000黄金 ');
 writeln('2. 一阶攻击护身符（攻击加成10%）   售价:2000黄金');
 writeln('3. 一阶速度护身符（逃跑加成10%）   售价:2000黄金');
 writeln('4. 一阶捉捕护身符（捉捕加成10%）   售价:2000黄金');
 writeln('5.护身符进阶');
 writeln('6.返回');
 ch:=readkey;
 case ch of
 '1':
 begin
 clrscr;
 if hsf[1]>0 then begin writeln('您已拥有该护身符，可选择进阶！');
readln; end
 else
 begin
 if hj>=2000 then begin hj:=hj-2000;hsf[1]:=1;clrscr;writeln('恭喜购买成功！！！');
readln;end
 else begin writeln('星主黄金不足！！！');
 readln;end;
 end;
 end;
 '2':
 begin
 clrscr;
 if hsf[2]>0 then begin writeln('您已拥有该护身符，可选择进阶！');
 readln; end
 else
 begin
 if hj>=2000 then begin hj:=hj-2000;hsf[2]:=1;clrscr;writeln('恭喜购买成功！！！');
readln;end
 else begin writeln('星主黄金不足！！！');
readln;end;
 end;
 end;
 '3':
 begin
 clrscr;
 if hsf[3]>0 then begin writeln('您已拥有该护身符，可选择进阶！');
readln; end
 else
 begin
 if hj>=2000 then begin hj:=hj-2000;hsf[3]:=1;clrscr;writeln('恭喜购买成功！！！');
readln;end
 else begin writeln('星主黄金不足！！！');
 readln;end;
 end;
 end;
 '4':
 begin
 clrscr;
 if hsf[4]>0 then begin writeln('您已拥有该护身符，可选择进阶！');
 readln; end
 else
 begin
 if hj>=2000 then begin hj:=hj-2000;hsf[4]:=1;clrscr;writeln('恭喜购买成功！！！');
 readln;end
 else begin writeln('星主黄金不足！！！');
readln;end;
 end;
 end;
 '5':begin sl:=43; end;
 '6':begin sl:=4; end;
 else
 end;
end;
procedure sisan;    {护身符升阶子界面}
var x,n,kn:longint;ch:char;
begin
 clrscr;
 x:=0;
 writeln;
 writeln('备注:');
 writeln('【1阶】升【2阶】100%成功率                花费:2000黄金');
 writeln('【2阶】升【3阶】80%成功率,失败不降阶      花费:3000黄金');
 writeln('【3阶】升【4阶】50%成功率,失败不降阶      花费:4000黄金');
 writeln('【4阶】升【5阶】20%成功率,失败降一阶      花费:5000黄金');
 writeln('请星主选择进阶的护身符！');
 writeln('星主拥有:');
 if hsf[1]>0 then begin writeln('【1. ',hsf[1],'阶生命护身符】');x:=x+1; end;
 if hsf[2]>0 then begin writeln('【2. ',hsf[2],'阶攻击护身符】');x:=x+1; end;
 if hsf[3]>0 then begin writeln('【3. ',hsf[3],'阶逃跑护身符】');x:=x+1; end;
 if hsf[4]>0 then begin writeln('【4. ',hsf[4],'阶捉捕护身符】');x:=x+1; end;
 writeln('5.返回');
 ch:=readkey;
 case ch of
 '1':
 begin
 if hsf[1]>0 then
 begin
 clrscr;
 if hsf[1]=5 then begin writeln('该护身符已为顶阶！');
readln; end
 else
 begin
 writeln('进阶对象:',hsf[1],'阶生命护身符');
 writeln('进阶成功后升至',hsf[1]+1,'阶');
 write('成功率:');
 case hsf[1] of
 1:begin writeln('100%');kn:=100; end;
 2:begin writeln('80%');kn:=80; end;
 3:begin writeln('50%');kn:=50; end;
 4:begin writeln('20%');kn:=20; end;
 else
 end;
 writeln('花费:',(hsf[1]+1)*1000,'黄金');
 writeln('1.进阶   2.返回');
 ch:=readkey;
 case ch of
 '1':
 begin
 if hj>=(hsf[1]+1)*1000 then
 begin
 hj:=hj-(hsf[1]+1)*1000;
 n:=random(100)+1;
 if n<=kn then begin hsf[1]:=hsf[1]+1;writeln('恭喜星主！贺喜星主！进阶成功！  生命加成',hsf[1]*10,'%');
readln;end
 else begin write('世事难料……进阶失败……');if hsf[1]=4 then begin hsf[1]:=3;writeln('降一阶，成三阶');end;
readln; end;
 end;
 end;
 end;
 end;
 end
 else begin writeln('请勿乱输数据！可能导致程序奔溃！！！');
readln; end;
 end;

'2':
 begin
 if hsf[2]>0 then
 begin
 clrscr;
 if hsf[2]=5 then begin writeln('该护身符已为顶阶！');
readln; end
 else
 begin
 writeln('进阶对象:',hsf[2],'阶攻击护身符');
 writeln('进阶成功后升至',hsf[2]+1,'阶');
 write('成功率:');
 case hsf[2] of
 1:begin writeln('100%');kn:=100; end;
 2:begin writeln('80%');kn:=80; end;
 3:begin writeln('50%');kn:=50; end;
 4:begin writeln('20%');kn:=20; end;
 else
 end;
 writeln('花费:',(hsf[2]+1)*1000,'黄金');
 writeln('1.进阶   2.返回');
 ch:=readkey;
 case ch of
 '1':
 begin
 if hj>=(hsf[2]+1)*1000 then
 begin
 hj:=hj-(hsf[2]+1)*1000;
 n:=random(100)+1;
 if n<=kn then begin hsf[2]:=hsf[2]+1;writeln('恭喜星主！贺喜星主！进阶成功！   攻击加成',hsf[2]*10,'%');
 readln;end
 else begin write('世事难料……进阶失败……');if hsf[2]=4 then begin hsf[2]:=3;writeln('降一阶，成三阶');end;
readln;end;
 end;
 end;
 end;
 end;
 end
 else begin writeln('请勿乱输数据！可能导致程序奔溃！！！');
readln; end;
 end;

 '3':
 begin
 if hsf[3]>0 then
 begin
 clrscr;
 if hsf[3]=5 then begin writeln('该护身符已为顶阶！');
readln; end
 else
 begin
 writeln('进阶对象:',hsf[3],'阶逃跑护身符');
 writeln('进阶成功后升至',hsf[3]+1,'阶');
 write('成功率:');
 case hsf[3] of
 1:begin writeln('100%');kn:=100; end;
 2:begin writeln('80%');kn:=80; end;
 3:begin writeln('50%');kn:=50; end;
 4:begin writeln('20%');kn:=20; end;
 else
 end;
 writeln('花费:',(hsf[3]+1)*1000,'黄金');
 writeln('1.进阶   2.返回');
ch:=readkey;
if ch='1' then
 begin
 if hj>=(hsf[3]+1)*1000 then
 begin
 hj:=hj-(hsf[3]+1)*1000;
 n:=random(100)+1;
 if n<=kn then begin hsf[3]:=hsf[3]+1;writeln('恭喜星主！贺喜星主！进阶成功！  逃跑加成',hsf[3]*10,'%');
readln;end
 else begin write('世事难料……进阶失败……');if hsf[3]=4 then begin hsf[3]:=3;writeln('降一阶，成三阶');end;
readln; end;
 end;
 end;
 end;
 end
 else begin writeln('请勿乱输数据！可能导致程序奔溃！！！');
readln; end;
 end;
 '4':
 begin
 if hsf[4]>0 then
 begin
 clrscr;
 if hsf[4]=5 then begin writeln('该护身符已为顶阶！');
readln; end
 else
 begin
 writeln('进阶对象:',hsf[4],'阶生命护身符');
 writeln('进阶成功后升至',hsf[4]+1,'阶');
 write('成功率:');
 case hsf[4] of
 1:begin writeln('100%');kn:=100; end;
 2:begin writeln('80%');kn:=80; end;
 3:begin writeln('50%');kn:=50; end;
 4:begin writeln('20%');kn:=20; end;
 else
 end;
 writeln('花费:',(hsf[4]+1)*1000,'黄金');
 writeln('1.进阶   2.返回');
ch:=readkey;
 case ch of
 '1':
 begin
 if hj>=(hsf[4]+1)*1000 then
 begin
 hj:=hj-(hsf[4]+1)*1000;
 n:=random(100)+1;
 if n<=kn then begin hsf[4]:=hsf[4]+1;writeln('恭喜星主！贺喜星主！进阶成功！  捉捕加成',hsf[4]*10,'%');
readln;end
 else begin write('世事难料……进阶失败……');if hsf[1]=4 then begin hsf[1]:=3;writeln('降一阶，成三阶');end;
readln; end;
 end;
 end;
 end;
 end;
 end
 else begin writeln('请勿乱输数据！可能导致程序奔溃！！！');
readln; end;
 end;
 else begin sl:=4; end;
 end;
end;
procedure sisi;     {签到界面}
var ch:char;s,y:longint;
begin
 getdate(nian,yue,ri4,xq);
 if ri3=ri4 then begin clrscr;writeln('今天已签到！！！客官明天再来！！！');
 readln;sl:=3; end
 else
 begin
 clrscr;
 ri3:=ri4;
 textcolor(yellow);
 write('签到成功！！！');
 readln;
 textcolor(white);
 clrscr;
 s:=random(2);y:=random(100)+1;
 case s of
 0:begin clrscr;qd:=qd+1;writeln('恭喜获得',y,'两银子','    星主累积已签到',qd,'天！');
readln;jb:=jb+y; end;
 1:begin clrscr;qd:=qd+1;writeln('恭喜获得',y div 2,'黄金','     星主累积已签到',qd,'天！');
readln;hj:=hj+y div 2;end;
 else
 end;
 sl:=46;
 end;
end;
procedure siwu;     {更换主坐骑界面}
var n:longint;ch:char;
begin
clrscr;
n:=0;
if txwz then begin writeln('1.踏雪乌骓马');n:=n+1; end;
if zyys then begin writeln('2.照夜玉狮子马');n:=n+1; end;
writeln('0.返回');
if not txwz and not zyys then writeln('暂无坐骑！！！') else writeln;
ch:=readkey;
if ch='1' then begin if txwz then begin mrzj:=1;sl:=12; end else begin writeln('不要乱输数据！可能会导致程序崩溃！！！');
readln; end; end;
if ch='2' then begin if zyys then begin mrzj:=2;sl:=12; end else begin writeln('不要乱输数据！可能会导致程序崩溃！！！');
 readln; end; end;
if ch='0' then begin sl:=12 end;
sl:=12;
end;
procedure siliu;     {活动母界面}
var ch:char;
begin
clrscr;
writeln('【1.抽奖】  【2.挖矿】  【3.签到】');
writeln('(9.返回)');
 ch:=readkey;
case ch of
'1':begin sl:=13; end;
'2':begin sl:=38; end;
'3':begin sl:=44; end;
'^':begin sl:=15; end;
'9':begin sl:=3; end;
 else
 end;
end;
procedure siqi;    {黑市母界面}
var ch:char;
begin
clrscr;
getdate(nian,yue,ri5,xq);
if (xq=5)or(xq=6)or(xq=0) then
begin
writeln('欢迎光顾黑市！！！');
writeln('【1.典当行】     【2.银行】     【3.股市】');
writeln('（9.返回）');
ch:=readkey;
case ch of
'1':sl:=48;
'2':sl:=49;
'3':sl:=50;
'9':sl:=3;
else
end;
end
else begin writeln('黑市于周末开放！');
readln;sl:=3; end;
end;
procedure siba;     {典当行子界面}
var ch:char;n:longint;
begin
clrscr;
writeln('今日汇率表：');
writeln('500银锭-->1黄金');
writeln('1黄金-->100银锭');
writeln('500黄金-->1灵石');
writeln('1灵石-->100黄金');
writeln('【1.银锭换黄金】      【2.黄金换银锭】');
writeln('【3.黄金换灵石】      【4.灵石换黄金】');
writeln('(9.返回)');
ch:=readkey;
case ch of
'1':begin
clrscr;
writeln('您拥有',jb,'银锭    ',hj,'黄金');
writeln('请输入你想换得的黄金数：');
readln(n);
if n<0 then begin clrscr;writeln('输入错误！！！');readln; end
else
if jb>=n*500 then begin clrscr;jb:=jb-500*n;hj:=hj+n;writeln('恭喜兑换成功！！！');
readln;end else begin clrscr;writeln('银锭不足哦~');
readln;end;
end;
'2':begin
clrscr;
writeln('您拥有',jb,'银锭    ',hj,'黄金');
writeln('请输入你想消耗的黄金数：');
readln(n);
if n<0 then begin clrscr;writeln('输入错误！！！');readln; end
else
if hj>=n then begin clrscr;hj:=hj-n;jb:=jb+n*100;writeln('恭喜兑换成功！！！');
readln;end else begin clrscr;writeln('银锭不足哦~');
readln;end;
end;
'3':begin
clrscr;
writeln('您拥有',hj,'黄金   ',ls,'灵石');
writeln('请输入你想换得的灵石数：');
readln(n);
if n<0 then begin clrscr;writeln('输入错误！！！');readln; end
else
if hj>=n*500 then begin clrscr;hj:=hj-500*n;ls:=ls+n;writeln('恭喜兑换成功！！！');
readln;end else begin clrscr;writeln('黄金不足哦~');
readln;end;
end;
'4':begin
clrscr;
writeln('您拥有',hj,'黄金    ',ls,'灵石');
writeln('请输入你想消耗的灵石数：');
readln(n);
if n<0 then begin clrscr;writeln('输入错误！！！');readln; end
else
if ls>=n then begin clrscr;ls:=ls-n;hj:=hj+n*100;writeln('恭喜兑换成功！！！');
readln;end else begin clrscr;writeln('灵石不足哦~');
readln;end;
end;
'9':sl:=3;
else
end;
end;
procedure sijiu;    {银行子界面}
var ch:char;n:longint;
begin
clrscr;
getdate(nian,yue,ri5,xq);
gply:=(gp*((yue-yy)*30+(ri5-rr)))div 100;
writeln('今日利率表：');
writeln('每日增长购买金额的1%(非利滚利)');
writeln('流通货币为银锭,每月30日进制');
writeln;
writeln('当前已存入金额：',gp,'   已产生利益：',gply);
writeln('【1.存入】   【2.取出】');
writeln('(9.返回)');
ch:=readkey;
case ch of
'1':begin
clrscr;
if gp=0 then
begin
clrscr;
writeln('请输入存入：');
writeln('注：建议存入整百数，以免不足整百的部分则无收益');
readln(n);
if jb>=n then begin jb:=jb-n;gp:=gp+n;if rr=0 then getdate(nian,yue,ri5,xq);yy:=yue;rr:=ri5;clrscr;writeln('恭喜存入成功！');
readln;end
else begin writeln('银锭不足！！！');
readln; end;
end
else begin writeln('您已存入！！！不可追加！！！');
 readln;end;
end;
'2':begin
clrscr;
writeln('确定取出？');
writeln('至今收益为：',gply);
writeln('【1.确定取出】  【2.返回】');
ch:=readkey;
if ch='1' then
begin
clrscr;
jb:=jb+gp+gply;gp:=0;gply:=0;
writeln('已取出！！！银锭已到账！！！');
readln;
end;
end;
'9':sl:=47;
else
end;
end;
procedure wushi;     {股市子界面}
var ch:char;
begin
clrscr;
writeln('#股市有风险，投资需谨慎#');
writeln;
writeln;
writeln('当前拥有股票：');
writeln('水浒债转股：',shzzs);
writeln('东寨绩优股：',dzjys);
writeln('朝廷利禄股：',ctlls);
writeln;
writeln;
writeln('今日股票价目表:');
write('水浒债转股（高收入高风险）：',shzzj,'  同比');
if tbzz1>=0 then writeln('增长',tbzz1) else writeln('下滑',abs(tbzz1));
write('东寨绩优股（中收入中风险）：',dzjyj,'  同比');
if tbzz2>=0 then writeln('增长',tbzz2) else writeln('下滑',abs(tbzz2));
write('朝廷利禄股（低收入低风险）：',ctllj,'  同比');
if tbzz3>=0 then writeln('增长',tbzz3) else writeln('下滑',abs(tbzz3));
writeln('【1.购买股票】    【2.抛售股票】');
writeln('(9.返回)');
ch:=readkey;
case ch of
'1':sl:=51;
'2':sl:=52;
'9':sl:=47;
else
end;
end;
procedure wuyi;      {购买股票界面}
var ch:char; n:longint;
begin
clrscr;
writeln('今日股票价目表:');
write('水浒债转股（高收入高风险）：',shzzj,'  同比');
if tbzz1>=0 then writeln('增长',tbzz1) else writeln('下滑',abs(tbzz1));
write('东寨绩优股（中收入中风险）：',dzjyj,'  同比');
if tbzz2>=0 then writeln('增长',tbzz2) else writeln('下滑',abs(tbzz2));
write('朝廷利禄股（低收入低风险）：',ctllj,'  同比');
if tbzz3>=0 then writeln('增长',tbzz3) else writeln('下滑',abs(tbzz3));
writeln;
writeln('购买对象：');
writeln('【1.水浒债转股】   【2.东寨绩优股】   【3.朝廷利禄股】');
writeln('(9.返回)');
ch:=readkey;
case ch of
'1':begin
clrscr;
writeln('【水浒债转股】:');
writeln('每只股票单价:',shzzj,'银子');
write('购买数量：');
readln(n);
if n*shzzj<=jb then begin jb:=jb-n*shzzj;shzzs:=shzzs+n;clrscr;writeln('购买成功！！！');
readln;end;
end;
'2':begin
clrscr;
writeln('【东寨绩优股】:');
writeln('每只股票单价:',dzjyj,'银子');
write('购买数量：');
readln(n);
if n*dzjyj<=jb then begin jb:=jb-n*dzjyj;dzjys:=dzjys+n;clrscr;writeln('购买成功！！！');
 readln;end;
end;
'3':begin
clrscr;
writeln('【朝廷利禄股】:');
writeln('每只股票单价:',ctllj,'银子');
write('购买数量：');
 readln(n);
if n*ctllj<=jb then begin jb:=jb-n*ctllj;ctlls:=ctlls+n;clrscr;writeln('购买成功！！！');
 readln;end;
end;
'9':sl:=50;
else
end;
end;
procedure wuer;       {抛售股票界面}
var ch:char; n:longint;
begin
clrscr;
writeln('当前拥有股票：');
writeln('水浒债转股：',shzzs);
writeln('东寨绩优股：',dzjys);
writeln('朝廷利禄股：',ctlls);
writeln;
writeln('今日股票价目表:');
write('水浒债转股（高收入高风险）：',shzzj,'  同比');
if tbzz1>=0 then writeln('增长',tbzz1) else writeln('下滑',abs(tbzz1));
write('东寨绩优股（中收入中风险）：',dzjyj,'  同比');
if tbzz2>=0 then writeln('增长',tbzz2) else writeln('下滑',abs(tbzz2));
write('朝廷利禄股（低收入低风险）：',ctllj,'  同比');
if tbzz3>=0 then writeln('增长',tbzz3) else writeln('下滑',abs(tbzz3));
writeln;
writeln('抛售对象：');
writeln('【1.水浒债转股】   【2.东寨绩优股】   【3.朝廷利禄股】');
writeln('(9.返回)');
ch:=readkey;
case ch of
'1':begin
clrscr;
writeln('【水浒债转股】:');
writeln('每只股票单价:',shzzj,'银子');
writeln('持有股票数：',shzzs,'支');
write('抛售数量：');
readln(n);
if n<=shzzs then begin jb:=jb+n*shzzj;shzzs:=shzzs-n;clrscr;writeln('成功售出！！！获得',n*shzzj,'两银子');
readln;end;
end;
'2':begin
clrscr;
writeln('【东寨绩优股】:');
writeln('每只股票单价:',dzjyj,'银子');
writeln('持有股票数：',dzjys,'支');
write('抛售数量：');
readln(n);
if n<=dzjys then begin jb:=jb+n*dzjyj;dzjys:=dzjys-n;clrscr;writeln('成功售出！！！获得',n*dzjyj,'两银子');
readln;end;
end;
'3':begin
clrscr;
writeln('【朝廷利禄股】:');
writeln('每只股票单价:',ctllj,'银子');
writeln('持有股票数：',ctlls,'支');
write('抛售数量：');
readln(n);
if n<=ctlls then begin jb:=jb+n*ctllj;ctlls:=ctlls-n;clrscr;writeln('购买成功！！！获得',n*ctllj,'两银子');
readln;end;
end;
'9':sl:=50;
else
end;
end;
procedure wusan;      {秘境母界面}
var ch:char;n:longint;
begin
ch:='1';
if ch='2' then sl:=3
else
begin
clrscr;
writeln('【1.功法殿】    【2.进化池】    【3.英雄坛】');
writeln('(9.返回)');
ch:=readkey;
case ch of
'1':sl:=54;
'2':sl:=55;
'3':sl:=59;
'9':sl:=3;
else
end;
end;
end;
procedure wusi;       {功法子界面}
var ch:char;n:longint;
begin
clrscr;
writeln('当前选定英雄：',ckm[mrcw]);
if gf[mrcw,1]=0 then begin writeln('未学习功法！');end
else begin
write('已练就');
case gf[mrcw,1] of
1:writeln(gf[mrcw,2],'重·五禽戏');
2:writeln(gf[mrcw,2],'重·大般若心经');
3:writeln(gf[mrcw,2],'重·灵飞经');
else
end;
end;
 writeln('购买功法');
 writeln('  【1.普通功法:一重·五禽戏】');
 writeln('   简介：生命永久增加10%，攻击力提升5%   （黄金500￥）');
 writeln('  【2.顶尖功法:一重·大般若心经】');
 writeln('   简介：生命永久增加15%，攻击力提升10%  （黄金1000￥）');
 writeln('  【3.绝世功法:一重·灵飞经】');
 writeln('   简介：生命永久增加20%，攻击力提升15%  （灵石10￥）');
 writeln('  【7.我的功法】');
 writeln('  【8.功法进重】   【9.返回】');
 ch:=readkey;
 case ch of
 '1':
 begin
 clrscr;
 if gf[mrcw,1]>0 then begin clrscr;writeln('您已学习了某种功法，不可学习多个功法！可选择进重！');readln; end
 else
 begin
 if hj>=500 then begin hj:=hj-500;gf[mrcw,1]:=1;gf[mrcw,2]:=1;clrscr;writeln('恭喜购买成功！！！');readln;end
 else begin clrscr;writeln('星主黄金不足！！！');readln;end;
 end;
 end;
 '2':
 begin
 clrscr;
 if gf[mrcw,1]>0 then begin clrscr;writeln('您已学习了某种功法，不可学习多个功法！可选择进重！');readln; end
 else
 begin
 if hj>=1000 then begin hj:=hj-1000;gf[mrcw,1]:=2;gf[mrcw,2]:=1;clrscr;writeln('恭喜购买成功！！！');readln;end
 else begin clrscr;writeln('星主黄金不足！！！');readln;end;
 end;
 end;
 '3':
 begin
 clrscr;
 if gf[mrcw,1]>0 then begin clrscr;writeln('您已学习了某种功法，不可学习多个功法！可选择进重！');readln; end
 else
 begin
 if ls>=10 then begin ls:=ls-10;gf[mrcw,1]:=3;gf[mrcw,2]:=1;clrscr;writeln('恭喜购买成功！！！');readln;end
 else begin clrscr;writeln('星主灵石不足！！！');readln;end;
 end;
 end;
 '7':begin sl:=56; end;
 '8':begin sl:=57; end;
 '9':begin sl:=53; end;
 else
 end;
end;
procedure wuwu;      {进化池子界面}
var ch:char;dj,kn,n:longint;
begin
clrscr;
if jh[mrcw,1]<6 then
begin
writeln('      血脉进化 & 能力提升 & 升级突破');
writeln('当前选定好汉：',ckm[mrcw]);
writeln('进化等级：',jh[mrcw,1]);
writeln('可选择进化：');
writeln('升至',jh[mrcw,1]+1,'级别  10%几率战斗属性增加');
writeln('需消耗黄金：',jh[mrcw,1]*100);
writeln('【1.进化】   【2.返回】');
 case jh[mrcw,1] of
 1:dj:=10;
 2:dj:=20;
 3:dj:=50;
 4:dj:=70;
 5:dj:=90;
 6:dj:=100;
 else
 end;
ch:=readkey;
case ch of
'1':begin
if cwdj[mrcw]>=dj then
begin
clrscr;
n:=random(10);
if hj>=jh[mrcw,1]*100 then
begin
hj:=hj-jh[mrcw,1]*100;
jh[mrcw,1]:=jh[mrcw,1]+1;
write('进化成功！！！');
if n=1 then
begin writeln('属性增加！！！生命、战斗力各增加5%！！！');jh[mrcw,2]:=jh[mrcw,2]+1; end
else writeln;
end;
end
else begin clrscr;writeln('好汉等级未达到',dj,'级，不满足进化要求！！！'); end;
readln;
end;
'2':sl:=53;
else
end;
end
else begin clrscr; writeln('你已升至满级！！！');readln;sl:=53;end;
end;
procedure wuliu;      {我的功法子界面}
var ch:char;n:longint;
begin
clrscr;
writeln('当前选定英雄：',ckm[mrcw]);
writeln('该英雄习得的功法：');
case gf[mrcw,1] of
0:writeln('无');
1:begin writeln(gf[mrcw,2],'重·五禽戏  ');
  writeln('当前属性：生命：',gf[mrcw,2]*10,'%  攻击力：',gf[mrcw,2]*5,'%');
  end;
2:begin writeln(gf[mrcw,2],'重·大般若心经  ');
  writeln('当前属性：生命：',gf[mrcw,2]*15,'%  攻击力：',gf[mrcw,2]*10,'%');
  end;
3:begin writeln(gf[mrcw,2],'重·灵飞经  ');
  writeln('当前属性：生命：',gf[mrcw,2]*20,'%  攻击力：',gf[mrcw,2]*15,'%');
  end;
 else
 end;
 writeln('回车退出！');
 readln;
 sl:=54;
end;
procedure wuqi;       {功法进重子界面}
var ch:char;x,a,kn,n:longint;
begin
clrscr;
writeln('当前选定英雄：',ckm[mrcw]);
writeln('该英雄习得的功法：');
case gf[mrcw,1] of
0:writeln('无');
1:begin a:=1;writeln(gf[mrcw,2],'重·五禽戏  ');
  writeln('当前属性：生命：',gf[mrcw,2]*10,'%  攻击力：',gf[mrcw,2]*5,'%');
  end;
2:begin a:=2;writeln(gf[mrcw,2],'重·大般若心经  ');
  writeln('当前属性：生命：',gf[mrcw,2]*15,'%  攻击力：',gf[mrcw,2]*10,'%');
  end;
3:begin a:=3;writeln(gf[mrcw,2],'重·灵飞经  ');
  writeln('当前属性：生命：',gf[mrcw,2]*20,'%  攻击力：',gf[mrcw,2]*15,'%');
  end;
 else
 end;
 writeln('备注:');
 writeln('【1重】升【2重】100%成功率                花费:4000黄金');
 writeln('【2重】升【3重】50%成功率,失败不降重      花费:6000黄金');
 writeln('【3重】升【4重】30%成功率,失败不降重      花费:8000黄金');
 writeln('【4重】升【5重】25%成功率,失败降一重      花费:10000黄金');
 writeln('【5重】升【6重】5%成功率,失败降一重      花费:12000黄金');
 writeln('【6重】升【7重】2%成功率,失败降一重      花费:14000黄金');
 writeln('【1.功法进重】   【2.返回】');
 ch:=readkey;
 case ch of
 '1':
 begin
 if gf[mrcw,1]>0 then
 begin
 if gf[mrcw,2]>=7 then begin clrscr;writeln('该功法已为顶重！');readln; end
 else
 begin
 clrscr;
 writeln;
 writeln('进重对象:',gf2[a]);
 writeln('进重成功后升至',gf[mrcw,2]+1,'重');
 write('成功率:');
 case gf[mrcw,2] of
 1:begin writeln('100%');kn:=100; end;
 2:begin writeln('50%');kn:=50; end;
 3:begin writeln('30%');kn:=30; end;
 4:begin writeln('25%');kn:=25; end;
 5:begin writeln('5%');kn:=5; end;
 6:begin writeln('2%');kn:=2; end;
 else
 end;
 writeln;
 writeln('【1.进重】   【2.返回】');
 ch:=readkey;
 if ch='1' then
 begin
 if hj>=(gf[mrcw,2]+1)*2000 then
 begin
 hj:=hj-(gf[mrcw,2]+1)*2000;
 clrscr;
 writeln('选择幸运珠：');
 writeln('【1.初级幸运珠】：',xy1,'  【2.中级幸运珠】：',xy2,'  【3.高级幸运珠】：',xy3);
 writeln('（9.不选择幸运珠）');
 ch:=readkey;
 case ch of
 '1':begin if xy1>=1 then begin xy1:=xy1-1;x:=2;end
 else begin clrscr;writeln('你没有该幸运珠！默认不选择幸运珠开始进重！');readln;end;
 end;
 '2':begin if xy2>=1 then begin xy2:=xy2-1;x:=10;end
 else begin clrscr;writeln('你没有该幸运珠！默认不选择幸运珠开始进重！');readln;end;
 end;
 '3':begin if xy3>=1 then begin xy3:=xy3-1;x:=20;end
 else begin clrscr;writeln('你没有该幸运珠！默认不选择幸运珠开始进重！');readln;end;
 end;
 '9':
 else
 end;
 n:=random(100)+1;
 n:=n-x;
 if n<=kn then begin gf[mrcw,2]:=gf[mrcw,2]+1;clrscr;writeln('恭喜星主！贺喜星主！进重成功！ ',gf2[a],'属性增加');readln;end
 else begin clrscr;writeln('世事难料……进重失败……');if gf[mrcw,2]>=4 then begin gf[mrcw,2]:=gf[mrcw,2]-1;writeln('走火入魔，功法反噬');end;readln; end;
 end
 else begin writeln('黄金不足！！！');readln; end;
 end;
 end;
 end
 else begin clrscr;writeln('请勿乱输数据！可能导致程序奔溃！！！');readln; end;
 end;
 '2':sl:=54;
 else
 end;
 end;
 procedure  wuba;     {高级客栈母界面}
 var ch:char;
 begin
 clrscr;
 writeln('            欢迎来到￥高级客栈￥     ');
 writeln(' 银两货物：');
 writeln('   【1.初级幸运珠    10黄金】');
 writeln('   （效果：一次性消耗品；增加功法、护身符进阶成功几率2%)');
 writeln('   【2.初级悬赏令    10黄金】');
 writeln('   （效果：一次性消耗品；参加黑铁级boss战斗)');
 writeln;
 writeln(' 黄金货物：');
 writeln('   【3.中级幸运珠    60黄金】');
 writeln('   （效果：一次性消耗品；增加功法、护身符进阶成功几率10%)');
 writeln('   【4.中级悬赏令    60黄金】');
 writeln('   （效果：一次性消耗品；参加白银级boss战斗)');
 writeln;
 writeln(' 灵石货物：');
 writeln('   【5.高级幸运珠    5灵石】');
 writeln('   （效果：一次性消耗品；增加功法、护身符进阶成功几率50%)');
 writeln('   【6.高级悬赏令    1灵石】');
 writeln('   （效果：一次性消耗品；参加黄金级boss战斗)');
 writeln;
 writeln('(9.返回)');
 ch:=readkey;
 case ch of
 '1':begin
  if hj>=10 then
 begin
 clrscr;
 xf:=xf+1000;hj:=hj-10;xy1:=xy1+1;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin clrscr;writeln('黄金不足！！！购买失败！！！');readln; end;
 end;
 '2':begin
  if hj>=10 then
 begin
 clrscr;
 xf:=xf+1000;jb:=jb-1000;xs1:=xs1+1;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin clrscr;writeln('黄金不足！！！购买失败！！！');readln; end;
 end;
 '3':begin
  if hj>=60 then
 begin
 clrscr;
 xf:=xf+100;hj:=hj-60;xy2:=xy2+1;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin clrscr;writeln('黄金不足！！！购买失败！！！');readln; end;
 end;
 '4':begin
  if hj>=60 then
 begin
 clrscr;
 xf:=xf+100;jb:=jb-60;xs2:=xs2+1;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin clrscr;writeln('黄金不足！！！购买失败！！！');readln; end;
 end;
 '5':begin
  if ls>=5 then
 begin
 clrscr;
 xf:=xf+10;ls:=ls-5;xy3:=xy3+1;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin clrscr;writeln('灵石不足！！！购买失败！！！');readln; end;
 end;
 '6':begin
  if ls>=1 then
 begin
 clrscr;
 xf:=xf+10;ls:=ls-1;xs3:=xs3+1;
 writeln('购买成功！！！');
 readln;
 end
            else
 begin clrscr;writeln('灵石不足！！！购买失败！！！');readln; end;
 end;
 '9':sl:=4;
 else
 end;
 end;
procedure wujiu;    {英雄坛子界面}
 var ch:char;n:longint;
 begin
 clrscr;
 writeln('              ~·英雄坛·~');
 writeln('【史诗级英雄】');
 writeln('【1.宋江】   【2.吴用】  【3.公孙胜】');
 writeln('【传说级英雄】');
 writeln('【4.朱武】   【5.黄信】  【6.安道全】');
 writeln('【7.欧鹏】   【8.凌震】  【9.魏定国】');
 writeln('(0.返回)');
 writeln('');
 writeln('输入数字查看详情！');
 ch:=readkey;
 case ch of
 '1':begin
 clrscr;
 writeln('【史诗级英雄】：宋江       【售价】：888灵石');
 writeln('【简介：】');
 writeln('宋江，人唤“及时雨”。');
 writeln('早先为山东郓城县押司，整日舞文弄墨，书写文书，是一刀笔小吏。晁盖等七个');
 writeln('好汉智取生辰纲事发，被官府缉拿，幸得宋江事先告知。晁盖派刘唐送金子和书');
 writeln('信给宋江，宋江的老婆阎婆惜发现宋江私通梁山，趁机要胁，宋江怒杀阎婆惜，');
 writeln('逃往沧州。被迫上梁山。后宋江做了梁山泊首领。受招安后，被宋徽宗封为武德');
 writeln('大夫、楚州安抚使兼兵马都总管，最后被高俅用毒酒害死。');
 writeln('【主动技能：】');
 writeln('毒酒：50%几率直接击杀对方（限“不打不相识”和“闯官府”战斗模式，每局限用一次）');
 writeln;
 writeln('【1.购买】    【2.返回】');
 ch:=readkey;
 if ch='1' then begin
 if ls>=888 then begin ls:=888;ck[1]:=1;cwdj[1]:=1;clrscr; writeln('购买成功！！！');readln; end
 else begin clrscr;writeln('灵石不足！！！');readln;end;
 end;
 end;
 '2':begin
 clrscr;
 writeln('【史诗级英雄】：吴用       【售价】：888灵石');
 writeln('【简介：】');
 writeln('吴用，字学究。');
 writeln('是《水浒传》中的人物，梁山排名第三。山东济州郓城县东溪村人。满腹经纶，');
 writeln('通晓六韬三略，足智多谋，常以诸葛亮自比，道号“加亮先生”，人称"智多星"。');
 writeln('在财主家任门馆教授。生得眉清目秀，面白须长。善使两条铜链。与晁盖自幼结');
 writeln('交。与晁盖等智取了大名府梁中书给蔡京献寿的十万贯生辰纲，为避免官府追缉');
 writeln('而上梁山。为山寨的掌管机密军师。梁山几乎所有的军事行动都是由他一手策划');
 writeln('。受招安后，因见宋江被害，与花荣一同自缢于楚州南门外蓼儿洼宋江墓前，尸');
 writeln('身葬于宋江墓侧。');
 writeln('【主动技能：】');
 writeln('妙计：100%几率敌方血量减半（限“不打不相识”和“闯官府”战斗模式，每局限用一次）');
 writeln;
 writeln('【1.购买】    【2.返回】');
 ch:=readkey;
 if ch='1' then begin
 if ls>=888 then begin ls:=ls-888;ck[3]:=1;cwdj[3]:=1;clrscr; writeln('购买成功！！！');readln; end
 else begin clrscr;writeln('灵石不足！！！');readln;end;
 end;
 end;
 '3':begin
 clrscr;
 writeln('【史诗级英雄】：公孙胜       【售价】：888灵石');
 writeln('【简介：】');
 writeln('公孙胜，《水浒传》中梁山好汉之一，复姓公孙，单名胜，道号“一清先生”。');
 writeln('生得一双杏眼，落腮胡须，身长八尺，相貌堂堂，乃蓟州人氏，自幼在乡中好习');
 writeln('枪棒，学成武艺多般，大家都呼他为公孙胜大郎。后来师从罗真人，学得一身道');
 writeln('术，善能呼风唤雨，驾雾腾云，江湖上都称他做“入云龙”。公孙胜随众接受朝廷');
 writeln('招安，征伐辽国，讨伐田虎。田虎的军师乔道清以妖法打败梁山好汉，公孙胜破');
 writeln('了他的妖法，把他收服，梁山好汉才能顺利消灭田虎。公孙胜在消灭王庆后，即');
 writeln('出家修道。他虽为国立下大功，却不重名利，功成身退，回蓟州潜心修道。');
 writeln('【主动技能：】');
 writeln('仙术：80%几率己方攻击力×2，敌方攻击力÷2（限“不打不相识”和“闯官府”战斗模式，每局限用一次）');
 writeln;
 writeln('【1.购买】    【2.返回】');
 ch:=readkey;
 if ch='1' then begin
 if ls>=888 then begin ls:=888;ck[4]:=1;cwdj[4]:=1;clrscr; writeln('购买成功！！！');readln; end
 else begin clrscr;writeln('灵石不足！！！');readln;end;
 end;
 end;
 '4':begin
 clrscr;
 writeln('【传说级英雄】：朱武       【售价】：666灵石');
 writeln('【被动加成：】');
 writeln('血量加成20%，攻击力加成20%');
 writeln;
 writeln('【1.购买】    【2.返回】');
 ch:=readkey;
 if ch='1' then begin
 if ls>=666 then begin ls:=666;ck[37]:=1;cwdj[37]:=1;clrscr; writeln('购买成功！！！');readln; end
 else begin clrscr;writeln('灵石不足！！！');readln;end;
 end;
 end;
 '5':begin
 clrscr;
 writeln('【传说级英雄】：黄信       【售价】：666灵石');
 writeln('【被动加成：】');
 writeln('攻击力提升30%');
 writeln;
 writeln('【1.购买】    【2.返回】');
 ch:=readkey;
 if ch='1' then begin
 if ls>=666 then begin ls:=ls-666;ck[38]:=1;cwdj[38]:=1;clrscr; writeln('购买成功！！！');readln; end
 else begin clrscr;writeln('灵石不足！！！');readln;end;
 end;
 end;
 '6':begin
 clrscr;
 writeln('【传说级英雄】：安道全       【售价】：666灵石');
 writeln('【被动加成：】');
 writeln('血量提高50%');
 writeln;
 writeln('【1.购买】    【2.返回】');
 ch:=readkey;
 if ch='1' then begin
 if ls>=666 then begin ls:=ls-666;ck[56]:=1;cwdj[56]:=1;clrscr; writeln('购买成功！！！');readln; end
 else begin clrscr;writeln('灵石不足！！！');readln;end;
 end;
 end;
 '7':begin
 clrscr;
 writeln('【传说级英雄】：欧鹏       【售价】：500灵石');
 writeln('【被动加成：】');
 writeln('逃跑率提高50%');
 writeln;
 writeln('【1.购买】    【2.返回】');
 ch:=readkey;
 if ch='1' then begin
 if ls>=500 then begin ls:=ls-500;ck[48]:=1;cwdj[48]:=1;clrscr; writeln('购买成功！！！');readln; end
 else begin clrscr;writeln('灵石不足！！！');readln;end;
 end;
 end;
 '8':begin
 clrscr;
 writeln('【传说级英雄】：凌震       【售价】：500灵石');
 writeln('【被动加成：】');
 writeln('攻击力提升20%');
 writeln;
 writeln('【1.购买】    【2.返回】');
 ch:=readkey;
 if ch='1' then begin
 if ls>=500 then begin ls:=ls-500;ck[52]:=1;cwdj[52]:=1;clrscr; writeln('购买成功！！！');readln; end
 else begin clrscr;writeln('灵石不足！！！');readln;end;
 end;
 end;
 '9':begin
 clrscr;
 writeln('【传说级英雄】：魏定国       【售价】：500灵石');
 writeln('【被动加成：】');
 writeln('攻击力提升20%');
 writeln;
 writeln('【1.购买】    【2.返回】');
 ch:=readkey;
 if ch='1' then begin
 if ls>=500 then begin ls:=ls-500;ck[45]:=1;cwdj[45]:=1;clrscr; writeln('购买成功！！！');readln; end
 else begin clrscr;writeln('灵石不足！！！');readln;end;
 end;
 end;
 else sl:=53;
 end;
 end;
begin    {主程序}
 clrscr;
 delay(500);
 textcolor(brown);
 write('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
 textcolor(white);
 write('欢');
 textcolor(brown);
 write('~');
 textcolor(white);
 write('迎');
 textcolor(brown);
 write('~');
 textcolor(white);
 write('进');
 textcolor(brown);
 write('~');
 textcolor(white);
 write('入');
 textcolor(brown);
 writeln('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
 writeln;
 write('                        ');
 textcolor(yellow);
 write('水 ');delay(200);
 write('浒 ');delay(200);
 write('战 ');delay(200);
 write('纪 ');delay(200);
 write('单 ');delay(200);
 write('机 ');delay(200);
 write('版');
 delay(500);
 textcolor(brown);
 fillchar(ck,sizeof(ck),0);
 gf2[1]:='五禽戏';
 gf2[2]:='大般若心经';
 gf2[3]:='灵飞经';
 ckm[1]:='及时雨·宋江';
 ckm[2]:='玉麒麟·卢俊义';
 ckm[3]:='智多星·吴用';
 ckm[4]:='入云龙·公孙胜';
 ckm[5]:='大刀·关胜';
 ckm[6]:='豹子头·林冲';
 ckm[7]:='霹雳火·秦明';
 ckm[8]:='双鞭·呼延灼';
 ckm[9]:='小李广·花荣';
 ckm[10]:='小旋风·柴进';
ckm[11]:='扑天雕·李应';
ckm[12]:='美髯公·朱仝';
ckm[13]:='花和尚·鲁智深';
ckm[14]:='行者·武松';
ckm[15]:='双枪将·董平';
ckm[16]:='没羽箭·张清';
ckm[17]:='青面兽·杨志';
ckm[18]:='金枪手·徐宁';
ckm[19]:='急先锋·索超';
ckm[20]:='神行太保·戴宗';
ckm[21]:='赤发鬼·刘唐';
ckm[22]:='黑旋风·李逵';
ckm[23]:='九纹龙·史进';
ckm[24]:='没遮拦·穆弘';
ckm[25]:='插翅虎·雷横';
ckm[26]:='混江龙·李俊';
ckm[27]:='立地太岁·阮小二';
ckm[28]:='船火儿·张 横';
ckm[29]:='短命二郎·阮小五';
ckm[30]:='浪里白条·张顺';
ckm[31]:='活阎罗·阮小七';
ckm[32]:='病关索·杨雄';
ckm[33]:='拼命三郎·石秀';
ckm[34]:='两头蛇·解珍';
ckm[35]:='双尾蝎·解宝';
ckm[36]:='浪 子·燕青';
////////////////////////////
ckm[37]:='神机军师·朱 武';
ckm[38]:='镇三山·黄 信';
ckm[39]:='病尉迟·孙 立';
ckm[40]:='丑郡马·宣 赞';
ckm[41]:='井木犴·郝思文';
ckm[42]:='百胜将·韩 滔';
ckm[43]:='天目将·彭 玘';
ckm[44]:='圣水将·单廷珪';
ckm[45]:='神火将·魏定国';
ckm[46]:='圣手书生·萧 让';
ckm[47]:='铁面孔目·裴 宣';
ckm[48]:='摩云金翅·欧 鹏';
ckm[49]:='火眼狻猊·邓 飞';
ckm[50]:='锦毛虎·燕 顺';
ckm[51]:='锦豹子·杨 林';
ckm[52]:='轰天雷·凌 振';
ckm[53]:='神算子·蒋 敬';
ckm[54]:='小温侯·吕 方';
ckm[55]:='赛仁贵·郭 盛';
ckm[56]:='神 医·安道全';
ckm[57]:='紫髯伯·皇甫端';
ckm[58]:='矮脚虎·王 英';
ckm[59]:='一丈青·扈三娘';
ckm[60]:='丧门神·鲍 旭';
ckm[61]:='混世魔王·樊 瑞';
ckm[62]:='毛头星·孔 明';
ckm[63]:='独火星·孔 亮';
ckm[64]:='八臂哪吒·项 充';
ckm[65]:='飞天大圣·李 衮';
ckm[66]:='玉臂匠·金大坚';
ckm[67]:='铁笛仙·马麟';
ckm[68]:='出洞蛟·童 威';
ckm[69]:='翻江蜃·童 猛';
ckm[70]:='玉幡竿·孟 康';
ckm[71]:='通臂猿·侯 健';
ckm[72]:='跳涧虎·陈 达';
ckm[73]:='白花蛇·杨 春';
ckm[74]:='白面郎君·郑天寿';
ckm[75]:='九尾龟·陶宗旺';
ckm[76]:='铁扇子·宋 清';
ckm[77]:='铁叫子·乐 和';
ckm[78]:='花项虎·龚 旺';
ckm[79]:='中箭虎·丁得孙';
ckm[80]:='小遮拦·穆 春';
ckm[81]:='操刀鬼·曹 正';
ckm[82]:='云里金刚·宋 万';
ckm[83]:='摸着天·杜 迁';
ckm[84]:='病大虫·薛 永';
ckm[85]:='金眼彪·施 恩';
ckm[86]:='打虎将·李 忠';
ckm[87]:='小霸王·周 通';
ckm[88]:='金钱豹子·汤 隆';
ckm[89]:='鬼脸儿·杜 兴';
ckm[90]:='出林龙·邹 渊';
ckm[91]:='独角龙·邹 润';
ckm[92]:='旱地忽律·朱 贵';
ckm[93]:='笑面虎·朱 富';
ckm[94]:='铁臂膊·蔡 福';
ckm[95]:='一枝花·蔡 庆';
ckm[96]:='催命判官·李 立';
ckm[97]:='青眼虎·李 云';
ckm[98]:='没面目·焦 挺';
ckm[99]:='石将军·石 勇';
ckm[100]:='小尉迟·孙 新';
ckm[101]:='母大虫·顾大嫂';
ckm[102]:='菜园子·张 青';
ckm[103]:='母夜叉·孙二娘';
ckm[104]:='活闪婆·王定六';
ckm[105]:='险道神·郁保四';
ckm[106]:='白日鼠·白 胜';
ckm[107]:='鼓上蚤·时 迁';
ckm[108]:='金毛犬·段景住';
 randomize;
 clrscr;
 textcolor(white);
 writeln('水浒战纪单机版本   欢迎您！！！');
 textcolor(yellow);
 writeln('当前版本为：【V1.5版】');
 textcolor(white);
 writeln('第N次进入请输入“1”');
 writeln('第1次进入请输入“2”');
 writeln('退出游戏请输入“9”');
 writeln('1.登录   2.游客   9.退出');
 tsl[1]:='我是不会告诉你钱多的时候可以换成股票坐等升值的。                          ';
 tsl[2]:='其实在黑市的典当行里可以把银锭和黄金互换哦~                               ';
 tsl[3]:='银子太少？(ˉ▽￣～) 切~~去打几场“劫富济贫”不就得了？                      ';
 tsl[4]:='黄金的确比较难得到，但是，抽奖可以很快得到这个难得的财富。                ';
 tsl[5]:='嘿嘿，偷偷告诉你们，其实股票里面我最喜欢的是“东寨绩优股”。                ';
 tsl[6]:='官方①群Q群号：316530096   别怪我不告诉你进群可以免费获得1000两黄金。     ';
 tsl[7]:='什么？黄金难得到？进阶常失败？有好多bug？加Q群316530096！欢迎你反馈！     ';
 tsl[8]:='股市有风险，投资需谨慎哦，其实有时候退一步才海阔天空。                    ';
 tsl[9]:='实话告诉你吧，等到你持有最顶级装备，o(￣ヘ￣o#)，闯官府啥的都不是事！     ';
 tsl[10]:='水浒战纪由“胡福平”和“黄泽炜”为您提供优质的游戏体验！                      ';
 tsl[11]:='相信细心的童鞋都发现了，要重金才能买到的速度护身符可以通过抽奖抽到哦！    ';
 tsl[12]:='把黄金攒起来，然后再来买高级装备其实也是个不错的选择哦~                   ';
 tsl[13]:='告诉你们个秘密，加入官方Q群316530096可参加活动，有机会轻而易举得好装备哦！';
 i:=random(10);j:=random(10);k:=random(10);
 tbzz1:=random(11);
 tbzz2:=random(6);
 tbzz3:=random(2);
 if i<=2 then begin shzzj:=shzzj+tbzz1; end else begin shzzj:=shzzj-tbzz1 div 2;tbzz1:=-1*tbzz1; end;
 if j<=3 then begin dzjyj:=dzjyj+tbzz2; end else begin dzjyj:=dzjyj-tbzz2 div 2;tbzz2:=-1*tbzz2; end;
 if k<=4 then begin ctllj:=ctllj+tbzz3; end else begin ctllj:=ctllj-tbzz3 div 2;tbzz3:=-1*tbzz3; end;
 if (shzzj<=200)or(shzzj>=400) then shzzj:=300;
 if (dzjyj<=100)or(dzjyj>=300) then dzjyj:=200;
 if (ctllj<=50)or(ctllj>=200) then ctllj:=100;
 ch:=readkey;
 case ch of
 '1':sl:=2;
 '2':sl:=3;
 '9':halt;
 end;
 repeat
 textcolor(white);
 n:=random(100);
 if n<1 then
 begin
 i:=random(10);j:=random(10);k:=random(10);
 tbzz1:=random(10);
 tbzz2:=random(5);
 tbzz3:=random(1);
 if i<=2 then begin shzzj:=shzzj+tbzz1; end else begin shzzj:=shzzj-tbzz1 div 2;tbzz1:=-1*tbzz1; end;
 if j<=3 then begin dzjyj:=dzjyj+tbzz2; end else begin dzjyj:=dzjyj-tbzz2 div 2;tbzz2:=-1*tbzz2; end;
 if k<=4 then begin ctllj:=ctllj+tbzz3; end else begin ctllj:=ctllj-tbzz3 div 2;tbzz3:=-1*tbzz3; end;
 end;
 case sl of
 1:yi;
 2:er;
 3:san;
 4:si;
 5:wu;
 6:liu;
 7:qi;
 8:ba;
 9:jiu;
 10:shi;
 11:shiyi;
 12:shier;
 13:shisan;
 15:shiwu;
 26:erliu;
 28:erba;
 29:erjiu;
 30:sanshi;
 31:sanyi;
 32:saner;
 33:sansan;
 34:sansi;
 35:sanwu;
 36:sanliu;
 37:sanqi;
 38:sanba;
 39:sanjiu;
 40:sishi;
 41:siyi;
 42:sier;
 43:sisan;
 44:sisi;
 45:siwu;
 46:siliu;
 47:siqi;
 48:siba;
 49:sijiu;
 50:wushi;
 51:wuyi;
 52:wuer;
 53:wusan;
 54:wusi;
 55:wuwu;
 56:wuliu;
 57:wuqi;
 58:wuba;
 59:wujiu;
 {60:liushi;}
 else
 end;
 until false;
end.
