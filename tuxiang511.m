I=imread('C:\Users\��Ѫ\Desktop\J1.jpg');
I=rgb2gray(I);
noise_salt=imnoise(I,'salt & pepper',0.1);
h1=medfilt2(noise_salt);
v1=fspecial("average");
v2=fspecial("gaussian");
v3=fspecial("prewitt");
v4=fspecial("sobel");
g1=imfilter(noise_salt,v1,'replicate');
g2=imfilter(noise_salt,v2,'replicate');
g3=imfilter(noise_salt,v3,'replicate');
g4=imfilter(noise_salt,v4,'replicate');
subplot(2,3,1);imshow(noise_salt);title("��������ͼƬ");
subplot(2,3,2);imshow(h1);title("��ֵ�˲�������ͼƬ");
subplot(2,3,3);imshow(g1);title("��ֵ�˲�������ͼƬ");
subplot(2,3,4);imshow(g2);title("��˹�˲�������ͼƬ");
subplot(2,3,5);imshow(g3);title("prewitt�˲�������ͼƬ");
subplot(2,3,6);imshow(g4);title("sobel�˲�������ͼƬ");