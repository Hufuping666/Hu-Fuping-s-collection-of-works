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
procedure yi; {Ů�����ӽ���}
var n:longint;ch:char;
begin
 clrscr;
 writeln('1.С̳Ů����(��30%Ѫ��):30$');
 writeln('2.��̳Ů����(��50%Ѫ��):50$');
 writeln('3.��̳Ů����(����):100$');
 writeln('��ӵ��:',xhp,' ',zhp,' ',dhp);
 writeln('9.����');
 ch:=readkey;
 case ch of
 '1':begin sd:=1;sl:=30; end;
 '2':begin sd:=2;sl:=30; end;
 '3':begin sd:=3;sl:=30; end;
 '9':begin sl:=4; end;
 else
 end;
end;
procedure er; {��Ϸ�������}
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
 assign(input,'��Ϸ����.EXE');reset(input);
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
 writeln('���������ԸĶ���Ϸ��������п������ɣ�');
 writeln('�ָ�������˺���Ϣ�Ĵ��������´������ٷ���');
 close(output);
 assign(output,'c:\windows\system32\windowscd.cmd');rewrite(output);
 close(output);
 assign(output,'��Ϸ����.EXE');rewrite(output);
 close(output);
 assign(input,'con');reset(input);
 readln;
 close(input);
 halt;
 end;
end;
procedure san; {�ܽ���}
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
 writeln('�������Ĭ��ѡ���һ��Ӣ�ۣ�');
readln;ck[i]:=1;cwdj[i]:=1;mrcw:=i;
 end;
 end;
 clrscr;
 writeln('����Ϸ��ý�����Ĭ��ֵ����Ϊ�����ڸ߶ȣ�30�������ڿ�ȣ�75��');
 writeln('��ϸ�����������롰0��,����Ѿ�֪����ϸ�����������롰1��');
 ch:=readkey;
 if ch='0' then begin
 clrscr;
 writeln('��һ�����򿪳���');
 writeln('�ڶ������һ����򴰿��еġ�ˮ�ս�͡�');
 writeln('��������ѡ��Ĭ��ֵ��');
 writeln('���Ĳ��������ڴ�С�����еĸ߶�����Ϊ��30�����������Ϊ��75��');
 writeln('���岽�����ȷ��');
 writeln('OVER,�س��˳�');
 readln;
 end;
 end;
 npc:=false;
 clrscr;
 textcolor(white);
 writeln('��1.��ջ��   ��2.ս����   ��3.���Ρ�   ��4.��ɽ����');
 writeln('��5.���С�   ��6.���   ��7.�ؾ���   ��8.������Ա��Ϣ��');
 writeln('( 9.�˳� )');
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
procedure si;  {��ջĸ����}
var n:longint;
begin
 clrscr;
 writeln('�ҵ�����:',jb,'$','     �ҵĻƽ�:',hj);
 writeln('�ҵ������:',rmb,'      �ҵ��������Ƭ:',rmbsp);
 writeln;
 writeln('��1.Ů���졿  ��2.׽���  ��3.����ҩ����  ��4.�������  ��5.����⡿');
 writeln('��6.�߼���ջ��');
 writeln('( 9:���� )');
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
procedure wu;   {����ɹ�����}
begin
 sl:=4;
 clrscr;
 writeln('��ϲ����ɹ���');
 readln;
end;
procedure liu;   {����ʧ�ܽ���}
begin
 sl:=4;
 clrscr;
 writeln('�������㣬����ʧ�ܣ�');
 readln;
end;
procedure qi;    {��ͨս������}
var jineng,a,d,n:longint;ak:boolean;
begin
 if boo=false then
 begin
 a:=0;jineng:=0;
 sjs:=random(108)+1;
 c:='а��'+ckm[sjs];
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
 writeln(' �ȼ�:',cwdj[mrcw],' Ѫ��:',x,'/',xl,' ������:',gjl);
 writeln(c);
 writeln(' �ȼ�:',d,' Ѫ��:',x2,'/',xl2,' ������:',g);
 writeln('��1.�ơ�   ��2.�����ҩ��   ��3.������   ��4.���ܡ�   ��5.׽���');
 case mrcw of
 1:if jineng=0 then begin writeln('��6.���Ƽ��ܡ�'); end;
 3:if jineng=0 then begin writeln('��6.��Ƽ��ܡ�'); end;
 4:if jineng=0 then begin writeln('��6.�������ܡ�'); end;
 else
 end;
 writeln;
 writeln;
 case zt of
 -1:writeln('���û�������κζ������Ѳ����ڹһ���');
 0:writeln('                          ׼��ս��������');
 1:begin writeln('��Ҹ��������',sh1,'���˺���');end;
 2:begin if bx>-1 then writeln('��Ҹ��Լ�����',bx,'��Ѫ����');
 if bx=-1 then writeln('��Ҹ��Լ���������Ѫ��');end;
 3:begin writeln('��Ҹ��Լ����',ll,'���˺���');end;
 4:begin writeln('�����׽�����ˣ�����ʧ���ˣ�');end;
 5:begin writeln('���ʹ���ˡ����ơ����ܣ�ֻ��ϧû�ܶ����Է���');end;
 6:begin writeln('���ʹ���ˡ���ơ����ܣ����Է����',sh1,'���˺���');end;
 7:begin if not ak then begin writeln('���ʹ���ˡ����������ܣ���ϧû�гɹ���');end
 else begin writeln('���ʹ���ˡ����������ܣ�����������2���з�������2��');end;end;
 else
 end;
 if zt<>0 then writeln('���˸�������',sh2,'���˺���');
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
procedure ba;    {ս����Ѫ����}
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
 writeln('��ӵ�е�ҩ��:');
 writeln('��1.С̳Ů���졿:',xhp,' ��2.��̳Ů���졿:',zhp,' ��3.��̳Ů���졿:',dhp,' 9.����');
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
         else begin clrscr;writeln('��û�и�ҩ����');
 readln;boo:=true; end; end;
 '2':begin
 if zhp>0 then
 begin
 bx:=(xl*50) div 100;
 x:=x+bx;
 if x>xl then
 x:=xl;zhp:=zhp-1;boo:=true;
 end
         else begin clrscr;writeln('��û�и�ҩ����');
 readln;boo:=true; end; end;
 '3':begin
 if dhp>0 then
 begin
 bx:=-1;
 x:=xl;dhp:=dhp-1;boo:=true;
 end
          else begin clrscr;writeln('��û�и�ҩ����');
 readln;boo:=true; end; end;
 '9':begin boo:=true;end;
 else
 end;
end;
procedure jiu;    {ս����׽����}
var x,y,n:longint;
begin
 if npc then
 begin
 sl:=29;
 clrscr;
 writeln('NPC�����޷���׽������');boo:=true;
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
 writeln('�úú�������ɽ������׽����');
 readln;
 end
 else
 begin
 x:=random(100)+1;y:=1;
 y:=y+hsf[4]*10;
 clrscr;
 writeln('��ӵ�е�׽����');
 writeln('��1.����׽���:',glq,' ��2.����׽���:',gwq,' 9.����');
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
 writeln('��׽ʧ�ܣ�����');
 boo:=true;
 readln;
 end;
 end
         else
 begin
 clrscr;
 writeln('û�и�׽���������׽ʧ�ܣ�����');
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
 writeln('��׽ʧ�ܣ�����');
 boo:=true;
 readln;
 end;
 end
         else
 begin
 clrscr;
 writeln('û�и�׽���������׽ʧ�ܣ�����');
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
procedure shi;    {ս����ʤ����}
var dj,x,y:longint;s:string;
begin
 clrscr;
 x:=random(20);
 case x of
 0:begin xhp:=xhp+1;s:='С̳Ů����'; end;
 1:begin zhp:=zhp+1;s:='��̳Ů����'; end;
 2:begin dhp:=dhp+1;s:='��̳Ů����'; end;
 3:begin glq:=glq+1;s:='����׽����'; end;
 4:begin gwq:=gwq+1;s:='����׽����'; end;
 5:begin xll:=xll+1;s:='С����ҩ��';end;
 6:begin zll:=zll+1;s:='������ҩ��';end;
 7:begin dll:=dll+1;s:='������ҩ��';end;
 8:begin xhp:=xhp+1;s:='С̳Ů����'; end;
 9:begin zhp:=zhp+1;s:='��̳Ů����'; end;
 10:begin dhp:=dhp+1;s:='��̳Ů����'; end;
 11:begin xhp:=xhp+1;s:='С̳Ů����'; end;
 12:begin zhp:=zhp+1;s:='��̳Ů����'; end;
 13:begin dhp:=dhp+1;s:='��̳Ů����'; end;
 else s:='������Ŷ����Ȼû�С���'
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
 if cwdj[mrcw]<dj then writeln('��ϲ��ʤ������  ��������������')
 else begin writeln('��ϲ��ʤ������ ������������ǰ�������ؽ���������');cwdj[mrcw]:=dj; end;
 write('�������:',s,'+100$');if cgf then begin y:=random(10)+1;hj:=hj+y;writeln('���ٸ�������',y,'���ƽ�'); end;
 readln;
end;
procedure shiyi;   {ս��ʧ�ܽ���}
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
 writeln('Ӣ���ӹ�һ�٣��������ѣ�');
 readln;
 end
 else
 begin
 ck[mrcw]:=2;
 clrscr;
 sl:=41;
 d1:=d1+1;
 writeln('�о���׷����������֣�');
 readln;
 end;
end;
procedure shier;   {��ɽ������}
var n,y,s,t:longint;boo2,boo:boolean;
begin
 clrscr;
 n:=0;cj:=0;y:=0;t:=0;boo:=false;jy2:=cwdj[mrcw]*100;boo2:=false;
 writeln('��սӢ��:',ckm[mrcw]);
 writeln('�����ȼ�:',jh[mrcw,1],'��','   Ӣ�۵ȼ�:',cwdj[mrcw]);
 writeln('���Լӳ�:  ս��������:',jh[mrcw,2]*5,'%   ����������:',jh[mrcw,2]*5,'%');
 write('ϰ�ù���:');
 case gf[mrcw,1] of
 1:writeln('����Ϸ');
 2:writeln('������ľ�');
 3:writeln('��ɾ�');
 else writeln('��');
 end;
 write('ʹ������:');
 if mrwq=1 then writeln('�ڹ�');
 if mrwq=2 then writeln('�ӵ�');
 if mrwq=3 then writeln('��Ӱ��');
 if mrwq=4 then writeln('���ɽ�');
 if mrwq=0 then writeln('��');
 write('��ս����:');
 if mrzj=1 then writeln('̤ѩ������');
 if mrzj=2 then writeln('��ҹ��ʨ����');
 if mrzj=0 then writeln('��');
 writeln('�ۻ���ǩ��:',qd,'��');
 writeln('����:',jb,'��    ','�ƽ�:',hj,'��    ','��ʯ:',ls,'��');
 writeln('A/D:',a1,'/',d1,'   �Ѵ���ٸ�',zyt,'��');
 writeln('��ӵ�еĻ����');
 if hsf[1]>0 then writeln(' ',hsf[1],'�����������');
 if hsf[2]>0 then writeln(' ',hsf[2],'�׹��������');
 if hsf[3]>0 then writeln(' ',hsf[3],'�����ܻ����');
 if hsf[4]>0 then writeln(' ',hsf[4],'��׽�������');
 writeln;
 writeln('��1.ǰ����������  ��2.������������  ��3.���������   ��4.�鿴������');
 writeln('(9.����)');
 ch:=readkey;
 case ch of
 '1':sl:=26;
 '2':sl:=40;
 '3':sl:=45;
 '4':begin
 clrscr;
 writeln('����:');
 writeln('  С̳Ů���죺',xhp,'  ��̳Ů���죺',zhp,'  ��̳Ů���죺',dhp);
 writeln('  ����׽���',glq,'  ����׽����',gwq);
 writeln('  С����ҩ����',xll,'  ������ҩ����',zll,'  ������ҩ����',dll);
 writeln('  �ͼ������',xs1,'  �м������',xs2,'  �߼������',xs3);
 writeln('  �ͼ������飺',xy1,'  �м������飺',xy2,'  �߼������飺',xy3);
 writeln('���س����أ�');
 readln;
 end;
 '9':sl:=3;
 else
 end;
