#include "pi_2_dht_read.h"

int main(int argc, char* argv[]) {
  int sensor = 1;
  int pin = 10;
  
  float humidity;
  float temperature;

  int result = pi_2_dht_read(sensor, pin, &humidity, &temperature);

  printf("result: %i\n", result);
}
