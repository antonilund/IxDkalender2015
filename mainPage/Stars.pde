void _createStars()
{
  fill(255, 200);
  
  ellipse(100, 50, _starSize, _starSize );
  ellipse(700, 10, _starSize, _starSize );
  ellipse(900, 30, _starSize, _starSize );
  ellipse(1800, 50, _starSize+ 3, _starSize + 3 );
  ellipse(1200, 300, _starSize, _starSize+ 3 );
  ellipse(1100, 100, _starSize, _starSize );

  if(_starSize < 5)
  {
   growth = 0;
  }
  else if(_starSize > 10)
  {
    growth = 1;
  }
   if(growth == 0)
   {
     _starSize += 0.1;
   }
   if(growth == 1)
   {
    _starSize -= 0.1; 
   }
  
}