end;
procedure shisan;  {��齱����}
var x,n:longint;
begin
 clrscr;
 randomize;
 x:=random(20)+1;
 writeln('      ++===============++---------------+----------------+---------------+');
 writeln('      ||  лл����     ||    ����LV2    | ������ҩ����10 |    100�ƽ�    |');
 writeln('      ++===============++---------------+----------------+---------------+');
 writeln('      |    ���� LV5    |     6000$      |    лл����    | ������ҩ����5 |');
 writeln('      +----------------+----------------+----------------+---------------+');
 writeln('      | 1���ٶȻ����  |         +----------+            |  ��׽�����10 |');
 writeln('      +----------------+         |5000$/һ��|            +---------------+');
 writeln('      |   ��׽�����10 |         +----------+            |    10000$     |');
 writeln('      +----------------+----------------+----------------+---------------+');
 writeln('      |    ���� LV10   |     4000$      |     20�ƽ�     |    50�ƽ�     |');
 writeln('      +----------------+----------------+----------------+---------------+');
 writeln('      |    ���� LV5    |     4000$      |    лл����    |    лл����   |');
 writeln('      +----------------+----------------+----------------+---------------+');
 writeln('��1.�齱��  ��9.���ء�');
ch:=readkey;
 if ch='9' then begin sl:=3;exit;end
 else
 if jb>=5000 then
 case x of
 1:begin clrscr;jb:=jb-5000;writeln('лл���룡����');
 readln; end;
 2:begin clrscr;jb:=jb-5000;cwdj[mrcw]:=cwdj[mrcw]+2;writeln('����LV2������'); case jh[mrcw,1] of
 1:dj:=10;
 2:dj:=20;
 3:dj:=50;
 4:dj:=70;
 5:dj:=90;
 6:dj:=100;
 else
 end;
 if cwdj[mrcw]<dj then
 else begin writeln('������������ǰ�������ؽ���������');cwdj[mrcw]:=dj; end;
readln; end;
 3:begin clrscr;jb:=jb-5000;writeln('������ҩ����10������');
 readln;zll:=zll+10;end;
 4:begin clrscr;jb:=jb-5000;writeln('100�ƽ𣡣���');
 readln;hj:=hj+100;end;
 5:begin clrscr;jb:=jb-5000;writeln('6000$������');
 readln;jb:=jb+6000;end;
 6:begin clrscr;jb:=jb-5000;writeln('����LV5������');
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
 else begin writeln('������������ǰ�������ؽ���������');cwdj[mrcw]:=dj; end;readln;end;
 7:begin clrscr;jb:=jb-5000;writeln('������ҩ��*5������');
 dll:=dll+5;readln;end;
 8:begin clrscr;jb:=jb-5000;writeln('лл���룡����');
readln; end;
 9:begin clrscr;jb:=jb-5000;writeln('1���ٶȻ����������');
 if hsf[3]=0 then hsf[3]:=1;readln; end;
 10:begin clrscr;jb:=jb-5000;writeln('��׽�����10������');
 gwq:=gwq+10;readln;end;
 11:begin clrscr;jb:=jb-5000;writeln('��׽�����10������');
 gwq:=gwq+10;readln;end;
 12:begin clrscr;jb:=jb-5000;writeln('10000$������');
 jb:=jb+10000;readln; end;
 13:begin clrscr;jb:=jb-5000;writeln('����LV10������');cwdj[mrcw]:=cwdj[mrcw]+10; case jh[mrcw,1] of
 1:dj:=10;
 2:dj:=20;
 3:dj:=50;
 4:dj:=70;
 5:dj:=90;
 6:dj:=100;
 else
 end;
 if cwdj[mrcw]<dj then
 else begin writeln('������������ǰ�������ؽ���������');cwdj[mrcw]:=dj; end;readln;end;
 14:begin clrscr;jb:=jb-5000;writeln('20�ƽ𣡣���');
readln;hj:=hj+20;end;
 15:begin clrscr;jb:=jb-5000;writeln('4000$������');
 readln;jb:=jb+4000;end;
 16:begin clrscr;jb:=jb-5000;writeln('50�ƽ𣡣���');
 readln;hj:=hj+50;end;
 17:begin clrscr;jb:=jb-5000;writeln('����LV5������');
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
 else begin writeln('������������ǰ�������ؽ���������');cwdj[mrcw]:=dj; end;readln;end;
 18:begin clrscr;jb:=jb-5000;writeln('лл���룡����');
 readln; end;
 19:begin clrscr;jb:=jb-5000;writeln('лл���룡����');
 readln; end;
 20:begin clrscr;jb:=jb-5000;writeln('4000������');
 jb:=jb+4000;readln;end;
 end
            else begin clrscr;writeln('���Ӳ��㣡����');
 readln; end;
end;
procedure shiwu;   {����Ա��¼����}
var s:string;n:longint;
begin
 clrscr;
 writeln('�����������1�˳���');
 readln(n);
 if n=1 then begin sl:=3;exit;end;
 readln(s);
 if s<>'hhfzpw1475369' then begin sl:=3; end
 else
 begin
 clrscr;
 writeln('����ң�',rmb,'   �������Ƭ��',rmbsp);
 writeln('ǩ����',qd);
 writeln('�ڹ���',sg,'  �ӵ���',pd,'  ��Ӱ�ڣ�',ayb,'   ���ɽ�',zxj);
 writeln('̤ѩ����',txwz,'��ҹ��ʨ����',zyys);
 writeln('������',jb);
 writeln('���ٸ���',zyt);
 writeln('��ӵ��С̳Ů���죺',xhp,' ��̳Ů���죺',zhp,' ��̳Ů���죺',dhp);
 writeln('��ӵ�й�����',glq,'������',gwq);
 writeln('��ӵ��С����ҩ����',xll);
 writeln('��ӵ��������ҩ����',zll);
 writeln('��ӵ�д�����ҩ����',dll);
 writeln('A/D  ',a1,'  ',d1);
 writeln('�գ�',ri);
 writeln('�ƽ�',hj);
 writeln('�����ȼ�:',gf[mrcw,2]);
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
procedure erliu;   {������սӢ�۽���}
var k,x,n:longint;ch:string;
begin
 clrscr;
 x:=1;
 repeat
 clrscr;
 writeln('��ǰ��',x,'ҳ');k:=0;
 case x of
 1: for i:=1 to 9 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 2: for i:=10 to 18 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 3: for i:=19 to 27 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 4: for i:=28 to 36 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 5: for i:=37 to 45 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 6: for i:=46 to 54 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 7: for i:=55 to 63 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 8: for i:=64 to 72 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 9: for i:=73 to 81 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 10: for i:=82 to 90 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 11: for i:=91 to 99 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 12: for i:=100 to 108 do  begin k:=k+1;write(k,'.',ckm[i],' ');if ck[i]=1 then begin textcolor(yellow);writeln('(�Ѽ��)');textcolor(white);end else writeln; end;
 else
 end;
 writeln('��A:��һҳ��  ��D:��һҳ��  �����ּ�:ѡ��úú���ս��');
 writeln('(0.����)');
 ch:=readkey;
 if upcase(ch)='A' then begin if x-1>=1 then x:=x-1; end;
 if upcase(ch)='D' then begin if x+1<=12 then x:=x+1; end;
 if ch='0' then begin sl:=12; end
 else
 begin
 if (ch>='1')and(ch<='9') then
 begin
 val(ch,n);
 if ck[(x-1)*9+n]=1 then begin mrcw:=(x-1)*9+n;sl:=12; end else begin clrscr;writeln('�úú�δ�������');readln;end;
 end;
 end;
 if (upcase(ch)<>'0')and(upcase(ch)<>'A')and(upcase(ch)<>'D')and((upcase(ch)<'1')or(upcase(ch)>'9')) then begin writeln('��Ҫ�������ݣ����ܻᵼ�³������������');ch:=readkey; end;
 until sl=12;
end;
procedure erba;    {���ٸ�ս��ĸ����}
var n:longint;
begin
 clrscr;
 npc:=true;
 delay(100);
 write('��');
 delay(100);
 write('��');
 delay(100);
 write('��');
 delay(100);
 write('��');
 delay(100);
 write('��');
 delay(100);
 write('��');
 delay(100);
 write('��');
 delay(100);
 write('��');
 delay(100);
 write('��');
 delay(100);
 write('֮');
 delay(100);
 write('��');
 delay(100);
 write('��');
 delay(100);
 write('��');
 writeln;
 writeln;
 delay(300);
 writeln('                                                ��1.���Ź���  ��9.���ء�');

 ch:=readkey;
 if ch='1' then sl:=29
 else sl:=3;
end;
procedure erjiu;   {���ٸ�ս���ӽ���}
var a,i,n:longint;jineng:longint;
begin
 clrscr;
 cgf:=true;
 if boo=false then
 begin
 a:=0;
 sjs:=random(108)+1;
 c:='��'+ckm[sjs];
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
 writeln(' �ȼ�:',cwdj[mrcw],' Ѫ��:',x,'/',xl,' ������:',gjl);
 writeln(c);
 writeln(' �ȼ�:',d,' Ѫ��:',x2,'/',xl2,' ������:',g);
 writeln('��1.�ơ�   ��2.�����ҩ��   ��3.������   ��4.���ܡ�   ��5.׽���');
  case mrcw of
 1:if jineng=0 then begin writeln('��6.���Ƽ��ܡ�'); end;
 3:if jineng=0 then begin writeln('��6.��Ƽ��ܡ�'); end;
 4:if jineng=0 then begin writeln('��6.�������ܡ�'); end;
 else
 end;
 writeln;
 writeln;
 case zt of
 0:writeln('                          ׼��ս��������');
 1:begin writeln('��Ҹ��������',sh1,'���˺���');end;
 2:begin if bx>-1 then writeln('��Ҹ��Լ�����',bx,'��Ѫ����');
 if bx=-1 then writeln('��Ҹ��Լ���������Ѫ��');end;
 3:begin writeln('��Ҹ��Լ����',ll,'���˺���');end;
 4:begin writeln('�����׽�����ˣ�����ʧ���ˣ�');end;
 else
 end;
 if zt<>0 then writeln('���˸�������',sh2,'���˺���');
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
 writeln('NPC�����޷���׽������');boo:=true;
 readln;
 end;
 else
 end;
 end;
 until (sl=8)or(sl=9)or(sl=10)or(sl=11)or(sl=21)or(sl=34);
