#define READY 0
#define TRIGGER 4
#define BURST 1
#define AUTO 2
#define MOSFET 3
#define AUTOMODE 2
#define BURSTMODE 1
#define SEMIMODE 0
#define DELAY 100

// The prototype has a slightly different MOSFET setup
// Because of of this, the solenoid is active low.

unsigned int count;
byte mode;
byte firing;

void fire() {
    digitalWrite(READY, LOW);
    digitalWrite(MOSFET, LOW);
    delay(DELAY);
    digitalWrite(MOSFET, HIGH);
    delay(DELAY);
    digitalWrite(READY, HIGH);
}

void setup() {
    pinMode(READY, OUTPUT);
    pinMode(MOSFET, OUTPUT);
    pinMode(TRIGGER, INPUT);
    pinMode(BURST, INPUT);
    pinMode(AUTO, INPUT);
    digitalWrite(MOSFET, HIGH);
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
