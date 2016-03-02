%low-pass fir
x = randn(1,48000);
fs = 48000; fc = 2000/fs;
b = fir1(300, 2*fc);
y = filtfilt(b,1,x);
soundsc(y,fs);
plot(abs(fft(y)))

%band-pass fir
fc = [1500 4500]/fs;
b = fir1(500, 2*fc);
y = filtfilt(b,1,x);
soundsc(y,fs);
plot(abs(fft(y)))

%high-pass fir
fc = 4500/fs;
b = fir1(500, 2*fc, 'high');
y = filtfilt(b,1,x);
soundsc(y,fs);
plot(abs(fft(y)))