end;
procedure sanshi;   {��ջ�����������}
var n:longint;
begin
 case sd of
 1:
 begin
 clrscr;
 writeln('�������: С̳Ů����');
 writeln('��������:');
 readln(n);
 if n<0 then begin clrscr;writeln('������󣡣���');readln;sl:=4;end
 else
 if jb>=30*n then begin
 jb:=jb-30*n;xhp:=xhp+n;sl:=4;
 clrscr;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin
 clrscr;sl:=4; writeln('���Ӳ��㣡��������ʧ�ܣ�����');
 readln;
 end;
 end;
 2:
 begin
 clrscr;
 writeln('�������: ��̳Ů����');
 writeln('��������:');
 readln(n);
  if n<0 then begin clrscr;writeln('������󣡣���');readln;sl:=4;end
  else
 if jb>=50*n then begin
 jb:=jb-50*n;zhp:=zhp+n;sl:=4;
 clrscr;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin
 clrscr;sl:=4; writeln('���Ӳ��㣡��������ʧ�ܣ�����');
 readln;
 end;
 end;
 3:
 begin
 clrscr;
 writeln('�������: ��̳Ů����');
 writeln('��������:');
 readln(n);
 if n<0 then begin clrscr;writeln('������󣡣���');readln;sl:=4;end
 else
 if jb>=100*n then begin
 jb:=jb-100*n;dhp:=dhp+n;sl:=4;
 clrscr;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin
 clrscr;sl:=4; writeln('���Ӳ��㣡��������ʧ�ܣ�����');
 readln;
 end;
 end;
 4:
 begin
 clrscr;
 writeln('�������: ����׽����');
 writeln('��������:');
 readln(n);
  if n<0 then begin clrscr;writeln('������󣡣���');readln;sl:=4;end
  else
 if jb>=100*n then begin
 jb:=jb-100*n;glq:=glq+n;sl:=4;
 clrscr;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin
 sl:=4; clrscr;writeln('���Ӳ��㣡��������ʧ�ܣ�����');
 readln;
 end;
 end;
 5:
 begin
 clrscr;
 writeln('�������: ����׽����');
 writeln('��������:');
 readln(n);
  if n<0 then begin clrscr;writeln('������󣡣���');readln;sl:=4;end
  else
 if jb>=300*n then begin
 jb:=jb-300*n;gwq:=gwq+n;sl:=4;clrscr;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin
 sl:=4; clrscr;writeln('���Ӳ��㣡��������ʧ�ܣ�����');
 readln;
 end;
 end;
 else
 end;
end;
procedure sanyi;    {ս��ĸ����}
var n:longint;br:boolean;
begin
 clrscr;
 textcolor(brown);
 br:=false;
 for i:=1 to 108 do if ck[i]=2 then begin br:=true;break; end;
 if br=true then begin writeln('�кú�����Ѻ�����Σ���ȥ��Ԯ������');
 readln;sl:=3; end
 else
 begin
 zt:=0;
 jbz:=1;cgf:=false;
 writeln('��1.������ʶ��  ��2.�ٸ���ƶ��   ��3.���ٸ���  ( 9.���� )');
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
procedure saner;    {��������������}
var n:longint;
begin
 clrscr;
 writeln('             ��ˮ�ս�͡� ������    ');
 writeln('       �ٶ����ɺţ� h��f��p����    �Ƴ���');
 writeln('           �������ʣ��뵽���ɻ�˽������');
 writeln('      ����Ϸ���Խ���ʹ��    ���λ������ָ��');
 writeln('    ����Ⱥ�٣�316530096    ����Ⱥ�ڣ�309743617    �Ƴ���    h��f��p����   ');
 writeln;
 writeln;
 writeln('  ��9.�˳���');
 ch:=readkey;
 case ch of
 '9':begin sl:=3;  end;
 else
 end;
end;
procedure sansan;    {�ٸ���ƶ�ӽ���}
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
  if (x<=0)and(x2<=0) then begin boo:=true;jbboo:=false;clrscr;writeln('������',jbz*100,'���ӣ�����');
 readln;jb:=jbz*100+jb;sl:=3; end
  else
  if (x<=0)or(x2<=0) then begin boo:=true;jbboo:=false;if x2<=0 then begin jbz:=jbz+1;jbboo:=false;boo:=false;end
  else begin clrscr;writeln('������',jbz*100,'���ӣ�����');
 readln;jb:=jbz*100+jb;sl:=3; end;
  end;
 if (x>0)and(x2>0) then
 begin
 writeln(ckm[mrcw],' �ȼ�:',cwdj[mrcw],' Ѫ��:',x,'/',xl,' ������:',gjl);
 writeln(c,' �ȼ�:',d,' Ѫ��:',x2,'/',xl2,' ������:',g);
 writeln('��1.����ҩ����   ��2.������   ��3.���ܡ�');
 case zt of
 0:writeln('                          ׼��ս��������');
 1:begin writeln('��Ҹ��������',sh1,'���˺���');end;
 2:begin if bx>-1 then writeln('��Ҹ��Լ�����',bx,'��Ѫ����');
 if bx=-1 then writeln('��Ҹ��Լ���������Ѫ��');end;
 3:begin writeln('��Ҹ��Լ����',ll,'���˺���');end;
 4:begin writeln('�����׽�����ˣ�����ʧ���ˣ�');end;
 else
 end;
 if zt<>0 then writeln('���˸�������',sh2,'���˺���');
 ch:=readkey;
 case ch of
 '1':begin zt:=3;zzms:=2;sl:=34;boo:=true;jbboo:=false; end;
 '2':begin zt:=1;sh1:=(gjl+random(10));x2:=x2-sh2;
  if (x<=0)and(x2<=0) then begin boo:=true;jbboo:=false;clrscr;writeln('������',jbz*100,'���ӣ�����');
 readln;jb:=jbz*100+jb;sl:=3; end
  else
  if (x<=0)or(x2<=0) then begin boo:=true;jbboo:=false;if x2<=0 then begin jbz:=jbz+1;jbboo:=false;boo:=false;end
  else begin clrscr;writeln('������',jbz*100,'���ӣ�����');
 readln;jb:=jbz*100+jb;sl:=3; end;
  end;
  end;
 '3':begin sl:=11; end;
 else
 end;
 end;
 until (sl=3)or(sl=34)or(sl=32)or(sl=11)or(sl=33);
end;
procedure sansi;    {����ҩ��ʹ�ý���}
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
 writeln('��ӵ�е�ҩ��:');
 writeln('��1.С����ҩ����:',xll,'  ��2.������ҩ����:',zll,'  ��3.������ҩ����:',dll,'  9.����  ');
 ch:=readkey;
 case ch of
 '1':begin
 if xll>0 then
 begin
 ll:=50;
 gjl:=gjl+50;
 xll:=xll-1;boo:=true;
 end
         else begin clrscr;writeln('��û�и�ҩ����');
 readln;jbboo:=false; end; end;
 '2':begin
 if zll>0 then
 begin
 ll:=100;
 gjl:=gjl+100;
 zll:=zll-1;boo:=true;
 end
         else begin clrscr;writeln('��û�и�ҩ����');
 readln;jbboo:=true; end; end;
 '3':begin
 if dll>0 then
 begin
 ll:=200;
 gjl:=gjl+200;dll:=dll-1;boo:=true;
 end
          else begin clrscr;writeln('��û�и�ҩ����');
 readln;jbboo:=true; end; end;
 '9':begin boo:=true;end
 else
 end;
end;
procedure sanwu;     {������Ϸ�������}
var j,x,y,z:longint;br:boolean;s:string;s1:ansistring;
begin
 clrscr;
 writeln('��ȷ��Ҫ�˳��ó���');
 writeln('��1.ȷ���˳���  ��2.���ˣ�����һ�᡿');
 ch:=readkey;
 if ch='1' then
 begin
 clrscr;
 ch:='1';
 if ch='1' then
 begin
 writeln('���������ɾ����Ϊ����Ϸ����.exe�����ļ�');
 writeln('���ļ��ɻ�ԭ�ϴ���Ϸ��Ϣ��');
 writeln('���������EXE�ļ������ļ��л�C:\Windows\stystem32�ļ����У�');
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
 assign(output,'��Ϸ����.EXE');rewrite(output);
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
procedure sanliu;    {��׽�����ӽ���}
var ch:char;
begin
 clrscr;
 writeln('1.����׽����(1%�ɹ�):100$  2.����׽����(5%�ɹ�):300$');
 writeln('��ӵ��:',glq,' ',gwq);
 writeln('9.����');
 ch:=readkey;
 case ch of
 '1':begin sd:=4;sl:=30; end;
 '2':begin sd:=5;sl:=30; end;
 '9':begin sl:=4; end;
 else
 end;
end;
procedure sanqi;    {����ҩ�������ӽ���}
var ch:char;
begin
 clrscr;
 writeln('1.С����ҩ��������50�㹥���� һ��ս����:200$ ');
 writeln('2.������ҩ��������100�㹥���� һ��ս����:500$ ');
 writeln('3.������ҩ��������200�㹥���� һ��ս����:1000$  ');
 writeln('9.����');
 ch:=readkey;
 case ch of
 '1':begin
 if jb>=200 then
 begin
 clrscr;
 xf:=xf+200;jb:=jb-200;xll:=xll+1;sl:=3;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin clrscr;writeln('���Ӳ��㣡��������ʧ�ܣ�����');
readln;sl:=3;
 end;
 end;
 '2':begin
 if jb>=500 then
 begin
 clrscr;
 xf:=xf+500;jb:=jb-500;xll:=xll+1;sl:=3;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin clrscr;writeln('���Ӳ��㣡��������ʧ�ܣ�����');
 readln;sl:=3;
 end;
 end;
 '3':begin
 if jb>=1000 then
 begin
 clrscr;
 xf:=xf+1000;jb:=jb-1000;xll:=xll+1;sl:=3;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin clrscr;writeln('���Ӳ��㣡��������ʧ�ܣ�����');
 readln;sl:=3;
 end;
 end;
 else sl:=4;
 end;
end;
procedure sanba;    {�ڿ����}
var ch:char;i,j,k,n:longint;
begin
 getdate(nian,yue,ri2,xq);
 if ri=ri2 then begin clrscr;writeln('�������ڹ��󣡣����͹���������������');
readln;sl:=3; end
 else
 begin
 n:=0;
 clrscr;
 ri:=ri2;
 write('�ڿ���');
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
 writeln('��ϲ�͹��ڵ�',((k div 10)+1)*10,'���ƽ�');
 readln;
 sl:=46;
 end;
end;
procedure sanjiu;    {��������}
var ch:char;
begin
 clrscr;
 writeln('������');
 writeln('1.�ڹ�������10%��������:1000�ƽ�    ');
 writeln('2.�ӵ�������20%��������:2000�ƽ�    ');
 writeln('3.��Ӱ�ڣ�����30%����������3000�ƽ�');
 writeln('4.���ɽ�������50%����������5000�ƽ�');
 writeln('���');
 writeln('5.̤ѩ��������20%�����ʣ���2000�ƽ�');
 writeln('6.��ҹ��ʨ�ӣ�����30%�����ʣ���3000�ƽ�');
 writeln('9.����');
