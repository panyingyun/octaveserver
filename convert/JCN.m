function [JCN] = JCN(Type,EffectiveT)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% 本程序用于生成结构静态分析的节点文件
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%注意：输入参数,都作为外部输入参数处理%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%输入参数值

%输出文件夹Type
%1=静力分析
%3=确定性疲劳分析
%4=防腐面积计算
if Type==1
    directory=fullfile('JCNINP.DAT');
elseif Type==3
    directory=fullfile('JCNINP.DAT')
elseif Type==4
    directory=fullfile('JCNINP.DAT');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%核心计算内容%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%
fid=fopen(directory,'w+');
E='';
fprintf(fid,'JCNOPT IS  MN                     C  NID             FLFL    SMPT    S     %4.2f\n',EffectiveT);
fprintf(fid,'RELIEF%s\n',E);
fprintf(fid,'END%s',E);
fclose(fid);
JCN='Done';