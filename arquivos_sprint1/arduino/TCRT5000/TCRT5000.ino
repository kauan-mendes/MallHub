int informacao = 7;

void setup() 
{
  Serial.begin(9600);
  pinMode(informacao, INPUT);
}
 
void loop() 
{
  if(digitalRead(informacao) == LOW){
    Serial.println(1);
  }
  else {
    Serial.println(0);
  }
 delay(2000);
}