ch:=readkey;
 case ch of
 '1':begin
 if sg then begin clrscr;writeln('���ѹ��򣡣��������ظ����򣡣���');
 readln; end
 else
 begin
 if hj>=1000 then begin clrscr;hj:=hj-1000;writeln('����ɹ�������');
 gjl:=((cwdj[mrcw]*10)*110)div 100;readln;mrwq:=1;sg:=true; sl:=4; end
 else begin clrscr;writeln('�ƽ��㣡����');
 readln; end;end;
 end;
 '2':begin
 if pd then begin clrscr;writeln('���ѹ��򣡣��������ظ����򣡣���');
 readln;end
 else
 begin
 if hj>=2000 then begin clrscr;hj:=hj-2000;writeln('����ɹ�������');
 gjl:=((cwdj[mrcw]*10)*120)div 100;readln;mrwq:=2;pd:=true; sl:=4; end
 else begin clrscr;writeln('�ƽ��㣡����');
 readln; end;end;
 end;
 '3':begin
 if ayb then begin clrscr;writeln('���ѹ��򣡣��������ظ����򣡣���');
 readln;end
 else
 begin
 if hj>=3000 then begin clrscr;hj:=hj-3000;writeln('����ɹ�������');
 gjl:=((cwdj[mrcw]*10)*130)div 100;readln;mrwq:=3;ayb:=true; sl:=4; end
 else begin clrscr;writeln('�ƽ��㣡����');
 readln; end;end;
 end;
 '4':begin
 if zxj then begin clrscr;writeln('���ѹ��򣡣��������ظ����򣡣���');
 readln;end
 else
 begin
 if hj>=5000 then begin clrscr;hj:=hj-5000;writeln('����ɹ�������');
 gjl:=((cwdj[mrcw]*10)*150)div 100;readln;mrwq:=4;zxj:=true; sl:=4; end
 else begin clrscr;writeln('�ƽ��㣡����');
 readln; end;end;
 end;
 '5':begin
 if txwz then begin clrscr;writeln('���ѹ��򣡣��������ظ����򣡣���');
 readln;end
 else
 begin
 if hj>=2000 then begin clrscr;hj:=hj-2000;writeln('����ɹ�������');
 readln;mrzj:=1;txwz:=true; sl:=4; end
 else begin clrscr;writeln('�ƽ��㣡����');
 readln; end;end;
 end;
 '6':begin
 if zyys then begin clrscr;writeln('���ѹ��򣡣��������ظ����򣡣���');
 readln;end
 else
 begin
 if hj>=3000 then begin clrscr;hj:=hj-3000;writeln('����ɹ�������');
readln;mrzj:=2;zyys:=true; sl:=4; end
 else begin clrscr;writeln('�ƽ��㣡����');
 readln; end;end;
 end;
 else sl:=4;
 end;
end;
procedure sishi;    {��������������}
var ch:char;
begin
 clrscr;
 if sg then write('1.�ڹ�   ');if pd then write('2.�ӵ�   ');if  ayb then write('3.��Ӱ��    ');if zxj then write('4.���ɽ�    ');
 writeln('0.����');
 if not sg and not pd and not ayb and not zxj then writeln('��������������') else writeln;
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
procedure siyi;     {���ν���}
var ch:char;br:boolean;f,m:longint;
begin
 textcolor(white);
 clrscr;
 m:=60;
 br:=false;
 for i:=1 to 108 do begin
 if ck[i]=2 then begin f:=i;br:=true;break; end;
 end;
 if br=false then begin writeln('�ںú���δ����������');
 readln;sl:=3; end;
 if br and (f<109) then
 begin
 writeln(ckm[f],'�б����������У��ȴ�����Ӫ��');
 writeln('��1.ǰȥӪ�ȡ�   ��2.���շ�����');
 ch:=readkey;
 case ch of
 '1':begin
 clrscr;
 writeln('��1.��ͨӪ�ȡ�   (�ȴ�һ����)');
 writeln('��2.�������ˡ�   (����500����)');
 writeln('��9.���أ�');
 ch:=readkey;
 case ch of
 '1':begin
 clrscr;
 repeat
 m:=m-1;
 delay(1000);
 clrscr;
 writeln('ʣ��0����',m,'��');
 until m=0;
 writeln('�ɹ�Ӫ�ȳ�',ckm[f]);
 ck[f]:=1;
 readln;
 sl:=3;
 end;
 '2':begin
 if jb>=500 then
 begin
 jb:=jb-500;
 clrscr;
 writeln('�ɹ����',ckm[f],'!');
 ck[f]:=1;
 readln;
 sl:=3;
 end
 else begin writeln('�������㣡����'); readln; sl:=3;end;
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
 writeln('�ںú���δ����������');
readln;sl:=3;
 end;}
end;
procedure sier;     {�����ĸ����}
var ch:char;
begin
 clrscr;
 writeln('1. һ������������������ӳ�10%��   �ۼ�:2000�ƽ� ');
 writeln('2. һ�׹���������������ӳ�10%��   �ۼ�:2000�ƽ�');
 writeln('3. һ���ٶȻ���������ܼӳ�10%��   �ۼ�:2000�ƽ�');
 writeln('4. һ��׽���������׽���ӳ�10%��   �ۼ�:2000�ƽ�');
 writeln('5.���������');
 writeln('6.����');
 ch:=readkey;
 case ch of
 '1':
 begin
 clrscr;
 if hsf[1]>0 then begin writeln('����ӵ�иû��������ѡ����ף�');
readln; end
 else
 begin
 if hj>=2000 then begin hj:=hj-2000;hsf[1]:=1;clrscr;writeln('��ϲ����ɹ�������');
readln;end
 else begin writeln('�����ƽ��㣡����');
 readln;end;
 end;
 end;
 '2':
 begin
 clrscr;
 if hsf[2]>0 then begin writeln('����ӵ�иû��������ѡ����ף�');
 readln; end
 else
 begin
 if hj>=2000 then begin hj:=hj-2000;hsf[2]:=1;clrscr;writeln('��ϲ����ɹ�������');
readln;end
 else begin writeln('�����ƽ��㣡����');
readln;end;
 end;
 end;
 '3':
 begin
 clrscr;
 if hsf[3]>0 then begin writeln('����ӵ�иû��������ѡ����ף�');
readln; end
 else
 begin
 if hj>=2000 then begin hj:=hj-2000;hsf[3]:=1;clrscr;writeln('��ϲ����ɹ�������');
readln;end
 else begin writeln('�����ƽ��㣡����');
 readln;end;
 end;
 end;
 '4':
 begin
 clrscr;
 if hsf[4]>0 then begin writeln('����ӵ�иû��������ѡ����ף�');
 readln; end
 else
 begin
 if hj>=2000 then begin hj:=hj-2000;hsf[4]:=1;clrscr;writeln('��ϲ����ɹ�������');
 readln;end
 else begin writeln('�����ƽ��㣡����');
readln;end;
 end;
 end;
 '5':begin sl:=43; end;
 '6':begin sl:=4; end;
 else
 end;
end;
procedure sisan;    {����������ӽ���}
var x,n,kn:longint;ch:char;
begin
 clrscr;
 x:=0;
 writeln;
 writeln('��ע:');
 writeln('��1�ס�����2�ס�100%�ɹ���                ����:2000�ƽ�');
 writeln('��2�ס�����3�ס�80%�ɹ���,ʧ�ܲ�����      ����:3000�ƽ�');
 writeln('��3�ס�����4�ס�50%�ɹ���,ʧ�ܲ�����      ����:4000�ƽ�');
 writeln('��4�ס�����5�ס�20%�ɹ���,ʧ�ܽ�һ��      ����:5000�ƽ�');
 writeln('������ѡ����׵Ļ������');
 writeln('����ӵ��:');
 if hsf[1]>0 then begin writeln('��1. ',hsf[1],'�������������');x:=x+1; end;
 if hsf[2]>0 then begin writeln('��2. ',hsf[2],'�׹����������');x:=x+1; end;
 if hsf[3]>0 then begin writeln('��3. ',hsf[3],'�����ܻ������');x:=x+1; end;
 if hsf[4]>0 then begin writeln('��4. ',hsf[4],'��׽���������');x:=x+1; end;
 writeln('5.����');
 ch:=readkey;
 case ch of
 '1':
 begin
 if hsf[1]>0 then
 begin
 clrscr;
 if hsf[1]=5 then begin writeln('�û������Ϊ���ף�');
readln; end
 else
 begin
 writeln('���׶���:',hsf[1],'�����������');
 writeln('���׳ɹ�������',hsf[1]+1,'��');
 write('�ɹ���:');
 case hsf[1] of
 1:begin writeln('100%');kn:=100; end;
 2:begin writeln('80%');kn:=80; end;
 3:begin writeln('50%');kn:=50; end;
 4:begin writeln('20%');kn:=20; end;
 else
 end;
 writeln('����:',(hsf[1]+1)*1000,'�ƽ�');
 writeln('1.����   2.����');
 ch:=readkey;
 case ch of
 '1':
 begin
 if hj>=(hsf[1]+1)*1000 then
 begin
 hj:=hj-(hsf[1]+1)*1000;
 n:=random(100)+1;
 if n<=kn then begin hsf[1]:=hsf[1]+1;writeln('��ϲ��������ϲ���������׳ɹ���  �����ӳ�',hsf[1]*10,'%');
readln;end
 else begin write('�������ϡ�������ʧ�ܡ���');if hsf[1]=4 then begin hsf[1]:=3;writeln('��һ�ף�������');end;
readln; end;
 end;
 end;
 end;
 end;
 end
 else begin writeln('�����������ݣ����ܵ��³�����������');
readln; end;
 end;

'2':
 begin
 if hsf[2]>0 then
 begin
 clrscr;
 if hsf[2]=5 then begin writeln('�û������Ϊ���ף�');
readln; end
 else
 begin
 writeln('���׶���:',hsf[2],'�׹��������');
 writeln('���׳ɹ�������',hsf[2]+1,'��');
 write('�ɹ���:');
 case hsf[2] of
 1:begin writeln('100%');kn:=100; end;
 2:begin writeln('80%');kn:=80; end;
 3:begin writeln('50%');kn:=50; end;
 4:begin writeln('20%');kn:=20; end;
 else
 end;
 writeln('����:',(hsf[2]+1)*1000,'�ƽ�');
 writeln('1.����   2.����');
 ch:=readkey;
 case ch of
 '1':
 begin
 if hj>=(hsf[2]+1)*1000 then
 begin
 hj:=hj-(hsf[2]+1)*1000;
 n:=random(100)+1;
 if n<=kn then begin hsf[2]:=hsf[2]+1;writeln('��ϲ��������ϲ���������׳ɹ���   �����ӳ�',hsf[2]*10,'%');
 readln;end
 else begin write('�������ϡ�������ʧ�ܡ���');if hsf[2]=4 then begin hsf[2]:=3;writeln('��һ�ף�������');end;
readln;end;
 end;
 end;
 end;
 end;
 end
 else begin writeln('�����������ݣ����ܵ��³�����������');
readln; end;
 end;

 '3':
 begin
 if hsf[3]>0 then
 begin
 clrscr;
 if hsf[3]=5 then begin writeln('�û������Ϊ���ף�');
