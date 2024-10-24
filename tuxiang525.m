clc;clear;
I=imread('C:\Users\��Ѫ\Desktop\Z.jpg');
I=rgb2gray(I);
I=im2double(I);
J=imnoise(I,'salt & pepper',0.25);%��Ӻ����ź�
[M,N]=size(J);
for i=1:M
    for j=1:N
        if(J(i,j)==1)
            J(i,j)=0;
        else
            J(i,j)=J(i,j);
        end
    end
end
subplot(231);imshow(J);title('ԭͼ+�����ź�');
H=imnoise(I,'salt & pepper',0.25);%salt noise
[M,N]=size(H);
for i=1:M
    for j=1:N
        if(H(i,j)==1)
            H(i,j)=0;
        else
            H(i,j)=H(i,j);
        end
    end
end
subplot(234);imshow(H);title('ԭͼ+���ź�');
f3=ordfilt2(J,9,ones(3,3));%ʹ�����ֵ
subplot(232);imshow(f3);title('���ֵ�˲�->��������');
f4=ordfilt2(H,1,ones(3,3));%ʹ����Сֵ
subplot(235);imshow(f4);title('��Сֵ�˲�->������');
Q=1.5;
I3=imfilter(J.^(Q+1),fspecial('average',3))./imfilter(J.^Q,fspecial('average',3));
subplot(233);imshow(I3,[]);title('Q=1.5����г���˲�')
Q=-1.5;
I3=imfilter((J.^(Q+1))./(J.^Q),fspecial('average',3));
subplot(236);imshow(I3,[]);title('Q=-1.5����г���˲�')