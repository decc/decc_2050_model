#include "model.c"
#define CONTROL_SIZE 53

float floatForChar(char c) {
  switch(c) {
    case '1': return 1.0; break;
    case 'b': return 1.1; break;
    case 'c': return 1.2; break;
    case 'd': return 1.3; break;
    case 'e': return 1.4; break;
    case 'f': return 1.5; break;
    case 'g': return 1.6; break;
    case 'h': return 1.7; break;
    case 'i': return 1.8; break;
    case 'j': return 1.9; break;
    case '2': return 2.0; break;
    case 'l': return 2.1; break;
    case 'm': return 2.2; break;
    case 'n': return 2.3; break;
    case 'o': return 2.4; break;
    case 'p': return 2.5; break;
    case 'q': return 2.6; break;
    case 'r': return 2.7; break;
    case 's': return 2.8; break;
    case 't': return 2.9; break;
    case '3': return 3.0; break;
    case 'v': return 3.1; break;
    case 'w': return 3.2; break;
    case 'x': return 3.3; break;
    case 'y': return 3.4; break;
    case 'z': return 3.5; break;
    case 'A': return 3.6; break;
    case 'B': return 3.7; break;
    case 'C': return 3.8; break;
    case 'D': return 3.9; break;
    case '4': return 4.0; break;
    
    default: return -1; break;
  }
  return -1;
}


double * getArrayFromCodeString(char *code_string) {
  double *code_array = malloc(CONTROL_SIZE * sizeof(double));
  int code_length = strlen(code_string);
  int i;
  for(i = 0; i < CONTROL_SIZE; i++) {
    if(i>=code_length) {
      code_array[i] = 0;
    } else {
      code_array[i] = floatForChar(code_string[i]);
    }
  }
  return code_array;
}

void setControlsToCode(double *code_array) {
  set_control_e5( (ExcelValue) { .type = ExcelNumber, .number = code_array[0] });
  set_control_e6( (ExcelValue) { .type = ExcelNumber, .number = code_array[1] });
  set_control_e7( (ExcelValue) { .type = ExcelNumber, .number = code_array[2] });
  set_control_e8( (ExcelValue) { .type = ExcelNumber, .number = code_array[3] });
  set_control_e9( (ExcelValue) { .type = ExcelNumber, .number = code_array[4] });
  set_control_e10( (ExcelValue) { .type = ExcelNumber, .number = code_array[5] });
  set_control_e11( (ExcelValue) { .type = ExcelNumber, .number = code_array[6] });
  set_control_e12( (ExcelValue) { .type = ExcelNumber, .number = code_array[7] });
  set_control_e13( (ExcelValue) { .type = ExcelNumber, .number = code_array[8] });
  set_control_e14( (ExcelValue) { .type = ExcelNumber, .number = code_array[9] });
  set_control_e15( (ExcelValue) { .type = ExcelNumber, .number = code_array[10] });
  set_control_e16( (ExcelValue) { .type = ExcelNumber, .number = code_array[11] });
  set_control_e17( (ExcelValue) { .type = ExcelNumber, .number = code_array[12] });
  set_control_e18( (ExcelValue) { .type = ExcelNumber, .number = code_array[13] });
  set_control_e19( (ExcelValue) { .type = ExcelNumber, .number = code_array[14] });
  set_control_e20( (ExcelValue) { .type = ExcelNumber, .number = code_array[15] });
  set_control_e21( (ExcelValue) { .type = ExcelNumber, .number = code_array[16] });
  set_control_e22( (ExcelValue) { .type = ExcelNumber, .number = code_array[17] });
  set_control_e23( (ExcelValue) { .type = ExcelNumber, .number = code_array[18] });
  set_control_e24( (ExcelValue) { .type = ExcelNumber, .number = code_array[19] });
  set_control_e25( (ExcelValue) { .type = ExcelNumber, .number = code_array[20] });
  set_control_e26( (ExcelValue) { .type = ExcelNumber, .number = code_array[21] });
  set_control_e27( (ExcelValue) { .type = ExcelNumber, .number = code_array[22] });
  set_control_e28( (ExcelValue) { .type = ExcelNumber, .number = code_array[23] });
  set_control_e29( (ExcelValue) { .type = ExcelNumber, .number = code_array[24] });
  set_control_e30( (ExcelValue) { .type = ExcelNumber, .number = code_array[25] });
  set_control_e31( (ExcelValue) { .type = ExcelNumber, .number = code_array[26] });
  set_control_e32( (ExcelValue) { .type = ExcelNumber, .number = code_array[27] });
  set_control_e33( (ExcelValue) { .type = ExcelNumber, .number = code_array[28] });
  set_control_e34( (ExcelValue) { .type = ExcelNumber, .number = code_array[29] });
  set_control_e35( (ExcelValue) { .type = ExcelNumber, .number = code_array[30] });
  set_control_e36( (ExcelValue) { .type = ExcelNumber, .number = code_array[31] });
  set_control_e37( (ExcelValue) { .type = ExcelNumber, .number = code_array[32] });
  set_control_e38( (ExcelValue) { .type = ExcelNumber, .number = code_array[33] });
  set_control_e39( (ExcelValue) { .type = ExcelNumber, .number = code_array[34] });
  set_control_e40( (ExcelValue) { .type = ExcelNumber, .number = code_array[35] });
  set_control_e41( (ExcelValue) { .type = ExcelNumber, .number = code_array[36] });
  set_control_e42( (ExcelValue) { .type = ExcelNumber, .number = code_array[37] });
  set_control_e43( (ExcelValue) { .type = ExcelNumber, .number = code_array[38] });
  set_control_e44( (ExcelValue) { .type = ExcelNumber, .number = code_array[39] });
  set_control_e45( (ExcelValue) { .type = ExcelNumber, .number = code_array[40] });
  set_control_e46( (ExcelValue) { .type = ExcelNumber, .number = code_array[41] });
  set_control_e47( (ExcelValue) { .type = ExcelNumber, .number = code_array[42] });
  set_control_e48( (ExcelValue) { .type = ExcelNumber, .number = code_array[43] });
  set_control_e49( (ExcelValue) { .type = ExcelNumber, .number = code_array[44] });
  set_control_e50( (ExcelValue) { .type = ExcelNumber, .number = code_array[45] });
  set_control_e51( (ExcelValue) { .type = ExcelNumber, .number = code_array[46] });
  set_control_e52( (ExcelValue) { .type = ExcelNumber, .number = code_array[47] });
  set_control_e53( (ExcelValue) { .type = ExcelNumber, .number = code_array[48] });
  set_control_e54( (ExcelValue) { .type = ExcelNumber, .number = code_array[49] });
  set_control_e55( (ExcelValue) { .type = ExcelNumber, .number = code_array[50] });
  set_control_e56( (ExcelValue) { .type = ExcelNumber, .number = code_array[51] });
  set_control_e57( (ExcelValue) { .type = ExcelNumber, .number = code_array[52] });
  
}


char* getResult(char* code) {
  reset();
  double *code_array = getArrayFromCodeString(code);
  setControlsToCode(code_array);
  char *result;
  asprintf(&result, "{\"percent_reduction\": %f}", intermediate_output_bh155().number);
  free(code_array);
  return result;
}

int main() {
  printf(getResult("40444444444444440443424001121110111101102101110110111"));
  printf(getResult("10111111111111110111111004424440444404203304440420111"));
  printf(getResult("10111111111111110111111001111110111101101101110110111"));
  printf(getResult("i0g2dd2pp1121f1i032211p004314110433304202304320420121"));
  return 0;
}