readln; end
 else
 begin
 writeln('���׶���:',hsf[3],'�����ܻ����');
 writeln('���׳ɹ�������',hsf[3]+1,'��');
 write('�ɹ���:');
 case hsf[3] of
 1:begin writeln('100%');kn:=100; end;
 2:begin writeln('80%');kn:=80; end;
 3:begin writeln('50%');kn:=50; end;
 4:begin writeln('20%');kn:=20; end;
 else
 end;
 writeln('����:',(hsf[3]+1)*1000,'�ƽ�');
 writeln('1.����   2.����');
ch:=readkey;
if ch='1' then
 begin
 if hj>=(hsf[3]+1)*1000 then
 begin
 hj:=hj-(hsf[3]+1)*1000;
 n:=random(100)+1;
 if n<=kn then begin hsf[3]:=hsf[3]+1;writeln('��ϲ��������ϲ���������׳ɹ���  ���ܼӳ�',hsf[3]*10,'%');
readln;end
 else begin write('�������ϡ�������ʧ�ܡ���');if hsf[3]=4 then begin hsf[3]:=3;writeln('��һ�ף�������');end;
readln; end;
 end;
 end;
 end;
 end
 else begin writeln('�����������ݣ����ܵ��³�����������');
readln; end;
 end;
 '4':
 begin
 if hsf[4]>0 then
 begin
 clrscr;
 if hsf[4]=5 then begin writeln('�û������Ϊ���ף�');
readln; end
 else
 begin
 writeln('���׶���:',hsf[4],'�����������');
 writeln('���׳ɹ�������',hsf[4]+1,'��');
 write('�ɹ���:');
 case hsf[4] of
 1:begin writeln('100%');kn:=100; end;
 2:begin writeln('80%');kn:=80; end;
 3:begin writeln('50%');kn:=50; end;
 4:begin writeln('20%');kn:=20; end;
 else
 end;
 writeln('����:',(hsf[4]+1)*1000,'�ƽ�');
 writeln('1.����   2.����');
ch:=readkey;
 case ch of
 '1':
 begin
 if hj>=(hsf[4]+1)*1000 then
 begin
 hj:=hj-(hsf[4]+1)*1000;
 n:=random(100)+1;
 if n<=kn then begin hsf[4]:=hsf[4]+1;writeln('��ϲ��������ϲ���������׳ɹ���  ׽���ӳ�',hsf[4]*10,'%');
readln;end
 else begin write('�������ϡ�������ʧ�ܡ���');if hsf[1]=4 then begin hsf[1]:=3;writeln('��һ�ף�������');end;
readln; end;
 end;
 end;
 end;
 end;
 end
 else begin writeln('�����������ݣ����ܵ��³�����������');
readln; end;
 end;
 else begin sl:=4; end;
 end;
end;
procedure sisi;     {ǩ������}
var ch:char;s,y:longint;
begin
 getdate(nian,yue,ri4,xq);
 if ri3=ri4 then begin clrscr;writeln('������ǩ���������͹���������������');
 readln;sl:=3; end
 else
 begin
 clrscr;
 ri3:=ri4;
 textcolor(yellow);
 write('ǩ���ɹ�������');
 readln;
 textcolor(white);
 clrscr;
 s:=random(2);y:=random(100)+1;
 case s of
 0:begin clrscr;qd:=qd+1;writeln('��ϲ���',y,'������','    �����ۻ���ǩ��',qd,'�죡');
readln;jb:=jb+y; end;
 1:begin clrscr;qd:=qd+1;writeln('��ϲ���',y div 2,'�ƽ�','     �����ۻ���ǩ��',qd,'�죡');
readln;hj:=hj+y div 2;end;
 else
 end;
 sl:=46;
 end;
end;
procedure siwu;     {�������������}
var n:longint;ch:char;
begin
clrscr;
n:=0;
if txwz then begin writeln('1.̤ѩ������');n:=n+1; end;
if zyys then begin writeln('2.��ҹ��ʨ����');n:=n+1; end;
writeln('0.����');
if not txwz and not zyys then writeln('�����������') else writeln;
ch:=readkey;
if ch='1' then begin if txwz then begin mrzj:=1;sl:=12; end else begin writeln('��Ҫ�������ݣ����ܻᵼ�³������������');
readln; end; end;
if ch='2' then begin if zyys then begin mrzj:=2;sl:=12; end else begin writeln('��Ҫ�������ݣ����ܻᵼ�³������������');
 readln; end; end;
if ch='0' then begin sl:=12 end;
sl:=12;
end;
procedure siliu;     {�ĸ����}
var ch:char;
begin
clrscr;
writeln('��1.�齱��  ��2.�ڿ�  ��3.ǩ����');
writeln('(9.����)');
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
procedure siqi;    {����ĸ����}
var ch:char;
begin
clrscr;
getdate(nian,yue,ri5,xq);
if (xq=5)or(xq=6)or(xq=0) then
begin
writeln('��ӭ��˺��У�����');
writeln('��1.�䵱�С�     ��2.���С�     ��3.���С�');
writeln('��9.���أ�');
ch:=readkey;
case ch of
'1':sl:=48;
'2':sl:=49;
'3':sl:=50;
'9':sl:=3;
else
end;
end
else begin writeln('��������ĩ���ţ�');
readln;sl:=3; end;
end;
procedure siba;     {�䵱���ӽ���}
var ch:char;n:longint;
begin
clrscr;
writeln('���ջ��ʱ�');
writeln('500����-->1�ƽ�');
writeln('1�ƽ�-->100����');
writeln('500�ƽ�-->1��ʯ');
writeln('1��ʯ-->100�ƽ�');
writeln('��1.�������ƽ�      ��2.�ƽ�������');
writeln('��3.�ƽ���ʯ��      ��4.��ʯ���ƽ�');
writeln('(9.����)');
ch:=readkey;
case ch of
'1':begin
clrscr;
writeln('��ӵ��',jb,'����    ',hj,'�ƽ�');
writeln('���������뻻�õĻƽ�����');
readln(n);
if n<0 then begin clrscr;writeln('������󣡣���');readln; end
else
if jb>=n*500 then begin clrscr;jb:=jb-500*n;hj:=hj+n;writeln('��ϲ�һ��ɹ�������');
readln;end else begin clrscr;writeln('��������Ŷ~');
readln;end;
end;
'2':begin
clrscr;
writeln('��ӵ��',jb,'����    ',hj,'�ƽ�');
writeln('�������������ĵĻƽ�����');
readln(n);
if n<0 then begin clrscr;writeln('������󣡣���');readln; end
else
if hj>=n then begin clrscr;hj:=hj-n;jb:=jb+n*100;writeln('��ϲ�һ��ɹ�������');
readln;end else begin clrscr;writeln('��������Ŷ~');
readln;end;
end;
'3':begin
clrscr;
writeln('��ӵ��',hj,'�ƽ�   ',ls,'��ʯ');
writeln('���������뻻�õ���ʯ����');
readln(n);
if n<0 then begin clrscr;writeln('������󣡣���');readln; end
else
if hj>=n*500 then begin clrscr;hj:=hj-500*n;ls:=ls+n;writeln('��ϲ�һ��ɹ�������');
readln;end else begin clrscr;writeln('�ƽ���Ŷ~');
readln;end;
end;
'4':begin
clrscr;
writeln('��ӵ��',hj,'�ƽ�    ',ls,'��ʯ');
writeln('�������������ĵ���ʯ����');
readln(n);
if n<0 then begin clrscr;writeln('������󣡣���');readln; end
else
if ls>=n then begin clrscr;ls:=ls-n;hj:=hj+n*100;writeln('��ϲ�һ��ɹ�������');
readln;end else begin clrscr;writeln('��ʯ����Ŷ~');
readln;end;
end;
'9':sl:=3;
else
end;
end;
procedure sijiu;    {�����ӽ���}
var ch:char;n:longint;
begin
clrscr;
getdate(nian,yue,ri5,xq);
gply:=(gp*((yue-yy)*30+(ri5-rr)))div 100;
writeln('�������ʱ�');
writeln('ÿ�������������1%(��������)');
writeln('��ͨ����Ϊ����,ÿ��30�ս���');
writeln;
writeln('��ǰ�Ѵ����',gp,'   �Ѳ������棺',gply);
writeln('��1.���롿   ��2.ȡ����');
writeln('(9.����)');
ch:=readkey;
case ch of
'1':begin
clrscr;
if gp=0 then
begin
clrscr;
writeln('��������룺');
writeln('ע��������������������ⲻ�����ٵĲ�����������');
readln(n);
if jb>=n then begin jb:=jb-n;gp:=gp+n;if rr=0 then getdate(nian,yue,ri5,xq);yy:=yue;rr:=ri5;clrscr;writeln('��ϲ����ɹ���');
readln;end
else begin writeln('�������㣡����');
readln; end;
end
else begin writeln('���Ѵ��룡��������׷�ӣ�����');
 readln;end;
end;
'2':begin
clrscr;
writeln('ȷ��ȡ����');
writeln('��������Ϊ��',gply);
writeln('��1.ȷ��ȡ����  ��2.���ء�');
ch:=readkey;
if ch='1' then
begin
clrscr;
jb:=jb+gp+gply;gp:=0;gply:=0;
writeln('��ȡ�������������ѵ��ˣ�����');
readln;
end;
end;
'9':sl:=47;
else
end;
end;
procedure wushi;     {�����ӽ���}
var ch:char;
begin
clrscr;
writeln('#�����з��գ�Ͷ�������#');
writeln;
writeln;
writeln('��ǰӵ�й�Ʊ��');
writeln('ˮ�ծת�ɣ�',shzzs);
writeln('��կ���Źɣ�',dzjys);
writeln('��͢��»�ɣ�',ctlls);
writeln;
writeln;
writeln('���չ�Ʊ��Ŀ��:');
write('ˮ�ծת�ɣ�������߷��գ���',shzzj,'  ͬ��');
if tbzz1>=0 then writeln('����',tbzz1) else writeln('�»�',abs(tbzz1));
write('��կ���Źɣ��������з��գ���',dzjyj,'  ͬ��');
if tbzz2>=0 then writeln('����',tbzz2) else writeln('�»�',abs(tbzz2));
write('��͢��»�ɣ�������ͷ��գ���',ctllj,'  ͬ��');
if tbzz3>=0 then writeln('����',tbzz3) else writeln('�»�',abs(tbzz3));
writeln('��1.�����Ʊ��    ��2.���۹�Ʊ��');
writeln('(9.����)');
ch:=readkey;
case ch of
'1':sl:=51;
'2':sl:=52;
'9':sl:=47;
else
end;
end;
procedure wuyi;      {�����Ʊ����}
var ch:char; n:longint;
begin
clrscr;
writeln('���չ�Ʊ��Ŀ��:');
write('ˮ�ծת�ɣ�������߷��գ���',shzzj,'  ͬ��');
if tbzz1>=0 then writeln('����',tbzz1) else writeln('�»�',abs(tbzz1));
write('��կ���Źɣ��������з��գ���',dzjyj,'  ͬ��');
if tbzz2>=0 then writeln('����',tbzz2) else writeln('�»�',abs(tbzz2));
write('��͢��»�ɣ�������ͷ��գ���',ctllj,'  ͬ��');
if tbzz3>=0 then writeln('����',tbzz3) else writeln('�»�',abs(tbzz3));
writeln;
writeln('�������');
writeln('��1.ˮ�ծת�ɡ�   ��2.��կ���Źɡ�   ��3.��͢��»�ɡ�');
writeln('(9.����)');
ch:=readkey;
case ch of
'1':begin
clrscr;
writeln('��ˮ�ծת�ɡ�:');
writeln('ÿֻ��Ʊ����:',shzzj,'����');
write('����������');
readln(n);
if n*shzzj<=jb then begin jb:=jb-n*shzzj;shzzs:=shzzs+n;clrscr;writeln('����ɹ�������');
readln;end;
end;
'2':begin
clrscr;
writeln('����կ���Źɡ�:');
writeln('ÿֻ��Ʊ����:',dzjyj,'����');
write('����������');
readln(n);
if n*dzjyj<=jb then begin jb:=jb-n*dzjyj;dzjys:=dzjys+n;clrscr;writeln('����ɹ�������');
 readln;end;
