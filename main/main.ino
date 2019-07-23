#define READY 4
#define TRIGGER 3
#define BURST 1
#define AUTO 2
#define MOSFET 0
#define AUTOMODE 2
#define BURSTMODE 1
#define SEMIMODE 0
#define DELAY 100

unsigned int count;
byte mode;
byte firing;

void fire() {
    digitalWrite(READY, LOW);
    digitalWrite(MOSFET, HIGH);
    delay(DELAY);
    digitalWrite(MOSFET, LOW);
    delay(DELAY);
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
                fire();
                count++;
            }
            break;
        case BURSTMODE:
            if (count <= 2) {
                fire();
                count++;
            }
            break;
        case AUTOMODE:
            fire();
            break;
        default:
            digitalWrite(MOSFET, LOW);
            break;
        }
    } else {
        count = 0;
    }
    
}
