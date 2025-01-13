import time
import random
lehrer={"a":12,
        "b":9,
        "c":15,
        "d":5,
        "e":10,
        "f":7}
liste=[]
newstring=""
for keys, value in lehrer.items():
   liste.append(keys)
for i in range(len(liste)):
    newstring += liste[i-1]+", "

i=1
lehrereeingabe = input(f"Bitte wähle aus der Liste welchen Lehrer du hast: {newstring}")
print("Der Schultag beginnt...")
time.sleep(2)
while i<100000000000:
    print(i,"Gehirnzellen sind schon gestorben.")
    i+=i
    time.sleep(lehrer[lehrereeingabe])
print("Dein Gehirn ist vollkommen zerstört.")