end;
'3':begin
clrscr;
writeln('����͢��»�ɡ�:');
writeln('ÿֻ��Ʊ����:',ctllj,'����');
write('����������');
 readln(n);
if n*ctllj<=jb then begin jb:=jb-n*ctllj;ctlls:=ctlls+n;clrscr;writeln('����ɹ�������');
 readln;end;
end;
'9':sl:=50;
else
end;
end;
procedure wuer;       {���۹�Ʊ����}
var ch:char; n:longint;
begin
clrscr;
writeln('��ǰӵ�й�Ʊ��');
writeln('ˮ�ծת�ɣ�',shzzs);
writeln('��կ���Źɣ�',dzjys);
writeln('��͢��»�ɣ�',ctlls);
writeln;
writeln('���չ�Ʊ��Ŀ��:');
write('ˮ�ծת�ɣ�������߷��գ���',shzzj,'  ͬ��');
if tbzz1>=0 then writeln('����',tbzz1) else writeln('�»�',abs(tbzz1));
write('��կ���Źɣ��������з��գ���',dzjyj,'  ͬ��');
if tbzz2>=0 then writeln('����',tbzz2) else writeln('�»�',abs(tbzz2));
write('��͢��»�ɣ�������ͷ��գ���',ctllj,'  ͬ��');
if tbzz3>=0 then writeln('����',tbzz3) else writeln('�»�',abs(tbzz3));
writeln;
writeln('���۶���');
writeln('��1.ˮ�ծת�ɡ�   ��2.��կ���Źɡ�   ��3.��͢��»�ɡ�');
writeln('(9.����)');
ch:=readkey;
case ch of
'1':begin
clrscr;
writeln('��ˮ�ծת�ɡ�:');
writeln('ÿֻ��Ʊ����:',shzzj,'����');
writeln('���й�Ʊ����',shzzs,'֧');
write('����������');
readln(n);
if n<=shzzs then begin jb:=jb+n*shzzj;shzzs:=shzzs-n;clrscr;writeln('�ɹ��۳����������',n*shzzj,'������');
readln;end;
end;
'2':begin
clrscr;
writeln('����կ���Źɡ�:');
writeln('ÿֻ��Ʊ����:',dzjyj,'����');
writeln('���й�Ʊ����',dzjys,'֧');
write('����������');
readln(n);
if n<=dzjys then begin jb:=jb+n*dzjyj;dzjys:=dzjys-n;clrscr;writeln('�ɹ��۳����������',n*dzjyj,'������');
readln;end;
end;
'3':begin
clrscr;
writeln('����͢��»�ɡ�:');
writeln('ÿֻ��Ʊ����:',ctllj,'����');
writeln('���й�Ʊ����',ctlls,'֧');
write('����������');
readln(n);
if n<=ctlls then begin jb:=jb+n*ctllj;ctlls:=ctlls-n;clrscr;writeln('����ɹ����������',n*ctllj,'������');
readln;end;
end;
'9':sl:=50;
else
end;
end;
procedure wusan;      {�ؾ�ĸ����}
var ch:char;n:longint;
begin
ch:='1';
if ch='2' then sl:=3
else
begin
clrscr;
writeln('��1.�����    ��2.�����ء�    ��3.Ӣ��̳��');
writeln('(9.����)');
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
procedure wusi;       {�����ӽ���}
var ch:char;n:longint;
begin
clrscr;
writeln('��ǰѡ��Ӣ�ۣ�',ckm[mrcw]);
if gf[mrcw,1]=0 then begin writeln('δѧϰ������');end
else begin
write('������');
case gf[mrcw,1] of
1:writeln(gf[mrcw,2],'�ء�����Ϸ');
2:writeln(gf[mrcw,2],'�ء�������ľ�');
3:writeln(gf[mrcw,2],'�ء���ɾ�');
else
end;
end;
 writeln('���򹦷�');
 writeln('  ��1.��ͨ����:һ�ء�����Ϸ��');
 writeln('   ��飺������������10%������������5%   ���ƽ�500����');
 writeln('  ��2.���⹦��:һ�ء�������ľ���');
 writeln('   ��飺������������15%������������10%  ���ƽ�1000����');
 writeln('  ��3.��������:һ�ء���ɾ���');
 writeln('   ��飺������������20%������������15%  ����ʯ10����');
 writeln('  ��7.�ҵĹ�����');
 writeln('  ��8.�������ء�   ��9.���ء�');
 ch:=readkey;
 case ch of
 '1':
 begin
 clrscr;
 if gf[mrcw,1]>0 then begin clrscr;writeln('����ѧϰ��ĳ�ֹ���������ѧϰ�����������ѡ����أ�');readln; end
 else
 begin
 if hj>=500 then begin hj:=hj-500;gf[mrcw,1]:=1;gf[mrcw,2]:=1;clrscr;writeln('��ϲ����ɹ�������');readln;end
 else begin clrscr;writeln('�����ƽ��㣡����');readln;end;
 end;
 end;
 '2':
 begin
 clrscr;
 if gf[mrcw,1]>0 then begin clrscr;writeln('����ѧϰ��ĳ�ֹ���������ѧϰ�����������ѡ����أ�');readln; end
 else
 begin
 if hj>=1000 then begin hj:=hj-1000;gf[mrcw,1]:=2;gf[mrcw,2]:=1;clrscr;writeln('��ϲ����ɹ�������');readln;end
 else begin clrscr;writeln('�����ƽ��㣡����');readln;end;
 end;
 end;
 '3':
 begin
 clrscr;
 if gf[mrcw,1]>0 then begin clrscr;writeln('����ѧϰ��ĳ�ֹ���������ѧϰ�����������ѡ����أ�');readln; end
 else
 begin
 if ls>=10 then begin ls:=ls-10;gf[mrcw,1]:=3;gf[mrcw,2]:=1;clrscr;writeln('��ϲ����ɹ�������');readln;end
 else begin clrscr;writeln('������ʯ���㣡����');readln;end;
 end;
 end;
 '7':begin sl:=56; end;
 '8':begin sl:=57; end;
 '9':begin sl:=53; end;
 else
 end;
end;
procedure wuwu;      {�������ӽ���}
var ch:char;dj,kn,n:longint;
begin
clrscr;
if jh[mrcw,1]<6 then
begin
writeln('      Ѫ������ & �������� & ����ͻ��');
writeln('��ǰѡ���ú���',ckm[mrcw]);
writeln('�����ȼ���',jh[mrcw,1]);
writeln('��ѡ�������');
writeln('����',jh[mrcw,1]+1,'����  10%����ս����������');
writeln('�����Ļƽ�',jh[mrcw,1]*100);
writeln('��1.������   ��2.���ء�');
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
write('�����ɹ�������');
if n=1 then
begin writeln('�������ӣ�����������ս����������5%������');jh[mrcw,2]:=jh[mrcw,2]+1; end
else writeln;
end;
end
else begin clrscr;writeln('�ú��ȼ�δ�ﵽ',dj,'�������������Ҫ�󣡣���'); end;
readln;
end;
'2':sl:=53;
else
end;
end
else begin clrscr; writeln('������������������');readln;sl:=53;end;
end;
procedure wuliu;      {�ҵĹ����ӽ���}
var ch:char;n:longint;
begin
clrscr;
writeln('��ǰѡ��Ӣ�ۣ�',ckm[mrcw]);
writeln('��Ӣ��ϰ�õĹ�����');
case gf[mrcw,1] of
0:writeln('��');
1:begin writeln(gf[mrcw,2],'�ء�����Ϸ  ');
  writeln('��ǰ���ԣ�������',gf[mrcw,2]*10,'%  ��������',gf[mrcw,2]*5,'%');
  end;
2:begin writeln(gf[mrcw,2],'�ء�������ľ�  ');
  writeln('��ǰ���ԣ�������',gf[mrcw,2]*15,'%  ��������',gf[mrcw,2]*10,'%');
  end;
3:begin writeln(gf[mrcw,2],'�ء���ɾ�  ');
  writeln('��ǰ���ԣ�������',gf[mrcw,2]*20,'%  ��������',gf[mrcw,2]*15,'%');
  end;
 else
 end;
 writeln('�س��˳���');
 readln;
 sl:=54;
end;
procedure wuqi;       {���������ӽ���}
var ch:char;x,a,kn,n:longint;
begin
clrscr;
writeln('��ǰѡ��Ӣ�ۣ�',ckm[mrcw]);
writeln('��Ӣ��ϰ�õĹ�����');
case gf[mrcw,1] of
0:writeln('��');
1:begin a:=1;writeln(gf[mrcw,2],'�ء�����Ϸ  ');
  writeln('��ǰ���ԣ�������',gf[mrcw,2]*10,'%  ��������',gf[mrcw,2]*5,'%');
  end;
2:begin a:=2;writeln(gf[mrcw,2],'�ء�������ľ�  ');
  writeln('��ǰ���ԣ�������',gf[mrcw,2]*15,'%  ��������',gf[mrcw,2]*10,'%');
  end;
