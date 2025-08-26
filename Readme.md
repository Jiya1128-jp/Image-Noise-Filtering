# Image Noise Filtering using MATLAB

## Project Overview
This is a mini MATLAB project demonstrating **image noise addition and filtering techniques**.  
The project adds different types of noise to an image and applies filters to reduce noise. The performance of filters is evaluated using **PSNR (Peak Signal-to-Noise Ratio)**.

---

## Features
- Load any image (JPG/PNG) and convert it to grayscale if needed.
- Add different types of noise:
  - Gaussian Noise
  - Salt & Pepper Noise
- Apply various filters:
  - Median Filter
  - Gaussian Filter
  - Wiener Filter
- Compare the results visually using subplots.
- Quantitative evaluation using PSNR to measure filter effectiveness.

---

## How It Works
1. **Load Image** – The image is read into MATLAB and converted to grayscale.  
2. **Add Noise** – Gaussian noise and Salt & Pepper noise are added to simulate real-world image corruption.  
3. **Apply Filters** – Median, Gaussian, and Wiener filters are applied to denoise the images.  
4. **Display Results** – Original, noisy, and filtered images are shown side by side for comparison.  
5. **Evaluate Performance** – PSNR values are computed to quantitatively compare filter performance.

---

## MATLAB Script
- `image_noise_filtering.m` → Main script containing all the steps.  
- Ensure your test image (e.g., `sample.png`) is in the **same folder** as the script.

---

## Example Usage
1. Place your image in the project folder.  
2. Open MATLAB and navigate to the project folder.  
3. Run the script:

```matlab
image_noise_filtering
