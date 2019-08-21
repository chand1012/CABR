#define READY 4
#define TRIGGER 3
#define BURST 1
#define AUTO 2
#define MOSFET 0
#define AUTOMODE 2
#define BURSTMODE 1
#define SEMIMODE 0
#define EDELAY 50
#define SDELAY 100
#define ADELAY 175
#define BDELAY 75

unsigned int count;
byte mode;
byte firing;

void fire(int waittime) {
    digitalWrite(READY, LOW);
    digitalWrite(MOSFET, HIGH);
    delay(EDELAY);
    digitalWrite(MOSFET, LOW);
    delay(waittime);
    digitalWrite(READY, HIGH);
}

void setup() {
    pinMode(READY, OUTPUT);
    pinMode(MOSFET, OUTPUT);
    pinMode(TRIGGER, INPUT);
    pinMode(BURST, INPUT);
    pinMode(AUTO, INPUT);
    digitalWrite(READY, HIGH);
}

void loop() {
    if (digitalRead(BURST)) {
        mode = BURSTMODE;
    } else if (digitalRead(AUTO)) {
        mode = AUTOMODE;
    } else {
        mode = SEMIMODE;
    }
    
    firing = digitalRead(TRIGGER);
    if (firing) {
        switch (mode) {
        case SEMIMODE:
            if (count==0) {
                fire(SDELAY);
                count++;
            }
            break;
        case BURSTMODE:
            if (count <= 2) {
                fire(BDELAY);
                count++;
            }
            break;
        case AUTOMODE:
            fire(ADELAY);
            break;
        default:
            digitalWrite(MOSFET, LOW);
            break;
        }
    } else {
        count = 0;
    }
    
}
