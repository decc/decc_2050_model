# coding: utf-8
require 'erb'

template = DATA.readlines.join

File.open('modelresult.c', 'w') do |f|
  e = ERB.new(template)
  c = e.result
  f.puts c
end

puts "To make asm.js javascript on my system, I need to:"
puts %{~/Documents/emsdk_portable/emscripten/1.7.8/emcc -O3 modelresult.c -o modelresult.html -s EXPORTED_FUNCTIONS="['_getResult']"}

__END__
#include "model.c"
#define CONTROL_SIZE 53

float floatForChar(char c) {
  switch(c) {
    <% "1bcdefghij2lmnopqrst3vwxyzABCD4".each_char.with_index do |c, i| %>case '<%= c %>': return <%= (i.to_f/10)+1 %>; break;
    <% end %>
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
  <% (0...53).each do |i| %>set_control_e<%= i+5 %>( (ExcelValue) { .type = ExcelNumber, .number = code_array[<%= i %>] });
  <% end %>
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

