close all;

t=processdata.t;

xb=processdata.xb;
yb=processdata.yb;
zb=processdata.zb;
xt=processdata.xt;
yt=processdata.yt;
zt=processdata.zt;
[m,n]=size(t);
last_value=0;
xb_=[];
yb_=[];
xt_=[];
yt_=[];
zt_=[];
xb2_=[];
yb2_=[];
zt2_=[];
value=1;
% hold on
for i=1:m
%     if abs(t(i))==5
%    
%         plot(y);
%         x=[];
%         y=[];
%     end
    if t(i)==-value
   
%         plot(y);
        xb_=[xb_ xb(i)];
        yb_=[yb_ yb(i)];
        xt_=[xt_ xt(i)];
        yt_=[yt_ yt(i)];
%         y=[];
        zt_=[zt_ zt(i)];
    end
    if t(i)==value
        xb2_=[xb2_ xb(i)];
        yb2_=[yb2_ yb(i)];
        zt2_=[zt2_ zt(i)];
    end
        
%     x=[x t(i)];
%     y=[y zt(i)];
%     last_value=t(i);
end

figure(1);
hold on
plot(xb_);
plot(yb_);
plot(zt_);
legend('xb','yb','zt')
hold off


figure(2);
hold on
plot(xb2_);
plot(yb2_);
plot(zt2_);
legend('xt','yt','zt')
hold off