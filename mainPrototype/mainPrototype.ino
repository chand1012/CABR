#define READY 0
#define TRIGGER 4
#define BURST 1
#define AUTO 2
#define MOSFET 3
#define AUTOMODE 2
#define BURSTMODE 1
#define SEMIMODE 0
#define EDELAY 50
#define SDELAY 100
#define ADELAY 175
#define BDELAY 75

// The prototype has a slightly different MOSFET setup
// Because of of this, the solenoid is active low.

unsigned int count;
byte mode;
byte firing;

void fire(int waittime) {
    digitalWrite(READY, HIGH);
    digitalWrite(MOSFET, LOW);
    delay(EDELAY);
    digitalWrite(MOSFET, HIGH);
    delay(waittime);
    digitalWrite(READY, LOW);
}

void setup() {
    pinMode(READY, OUTPUT);
    pinMode(MOSFET, OUTPUT);
    pinMode(TRIGGER, INPUT);
    pinMode(BURST, INPUT);
    pinMode(AUTO, INPUT);
    digitalWrite(MOSFET, HIGH);
    digitalWrite(READY, LOW);
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