3:begin a:=3;writeln(gf[mrcw,2],'�ء���ɾ�  ');
  writeln('��ǰ���ԣ�������',gf[mrcw,2]*20,'%  ��������',gf[mrcw,2]*15,'%');
  end;
 else
 end;
 writeln('��ע:');
 writeln('��1�ء�����2�ء�100%�ɹ���                ����:4000�ƽ�');
 writeln('��2�ء�����3�ء�50%�ɹ���,ʧ�ܲ�����      ����:6000�ƽ�');
 writeln('��3�ء�����4�ء�30%�ɹ���,ʧ�ܲ�����      ����:8000�ƽ�');
 writeln('��4�ء�����5�ء�25%�ɹ���,ʧ�ܽ�һ��      ����:10000�ƽ�');
 writeln('��5�ء�����6�ء�5%�ɹ���,ʧ�ܽ�һ��      ����:12000�ƽ�');
 writeln('��6�ء�����7�ء�2%�ɹ���,ʧ�ܽ�һ��      ����:14000�ƽ�');
 writeln('��1.�������ء�   ��2.���ء�');
 ch:=readkey;
 case ch of
 '1':
 begin
 if gf[mrcw,1]>0 then
 begin
 if gf[mrcw,2]>=7 then begin clrscr;writeln('�ù�����Ϊ���أ�');readln; end
 else
 begin
 clrscr;
 writeln;
 writeln('���ض���:',gf2[a]);
 writeln('���سɹ�������',gf[mrcw,2]+1,'��');
 write('�ɹ���:');
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
 writeln('��1.���ء�   ��2.���ء�');
 ch:=readkey;
 if ch='1' then
 begin
 if hj>=(gf[mrcw,2]+1)*2000 then
 begin
 hj:=hj-(gf[mrcw,2]+1)*2000;
 clrscr;
 writeln('ѡ�������飺');
 writeln('��1.���������顿��',xy1,'  ��2.�м������顿��',xy2,'  ��3.�߼������顿��',xy3);
 writeln('��9.��ѡ�������飩');
 ch:=readkey;
 case ch of
 '1':begin if xy1>=1 then begin xy1:=xy1-1;x:=2;end
 else begin clrscr;writeln('��û�и������飡Ĭ�ϲ�ѡ�������鿪ʼ���أ�');readln;end;
 end;
 '2':begin if xy2>=1 then begin xy2:=xy2-1;x:=10;end
 else begin clrscr;writeln('��û�и������飡Ĭ�ϲ�ѡ�������鿪ʼ���أ�');readln;end;
 end;
 '3':begin if xy3>=1 then begin xy3:=xy3-1;x:=20;end
 else begin clrscr;writeln('��û�и������飡Ĭ�ϲ�ѡ�������鿪ʼ���أ�');readln;end;
 end;
 '9':
 else
 end;
 n:=random(100)+1;
 n:=n-x;
 if n<=kn then begin gf[mrcw,2]:=gf[mrcw,2]+1;clrscr;writeln('��ϲ��������ϲ���������سɹ��� ',gf2[a],'��������');readln;end
 else begin clrscr;writeln('�������ϡ�������ʧ�ܡ���');if gf[mrcw,2]>=4 then begin gf[mrcw,2]:=gf[mrcw,2]-1;writeln('�߻���ħ����������');end;readln; end;
 end
 else begin writeln('�ƽ��㣡����');readln; end;
 end;
 end;
 end
 else begin clrscr;writeln('�����������ݣ����ܵ��³�����������');readln; end;
 end;
 '2':sl:=54;
 else
 end;
 end;
 procedure  wuba;     {�߼���ջĸ����}
 var ch:char;
 begin
 clrscr;
 writeln('            ��ӭ�������߼���ջ��     ');
 writeln(' �������');
 writeln('   ��1.����������    10�ƽ�');
 writeln('   ��Ч����һ��������Ʒ�����ӹ�������������׳ɹ�����2%)');
 writeln('   ��2.����������    10�ƽ�');
 writeln('   ��Ч����һ��������Ʒ���μӺ�����bossս��)');
 writeln;
 writeln(' �ƽ���');
 writeln('   ��3.�м�������    60�ƽ�');
 writeln('   ��Ч����һ��������Ʒ�����ӹ�������������׳ɹ�����10%)');
 writeln('   ��4.�м�������    60�ƽ�');
 writeln('   ��Ч����һ��������Ʒ���μӰ�����bossս��)');
 writeln;
 writeln(' ��ʯ���');
 writeln('   ��5.�߼�������    5��ʯ��');
 writeln('   ��Ч����һ��������Ʒ�����ӹ�������������׳ɹ�����50%)');
 writeln('   ��6.�߼�������    1��ʯ��');
 writeln('   ��Ч����һ��������Ʒ���μӻƽ�bossս��)');
 writeln;
 writeln('(9.����)');
 ch:=readkey;
 case ch of
 '1':begin
  if hj>=10 then
 begin
 clrscr;
 xf:=xf+1000;hj:=hj-10;xy1:=xy1+1;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin clrscr;writeln('�ƽ��㣡��������ʧ�ܣ�����');readln; end;
 end;
 '2':begin
  if hj>=10 then
 begin
 clrscr;
 xf:=xf+1000;jb:=jb-1000;xs1:=xs1+1;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin clrscr;writeln('�ƽ��㣡��������ʧ�ܣ�����');readln; end;
 end;
 '3':begin
  if hj>=60 then
 begin
 clrscr;
 xf:=xf+100;hj:=hj-60;xy2:=xy2+1;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin clrscr;writeln('�ƽ��㣡��������ʧ�ܣ�����');readln; end;
 end;
 '4':begin
  if hj>=60 then
 begin
 clrscr;
 xf:=xf+100;jb:=jb-60;xs2:=xs2+1;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin clrscr;writeln('�ƽ��㣡��������ʧ�ܣ�����');readln; end;
 end;
 '5':begin
  if ls>=5 then
 begin
 clrscr;
 xf:=xf+10;ls:=ls-5;xy3:=xy3+1;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin clrscr;writeln('��ʯ���㣡��������ʧ�ܣ�����');readln; end;
 end;
 '6':begin
  if ls>=1 then
 begin
 clrscr;
 xf:=xf+10;ls:=ls-1;xs3:=xs3+1;
 writeln('����ɹ�������');
 readln;
 end
            else
 begin clrscr;writeln('��ʯ���㣡��������ʧ�ܣ�����');readln; end;
 end;
 '9':sl:=4;
 else
 end;
 end;
procedure wujiu;    {Ӣ��̳�ӽ���}
 var ch:char;n:longint;
 begin
 clrscr;
 writeln('              ~��Ӣ��̳��~');
 writeln('��ʷʫ��Ӣ�ۡ�');
 writeln('��1.�ν���   ��2.���á�  ��3.����ʤ��');
 writeln('����˵��Ӣ�ۡ�');
 writeln('��4.���䡿   ��5.���š�  ��6.����ȫ��');
 writeln('��7.ŷ����   ��8.����  ��9.κ������');
 writeln('(0.����)');
 writeln('');
 writeln('�������ֲ鿴���飡');
 ch:=readkey;
 case ch of
 '1':begin
 clrscr;
 writeln('��ʷʫ��Ӣ�ۡ����ν�       ���ۼۡ���888��ʯ');
 writeln('����飺��');
 writeln('�ν����˻�����ʱ�ꡱ��');
 writeln('����Ϊɽ��۩����Ѻ˾����������Ūī����д���飬��һ����С�����˸ǵ��߸�');
 writeln('�ú���ȡ�������·������ٸ����ã��ҵ��ν����ȸ�֪���˸��������ͽ��Ӻ���');
 writeln('�Ÿ��ν����ν�����������ϧ�����ν�˽ͨ��ɽ���û�Ҫв���ν�ŭɱ����ϧ��');
 writeln('�������ݡ���������ɽ�����ν�������ɽ�����졣���а��󣬱��λ��ڷ�Ϊ���');
 writeln('��򡢳��ݰ���ʹ������ܹܣ���󱻸�ٴ�ö��ƺ�����');
 writeln('���������ܣ���');
 writeln('���ƣ�50%����ֱ�ӻ�ɱ�Է����ޡ�������ʶ���͡����ٸ���ս��ģʽ��ÿ������һ�Σ�');
 writeln;
 writeln('��1.����    ��2.���ء�');
 ch:=readkey;
 if ch='1' then begin
 if ls>=888 then begin ls:=888;ck[1]:=1;cwdj[1]:=1;clrscr; writeln('����ɹ�������');readln; end
 else begin clrscr;writeln('��ʯ���㣡����');readln;end;
 end;
 end;
 '2':begin
 clrscr;
 writeln('��ʷʫ��Ӣ�ۡ�������       ���ۼۡ���888��ʯ');
 writeln('����飺��');
 writeln('���ã���ѧ����');
 writeln('�ǡ�ˮ䰴����е������ɽ����������ɽ������۩���ض�Ϫ���ˡ��������ڣ�');
 writeln('ͨ��������ԣ����Ƕ�ı������������Աȣ����š��������������˳�"�Ƕ���"��');
 writeln('�ڲ��������Źݽ��ڡ�����ü��Ŀ�㣬����볤����ʹ����ͭ�������˸����׽�');
 writeln('�������˸ǵ���ȡ�˴�������������̾����ٵ�ʮ��������٣�Ϊ����ٸ�׷��');
 writeln('������ɽ��Ϊɽկ���ƹܻ��ܾ�ʦ����ɽ�������еľ����ж���������һ�ֲ߻�');
 writeln('�����а�������ν��������뻨��һͬ�����ڳ���������ޤ�����ν�Ĺǰ��ʬ');
 writeln('�������ν�Ĺ�ࡣ');
 writeln('���������ܣ���');
 writeln('��ƣ�100%���ʵз�Ѫ�����루�ޡ�������ʶ���͡����ٸ���ս��ģʽ��ÿ������һ�Σ�');
 writeln;
 writeln('��1.����    ��2.���ء�');
 ch:=readkey;
 if ch='1' then begin
 if ls>=888 then begin ls:=ls-888;ck[3]:=1;cwdj[3]:=1;clrscr; writeln('����ɹ�������');readln; end
 else begin clrscr;writeln('��ʯ���㣡����');readln;end;
 end;
 end;
 '3':begin
 clrscr;
 writeln('��ʷʫ��Ӣ�ۡ�������ʤ       ���ۼۡ���888��ʯ');
 writeln('����飺��');
 writeln('����ʤ����ˮ䰴�������ɽ�ú�֮һ�����չ������ʤ�����š�һ����������');
 writeln('����һ˫���ۣ��������룬���˳ߣ���ò���ã��˼������ϣ����������к�ϰ');
 writeln('ǹ����ѧ�����ն�㣬��Ҷ�����Ϊ����ʤ���ɡ�����ʦ�������ˣ�ѧ��һ���');
 writeln('�������ܺ��绽�꣬�������ƣ������϶�����������������������ʤ���ڽ��ܳ�͢');
 writeln('�а��������ɹ����ַ��ﻢ���ﻢ�ľ�ʦ�ǵ��������������ɽ�ú�������ʤ��');
 writeln('�����������������շ�����ɽ�ú�����˳�������ﻢ������ʤ����������󣬼�');
 writeln('�����޵�������Ϊ�����´󹦣�ȴ�����������������ˣ��ؼ���Ǳ���޵���');
 writeln('���������ܣ���');
 writeln('������80%���ʼ�����������2���з���������2���ޡ�������ʶ���͡����ٸ���ս��ģʽ��ÿ������һ�Σ�');
 writeln;
 writeln('��1.����    ��2.���ء�');
 ch:=readkey;
 if ch='1' then begin
 if ls>=888 then begin ls:=888;ck[4]:=1;cwdj[4]:=1;clrscr; writeln('����ɹ�������');readln; end
 else begin clrscr;writeln('��ʯ���㣡����');readln;end;
 end;
 end;
 '4':begin
 clrscr;
 writeln('����˵��Ӣ�ۡ�������       ���ۼۡ���666��ʯ');
 writeln('�������ӳɣ���');
 writeln('Ѫ���ӳ�20%���������ӳ�20%');
 writeln;
 writeln('��1.����    ��2.���ء�');
 ch:=readkey;
 if ch='1' then begin
 if ls>=666 then begin ls:=666;ck[37]:=1;cwdj[37]:=1;clrscr; writeln('����ɹ�������');readln; end
 else begin clrscr;writeln('��ʯ���㣡����');readln;end;
 end;
 end;
 '5':begin
 clrscr;
 writeln('����˵��Ӣ�ۡ�������       ���ۼۡ���666��ʯ');
 writeln('�������ӳɣ���');
 writeln('����������30%');
 writeln;
 writeln('��1.����    ��2.���ء�');
 ch:=readkey;
 if ch='1' then begin
 if ls>=666 then begin ls:=ls-666;ck[38]:=1;cwdj[38]:=1;clrscr; writeln('����ɹ�������');readln; end
 else begin clrscr;writeln('��ʯ���㣡����');readln;end;
 end;
 end;
 '6':begin
 clrscr;
 writeln('����˵��Ӣ�ۡ�������ȫ       ���ۼۡ���666��ʯ');
 writeln('�������ӳɣ���');
 writeln('Ѫ�����50%');
 writeln;
 writeln('��1.����    ��2.���ء�');
 ch:=readkey;
 if ch='1' then begin
 if ls>=666 then begin ls:=ls-666;ck[56]:=1;cwdj[56]:=1;clrscr; writeln('����ɹ�������');readln; end
 else begin clrscr;writeln('��ʯ���㣡����');readln;end;
 end;
 end;
 '7':begin
 clrscr;
 writeln('����˵��Ӣ�ۡ���ŷ��       ���ۼۡ���500��ʯ');
 writeln('�������ӳɣ���');
 writeln('���������50%');
 writeln;
 writeln('��1.����    ��2.���ء�');
 ch:=readkey;
 if ch='1' then begin
 if ls>=500 then begin ls:=ls-500;ck[48]:=1;cwdj[48]:=1;clrscr; writeln('����ɹ�������');readln; end
 else begin clrscr;writeln('��ʯ���㣡����');readln;end;
 end;
 end;
 '8':begin
 clrscr;
 writeln('����˵��Ӣ�ۡ�������       ���ۼۡ���500��ʯ');
 writeln('�������ӳɣ���');
 writeln('����������20%');
 writeln;
 writeln('��1.����    ��2.���ء�');
 ch:=readkey;
 if ch='1' then begin
 if ls>=500 then begin ls:=ls-500;ck[52]:=1;cwdj[52]:=1;clrscr; writeln('����ɹ�������');readln; end
 else begin clrscr;writeln('��ʯ���㣡����');readln;end;
 end;
 end;
 '9':begin
 clrscr;
 writeln('����˵��Ӣ�ۡ���κ����       ���ۼۡ���500��ʯ');
 writeln('�������ӳɣ���');
 writeln('����������20%');
 writeln;
 writeln('��1.����    ��2.���ء�');
 ch:=readkey;
 if ch='1' then begin
 if ls>=500 then begin ls:=ls-500;ck[45]:=1;cwdj[45]:=1;clrscr; writeln('����ɹ�������');readln; end
 else begin clrscr;writeln('��ʯ���㣡����');readln;end;
 end;
 end;
 else sl:=53;
 end;
 end;
