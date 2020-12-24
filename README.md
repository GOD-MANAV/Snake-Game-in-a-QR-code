# Snake-Game-in-a-QR-code
# Information


The above QR code contains a complete Windows executable that will run on Windows 7 and up. It's a simple but fully playable implementation of Snake.

A QR code is a data storage medium like any other, and while it's almost always used to store ASCII text, it can also be used to store binary data. As such, virtually any computer data can theoretically be stored in a QR code provided it can fit within the size limitations.

A QR code comes in various standard sizes, the largest being version 40 which can store up to 2,953 bytes (roughly 2.9 KB) of binary data. The above code is not quite that large, it's only storing around 1.4 KB of data (shrunk down from 3.2 KB with  [Crinkler](http://www.crinkler.net/), slightly larger than the executable shown in the video because I decided to add a little more functionality).

# How to Use

**Method 1: Webcam (automatic)**

You can treat this QR code much like a QR code in the real world by using your computer's webcam to read it (e.g. after loading this page on a phone or printing the QR code out). For this, I recommend using zbarcam. I've included a download link with everything you need:

1.  [Download zbarcam](https://itsmattkc.com/etc/snakeqr/zbarcam.zip)
2.  Open "Read Snake From QR.bat". After a moment, your webcam will activate.
3.  Using either your phone screen or a print-out, hold the QR code up to the camera.
4.  Once it recognizes the code, it will close and Snake will appear, freshly read from the QR code.

**Method 2: Webcam (manual)**

This method is the same as the above, however if you'd rather input the commands manually than running my script, go for it:

1.  [Download zbarcam](https://itsmattkc.com/etc/snakeqr/zbarcam.zip)
2.  Open Command Prompt
3.  cd  to the zbarcam folder.
4.  Run the following command:
    
    zbarcam --raw --oneshot -Sbinary > snake.exe
    
    The arguments used are as follows:
    
    -   --raw  - Disables any character encoding conversion.
    -   --oneshot  - Stops reading and closes zbarcam after the code has been successfully read.
    -   -Sbinary  - Informs zbarcam that the data in the code is binary data.
5.  Using either your phone screen or a print-out, hold the QR code up to the camera.
6.  Once it recognizes the code, it will close and an executable called "snake.exe" will appear in the same folder.
7.  Open "snake.exe".

# Notes

-   The version of zbarcam provided above has been patched to correctly output binary data on Windows. This project exposed a bug in zbarcam where binary data was incorrectly treated as text, inadvertently corrupting it as Windows attempted to convert LF line endings to CRLF. The fix used here has since been merged into zbar's master source code, but as of July 2020 no stable release version has included the fix yet.
-   The version of zbarcam provided above has been compiled with DirectShow support for greater compatibility with webcam devices. In my video, I use a build that has not been compiled for DirectShow (using VfW instead) which leads to a black and white webcam feed. This build provides a feed in color.

# HTML Version

As a proof-of-concept, I wrote an implementation of Snake in JavaScript that, when minified, could also fit into the maximum QR code size which I briefly showcased in the video. Some people were interested in playing this, so  [it is available here](https://itsmattkc.com/etc/snakeqr/snake-minified.html).

# Links

•  [QR code on Wikipedia](https://en.wikipedia.org/wiki/QR_code)  
•  [ZBar on GitHub](https://github.com/mchehab/zbar)

