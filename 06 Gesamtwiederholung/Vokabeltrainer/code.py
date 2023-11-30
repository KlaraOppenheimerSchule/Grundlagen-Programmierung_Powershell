import csv,pathlib,random
from time import sleep

Verzeichniss = str(pathlib.Path(__file__).parent.absolute())
'''
Dieses Programm ließt alle Vokabeln aus der csv aus und fragt den Nutzer diese ab.

erstellt von Niclas_M
'''

def eingabe_prüfen(typ):
    """tätigen und überprüfen der Nutzereingabe"""
    prüfen = True
    while prüfen:
        try:
            eingabe = typ(input(">> "))         # Nutzereingabe abwarten
            prüfen = False
            return eingabe
        except KeyboardInterrupt:               # Prüfung auf KeyboardInterrupt (Nutzerabbruch)
            print("Eingabe wird abgebrochen")
            return typ()
        except:
            print("Fehlerhafte Eingabe")

def csv_lesen():
    csv_Inhalt = []
    # Datei öffnen & lesen
    with open(Verzeichniss + '/vokabeln.csv') as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        # Werte aus der Datei in eine Liste übertragen
        for row in csv_reader:
            csv_Inhalt.append(row)
        
        # Umlaute ersetzen
        x = 0
        for i in csv_Inhalt:
            y = 0
            for i_ in i:
                csv_Inhalt[x][y] = i_
                y += 1
            x += 1
    return csv_Inhalt

def ausgabe(werte):
    # Längste Zeichenlänge pro Spalte bestimmen
    col_width = [max(len(str(item)) for item in col) for col in zip(*werte)]
    # Tabelle ausgeben
    for row in werte:
        print("| " + " | ".join("{:{}}".format(str(item), col_width[i]) for i, item in enumerate(row)) + " |")
    print()

def lernen(werte):
    count = 0
    for i in werte[1:]:
        count += 1
    print("Wie viele Vokabeln willst du lernen?")
    menge = eingabe_prüfen(int)
    zahlen = random.sample(range(count), menge)
    for z in zahlen:
        vokabel = werte[1:][z]
        print("Wie lautet "+vokabel[0]+" auf englisch?")
        print("DEBUG:",vokabel)
        eingabe = eingabe_prüfen(str)
        if eingabe == vokabel[1]:
            print("Perfekt")
        else:
            print("Nope!\nRichtig wäre "+vokabel[1]+" gewesen.")
        print("\n\n")

def csv_schreiben(input):
    # Datei öffnen & schreiben
    with open(Verzeichniss + '/Ausgabe.csv', mode='w', newline='') as csv_file:
        writer = csv.writer(csv_file)
        for i in input:
            writer.writerow(i)
    csv_file.close()

def main():
    global programm
    print("Bitte Option wählen:")
    print("1: Vokabeln lernen")
    print("2: Vokabeln drucken")
    print("3: beenden")
    eingabe = eingabe_prüfen(int)
    print()
    if eingabe == 1:
        lernen(csv_lesen())
    elif eingabe == 2:
        ausgabe(csv_lesen())
    elif eingabe == 3:
        programm = False
    else:
        pass


# Hauptschleife
programm = True
while programm:
    main()
    sleep(1)
    print()
print("Programm wird beendet")