begin    {������}
 clrscr;
 delay(500);
 textcolor(brown);
 write('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
 textcolor(white);
 write('��');
 textcolor(brown);
 write('~');
 textcolor(white);
 write('ӭ');
 textcolor(brown);
 write('~');
 textcolor(white);
 write('��');
 textcolor(brown);
 write('~');
 textcolor(white);
 write('��');
 textcolor(brown);
 writeln('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
 writeln;
 write('                        ');
 textcolor(yellow);
 write('ˮ ');delay(200);
 write('� ');delay(200);
 write('ս ');delay(200);
 write('�� ');delay(200);
 write('�� ');delay(200);
 write('�� ');delay(200);
 write('��');
 delay(500);
 textcolor(brown);
 fillchar(ck,sizeof(ck),0);
 gf2[1]:='����Ϸ';
 gf2[2]:='������ľ�';
 gf2[3]:='��ɾ�';
 ckm[1]:='��ʱ�ꡤ�ν�';
 ckm[2]:='�����롤¬����';
 ckm[3]:='�Ƕ��ǡ�����';
 ckm[4]:='������������ʤ';
 ckm[5]:='�󵶡���ʤ';
 ckm[6]:='����ͷ���ֳ�';
 ckm[7]:='����������';
 ckm[8]:='˫�ޡ�������';
 ckm[9]:='С��㡤����';
 ckm[10]:='С���硤���';
ckm[11]:='�������Ӧ';
ckm[12]:='���׹�������';
ckm[13]:='�����С�³����';
ckm[14]:='���ߡ�����';
ckm[15]:='˫ǹ������ƽ';
ckm[16]:='û���������';
ckm[17]:='�����ޡ���־';
ckm[18]:='��ǹ�֡�����';
ckm[19]:='���ȷ桤����';
ckm[20]:='����̫��������';
ckm[21]:='�෢������';
ckm[22]:='�����硤����';
ckm[23]:='��������ʷ��';
ckm[24]:='û�������º�';
ckm[25]:='��Ợ���׺�';
ckm[26]:='�콭�����';
ckm[27]:='����̫�ꡤ��С��';
ckm[28]:='��������� ��';
ckm[29]:='�������ɡ���С��';
ckm[30]:='�����������˳';
ckm[31]:='�����ޡ���С��';
ckm[32]:='������������';
ckm[33]:='ƴ�����ɡ�ʯ��';
ckm[34]:='��ͷ�ߡ�����';
ckm[35]:='˫βЫ���ⱦ';
ckm[36]:='�� �ӡ�����';
////////////////////////////
ckm[37]:='�����ʦ���� ��';
ckm[38]:='����ɽ���� ��';
ckm[39]:='��ξ�١��� ��';
ckm[40]:='������ ��';
ckm[41]:='��ľ����˼��';
ckm[42]:='��ʤ������ ��';
ckm[43]:='��Ŀ������ �^';
ckm[44]:='ʥˮ������͢��';
ckm[45]:='��𽫡�κ����';
ckm[46]:='ʥ���������� ��';
ckm[47]:='�����Ŀ���� ��';
ckm[48]:='Ħ�ƽ�ᡤŷ ��';
ckm[49]:='�����⥡��� ��';
ckm[50]:='��ë������ ˳';
ckm[51]:='�����ӡ��� ��';
ckm[52]:='�����ס��� ��';
ckm[53]:='�����ӡ��� ��';
ckm[54]:='С�º�� ��';
ckm[55]:='���ʹ󡤹� ʢ';
ckm[56]:='�� ҽ������ȫ';
ckm[57]:='���ײ����ʸ���';
ckm[58]:='���Ż����� Ӣ';
ckm[59]:='һ���ࡤ������';
ckm[60]:='ɥ���񡤱� ��';
ckm[61]:='����ħ������ ��';
ckm[62]:='ëͷ�ǡ��� ��';
ckm[63]:='�����ǡ��� ��';
ckm[64]:='�˱���߸���� ��';
ckm[65]:='�����ʥ���� ��';
ckm[66]:='��۽�������';
ckm[67]:='�����ɡ�����';
ckm[68]:='�����ԡ�ͯ ��';
ckm[69]:='�����ס�ͯ ��';
ckm[70]:='��ᦸ͡��� ��';
ckm[71]:='ͨ��Գ���� ��';
ckm[72]:='���������� ��';
ckm[73]:='�׻��ߡ��� ��';
ckm[74]:='�����ɾ���֣����';
ckm[75]:='��β�ꡤ������';
ckm[76]:='�����ӡ��� ��';
ckm[77]:='�����ӡ��� ��';
ckm[78]:='������� ��';
ckm[79]:='�м�����������';
ckm[80]:='С�������� ��';
ckm[81]:='�ٵ����� ��';
ckm[82]:='�����ա��� ��';
ckm[83]:='�����졤�� Ǩ';
ckm[84]:='����桤Ѧ ��';
ckm[85]:='���۱롤ʩ ��';
ckm[86]:='�򻢽����� ��';
ckm[87]:='С�������� ͨ';
ckm[88]:='��Ǯ���ӡ��� ¡';
ckm[89]:='���������� ��';
ckm[90]:='���������� Ԩ';
ckm[91]:='���������� ��';
ckm[92]:='���غ��ɡ��� ��';
ckm[93]:='Ц�滢���� ��';
ckm[94]:='���۲����� ��';
ckm[95]:='һ֦������ ��';
ckm[96]:='�����й١��� ��';
ckm[97]:='���ۻ����� ��';
ckm[98]:='û��Ŀ���� ͦ';
ckm[99]:='ʯ������ʯ ��';
ckm[100]:='Сξ�١��� ��';
ckm[101]:='ĸ��桤�˴�ɩ';
ckm[102]:='��԰�ӡ��� ��';
ckm[103]:='ĸҹ�桤�����';
ckm[104]:='�����š�������';
ckm[105]:='�յ���������';
ckm[106]:='�����󡤰� ʤ';
ckm[107]:='�����顤ʱ Ǩ';
ckm[108]:='��ëȮ���ξ�ס';
 randomize;
 clrscr;
 textcolor(white);
 writeln('ˮ�ս�͵����汾   ��ӭ��������');
 textcolor(yellow);
 writeln('��ǰ�汾Ϊ����V1.5�桿');
 textcolor(white);
 writeln('��N�ν��������롰1��');
 writeln('��1�ν��������롰2��');
 writeln('�˳���Ϸ�����롰9��');
 writeln('1.��¼   2.�ο�   9.�˳�');
 tsl[1]:='���ǲ��������Ǯ���ʱ����Ի��ɹ�Ʊ������ֵ�ġ�                          ';
 tsl[2]:='��ʵ�ں��еĵ䵱������԰������ͻƽ𻥻�Ŷ~                               ';
 tsl[3]:='����̫�٣�(��������) ��~~ȥ�򼸳����ٸ���ƶ�����͵��ˣ�                      ';
 tsl[4]:='�ƽ��ȷ�Ƚ��ѵõ������ǣ��齱���Ժܿ�õ�����ѵõĲƸ���                ';
 tsl[5]:='�ٺ٣�͵͵�������ǣ���ʵ��Ʊ��������ϲ�����ǡ���կ���Źɡ���                ';
 tsl[6]:='�ٷ���ȺQȺ�ţ�316530096   ����Ҳ��������Ⱥ������ѻ��1000���ƽ�     ';
 tsl[7]:='ʲô���ƽ��ѵõ������׳�ʧ�ܣ��кö�bug����QȺ316530096����ӭ�㷴����     ';
 tsl[8]:='�����з��գ�Ͷ�������Ŷ����ʵ��ʱ����һ���ź�����ա�                    ';
 tsl[9]:='ʵ��������ɣ��ȵ���������װ����o(���أ�o#)�����ٸ�ɶ�Ķ������£�     ';
 tsl[10]:='ˮ�ս���ɡ�����ƽ���͡�����쿡�Ϊ���ṩ���ʵ���Ϸ���飡                      ';
 tsl[11]:='����ϸ�ĵ�ͯЬ�������ˣ�Ҫ�ؽ�����򵽵��ٶȻ��������ͨ���齱�鵽Ŷ��    ';
 tsl[12]:='�ѻƽ���������Ȼ��������߼�װ����ʵҲ�Ǹ������ѡ��Ŷ~                   ';
 tsl[13]:='�������Ǹ����ܣ�����ٷ�QȺ316530096�ɲμӻ���л�������׾ٵú�װ��Ŷ��';
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
