// Defines a segment of text to display and a pointer to the next one.
typedef struct vwf_text_segment_t {
    const struct vwf_text_segment_t * next;
    const char * text;
} vwf_text_segment_t;

extern const vwf_text_segment_t tsCoCaGBv2_desc;
extern const vwf_text_segment_t tsCoCaGBv2_alphabet;