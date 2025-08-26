clc; clear; close all;

img = imread('C:\Users\ASUS\Documents\image_noise_filtering\download (1).jpg');  
if size(img,3)==3
    img = rgb2gray(img);    % convert to grayscale if RGB
end

% Add noises
gauss_img = imnoise(img,'gaussian',0,0.01);   
sp_img    = imnoise(img,'salt & pepper',0.02); 

% Apply filters for Gaussian noise
gauss_med    = medfilt2(gauss_img,[3 3]);
gauss_gaussf = imgaussfilt(gauss_img,1);
gauss_wiener = wiener2(gauss_img,[5 5]);

% for Salt & Pepper noise
sp_med    = medfilt2(sp_img,[3 3]);
sp_gaussf = imgaussfilt(sp_img,1);
sp_wiener = wiener2(sp_img,[5 5]);

% results
figure;
subplot(1,3,2); imshow(img); title('Original');

figure;
subplot(1,4,1); imshow(gauss_img); title('Gaussian Noise');
subplot(1,4,2); imshow(gauss_med); title('Median Filter');
subplot(1,4,3); imshow(gauss_gaussf); title('Gaussian Filter');
subplot(1,4,4); imshow(gauss_wiener); title('Wiener Filter');

figure;
subplot(1,3,1); imshow(sp_img); title('Salt & Pepper Noise');
subplot(1,3,2); imshow(sp_med); title('Median Filter');
subplot(1,3,3); imshow(sp_wiener); title('Wiener');

% PSNR
psnr_gauss_med    = psnr(gauss_med,img);
psnr_gauss_gaussf = psnr(gauss_gaussf,img);
psnr_gauss_wiener = psnr(gauss_wiener,img);

psnr_sp_med    = psnr(sp_med,img);
psnr_sp_gaussf = psnr(sp_gaussf,img);
psnr_sp_wiener = psnr(sp_wiener,img);

fprintf('Gaussian Noise -> Median: %.2f dB, Gaussian: %.2f dB, Wiener: %.2f dB\n',...
    psnr_gauss_med,psnr_gauss_gaussf,psnr_gauss_wiener);

fprintf('Salt & Pepper Noise -> Median: %.2f dB, Gaussian: %.2f dB, Wiener: %.2f dB\n',...
    psnr_sp_med,psnr_sp_gaussf,psnr_sp_wiener);