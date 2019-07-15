#define TRIGGER 10
#define BURST 11
#define AUTO 12
#define MOSFET 9
#define AUTOMODE 2
#define BURSTMODE 1
#define SEMIMODE 0
#define DELAY 250

unsigned int count;
byte mode;
byte firing;
unsigned long time;
unsigned long now;

void setup() {
    pinMode(LED_BUILTIN, OUTPUT);
    pinMode(MOSFET, OUTPUT);
    pinMode(BURST, INPUT);
    pinMode(AUTO, INPUT);
}

void loop() {
    now = millis();
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
        time = millis() + DELAY;
        switch (mode) {
        case SEMIMODE:
            if (count == 0) {
                digitalWrite(MOSFET, HIGH);
            } 
            break;
        case BURSTMODE:
            if (count > 2 && now >= time) {
                digitalWrite(MOSFET, HIGH);
                count++;
            }
            break;
        case AUTOMODE:
            if (now >= time) {
                digitalWrite(MOSFET, HIGH);
                count++;
            }
            break;
        default:
            digitalWrite(MOSFET, LOW);
            break;
        }
    } else {
        count = 0;
        time = 0;
        digitalWrite(MOSFET, LOW);
    }
    
}