clc;
clear all;
close all;
filename= 'test_�ٶȾ޴�_18_0.4����ϵ��_0.01_visious.gif';    %���gif�ļ������� 
warning off; 
% % 
for i=1:5:1398 % 
    % Img=imread([num2str(i),'.bmp']);
    Img     = imread([ '1_' , num2str(i),'.bmp']); %% 
    delete( [ '1_' , num2str(i),'.bmp'] ) ;
    Img     = Img( 17:end , 1:end-17, :  ) ;
    [I,map] = rgb2ind(Img,256); %����gif�ļ���ͼ�������index����ͼ��
    k=i-0; % 
    if k==1;
        imwrite(I,map,filename,'gif','Loopcount',inf,...
            'DelayTime',0.1); % loopcountֻ����i==1��ʱ�������
    else
        imwrite(I,map,filename,'gif','WriteMode','append',...
            'DelayTime',0.1); % layTime��������gif�ļ��Ĳ��ſ���
    end % 
end % 
close all ; 
clear all ; clc ; 
% % 
for i=1:1:1398 %  
    delete( [ '1_' , num2str(i),'.bmp'] ) ; % 
end