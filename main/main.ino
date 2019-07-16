#define TRIGGER 10
#define BURST 11
#define AUTO 12
#define MOSFET 9
#define AUTOMODE 2
#define BURSTMODE 1
#define SEMIMODE 0
#define DELAY 125

unsigned int count;
byte mode;
byte firing;

void fire() {
    digitalWrite(MOSFET, HIGH);
    delay(DELAY);
    digitalWrite(MOSFET, LOW);
    delay(DELAY);
}

void setup() {
    pinMode(LED_BUILTIN, OUTPUT);
    pinMode(MOSFET, OUTPUT);
    pinMode(BURST, INPUT);
    pinMode(AUTO, INPUT);
}

void loop() {
    digitalWrite(LED_BUILTIN, HIGH);
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