#!/usr/bin/python
from time import sleep
import RPi.GPIO as GPIO
   
GPIO.setmode(GPIO.BCM)   
   
GPIO.setup(17, GPIO.OUT)
GPIO.setup(27, GPIO.OUT) 
GPIO.setup(22, GPIO.OUT)
   
hz = 75 
 
red = GPIO.PWM(17, hz)    
green = GPIO.PWM(27, hz)     
blue = GPIO.PWM(22, hz)   
 
try:   
    while True:
      for level in range(256):
        sleep(0.1)
        red.start(level/2.55)   
        green.start((255-level)/2.55) 
        blue.start(level/2.55)
      for level in range(256):
        sleep(0.04)
        red.start((255-level)/2.55)   
        green.start(level/2.55) 
        blue.start((255-level)/2.55)  
      for level in range(256):
        sleep(0.1)
        red.start((255-level)/2.55)   
        green.start(level/2.55) 
        blue.start(level/2.55)
      for level in range(256):
        sleep(0.04)
        red.start(level/2.55)   
        green.start((255-level)/2.55) 
        blue.start((255-level)/2.55)  
      for level in range(256):
        sleep(0.1)
        red.start(level/2.55)   
        green.start(level/2.55) 
        blue.start((255-level)/2.55)
      for level in range(256):
        sleep(0.04)
        red.start((255-level)/2.55)   
        green.start((255-level)/2.55) 
        blue.start(level/2.55)  
  
except KeyboardInterrupt:
        red.stop()   #stop red led
        green.stop() #stop green led
        blue.stop()  #stop blue led
   
        GPIO.cleanup()          # clean up GPIO on CTRL+C exit  
