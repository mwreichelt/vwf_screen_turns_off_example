
typedef struct FontData {
    char name[12];
    char description[220];
    uint8_t fontId;
} FontData_t;
extern const FontData_t fontData[];
void debug_fontsTeardown();

void initializedebug_fontsScene();

void handledebug_fontsUpdate();

void drawdebug_fontsScene();

//extern const vwf_text_segment_t tsCoCaGBv2_alphabet;
//extern const vwf_text_segment_t tsCoCaGBv2_desc;
