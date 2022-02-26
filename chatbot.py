import telebot;
import matplotlib.pyplot as plt;
import seaborn as sns;
import pandas as pd;
import numpy as np;

API_KEY = '5106214584:AAE7XYVPvggV8-f-bHLm7MlZNTO0wQYd9Og'
#API_KEY = os.getenv(KEY)
#print(KEY)
#print(API_KEY)
bot = telebot.TeleBot(API_KEY);
#Starrting bot displays all commands
@bot.message_handler(commands = ['start'])
def start(message):
  response = "/Greet: Introduction to MindBuddy \n "+"Age (your age): Reccommends fun activities for your age group \n"+"/app: Link to mental health app\n"+"/alexa: Chat bot on your very own alexa\n"+"help: Links to resources for you to get the help you deserve\n"+'/data: Shows the data and graphs about mental health statistics, for your own curiosity and betterment\n'+'/feedback: Allows you to give feedback about MindBuddy\n'+'BMIcalc (your weight in kg) (your height in meters): A healthy mind is key to a healthy body. Calculate your BMI here'
  bot.send_message(message.chat.id, response);

#Greeting and Info
@bot.message_handler(commands=['Greet'])
def greet(message):
  bot.send_message(message.chat.id, "Hello, I am MindBuddy. I can help you with anything")
 

#Hello functions
@bot.message_handler(commands=['Hi'])
def hi(message):
  #print(message);
  bot.send_message(message.chat.id, "Hello, friend!")

@bot.message_handler(commands=['Hello'])
def hello(message):
  bot.send_message(message.chat.id, "How are you doing?")

@bot.message_handler(commands=['Hey'])
def hey(message):
  bot.send_message(message.chat.id, "What's up?")


#Ask for age and suggest ideas
def age_request(message):
  request = message.text.split()
  if len(request)<2 or request[0].lower() not in 'age':
    return False;
  else:
    return True;

@bot.message_handler(func=age_request)
def send_Activities(message):
  request = message.text.split()[1]  
  request = int(request);
  if(request < 0 or request > 130):
    bot.send_message(message.chat.id,"Enter a realistic age")
    return
  
  print(request);

  if(18 >= request > 0):
    activity = "For your age range, you can try to pick up a new sport. Don't worry if you are bad at them, just go to them to have fun. Try to make friends at school(to make it a little more bearable :) ) and around your neighbourhood with common interests so that you can chat and have fun outside of school or work. You should also try to challenge yourself by learning a new skill which you might even use in the future! You can find more info on MindBuddyApp"
  elif(35 >= request > 18):
    activity = "young"
  elif(50 >= request > 35):
    activity = ''
  elif(60 >= request > 50):
    activity = 'yay'
  elif(70 >= request > 60):
    activity = "very old"
  elif(80 >= request > 70):
    activity = ""
  else:
    activity = 'hello'

  bot.send_message(message.chat.id, activity)

#Help Message
def help_request(message):
  request = message.text.lower().split()
  if request[0] not in 'help':
    return False;
  else:
    return True;
@bot.message_handler(func = help_request)
def sending(message):
  response = "Samaritans of Singapore(SOS) | 1767 OR 1800 221 4444 | 24 Hours \n\n"+"Institute of Mental Health (IMH) | 6389 2222 | 24 Hours \n\n"+"Community Health Assessment Team (CHAT) | 6493-6500 OR 6501 | 12pm to 9pm (Tue to Sat) \n\n"+"Singapore Association for Mental Health (SAMH) | 1800 283 7019 | 9am to 6pm weekdays\n\n"+"TOUCHline  | 1800 377 2252 | 9am to 6pm weekdays\n\n"+"Silver Ribbon | 6386 1928 or 6509 0271| 9am to 5pm weekdays except public holidays \n\n" +"Care Corner Counselling Centre (Mandarin) | 1800 3535 800 | 10am to 10pm except public holidays"
  bot.send_message(message.chat.id, response)

  
#/app and /alexa
@bot.message_handler(commands=['app'])
def app(message):
  #print(message);
  bot.send_message(message.chat.id, "<Insert Link to App>")

@bot.message_handler(commands=['alexa'])
def hi(message):
  #print(message);
  bot.send_message(message.chat.id, "<Insert Link to Alexa>")


#Data and Feedback
@bot.message_handler(commands=['data'])
def hi(message):
  #print(message);
  bot.send_message(message.chat.id, "<Insert Link to Data Aanalysis>")

@bot.message_handler(commands=['feedback'])
def hi(message):
  #print(message);
  bot.send_message(message.chat.id, "Please give us any feedback about our bot, positive, negative, places for improvement and more at MindBuddyBot@gmail.com so that we may serve you better in the future")


#BMI and Diet
def bmi_calculation(message):
  request = message.text.split()
  if len(request)<3 or request[0].lower() not in 'bmicalc':
    return False;
  else:
    return True;

@bot.message_handler(func=bmi_calculation)
def endCalculation(message):
  weight = message.text.split()[1]  
  weight = float(weight);
  height = message.text.split()[2]
  height = float(height)
  if(weight < 0 or weight > 600):
    bot.send_message(message.chat.id,"Enter a realistic weight")
    return
  if(height < 0 or height > 2.5):
    bot.send_message(message.chat.id,"Enter a realistic height")
    return
  
  print(weight);
  print(height);

  finalBMI = weight/(height*height)
  finalBMIStr = str(finalBMI)

  if(18.5 > finalBMI):
    tips = "You are underweight. Here are some tips on how to get to a more healthy weight. I'm sure you can do it!\n\n"+"Eat more freuqently. Try to eat more filling foods then you usually do and eat more. This will start allowing your body to put on weight and get nutrients which can then be used to... build muscle. Yes, working out will allow you to gain weight as you can build muscle mass. Find more tips on MindBuddyApp"
  elif(25 > finalBMI >= 18.5):
    tips='Good Job! Keep it up!'
  elif(30 > finalBMI >= 25):
    tips="You are overweight. Here are some tips on how to get back to a more healthy weight. I'm sure you can do it!\n\n"+"You must try to move more. Pick up a sport and get active. Watch out for hidden sugars in foods such as syrups, ketchup, nutella, many drinks, bread and more. Find a good support group of friends, family or both to help get you through this and to motivate you. Maybe even get a partner to undergo this journey with you. Find more tips on MindBuddyApp."
  else:
    tips = "You are obese. Here are some tips on how you can get back to a healthy BMI. I'm sure you can do it!\n\n"+"You must try to move more. Pick up a sport and get active. Watch out for hidden sugars in foods such as syrups, ketchup, nutella, many drinks, bread and more. Find a good support group of friends, family or both to help get you through this and to motivate you. Maybe even get a partner to undergo this journey with you. Find more tips on MindBuddyApp"

  finalMessage = 'Your BMI is: ' + finalBMIStr +'\n\n' + tips
  bot.send_message(message.chat.id, finalMessage)


bot.polling()