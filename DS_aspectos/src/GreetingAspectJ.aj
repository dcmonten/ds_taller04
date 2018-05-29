public aspect GreetingAspectJ {	
  //defino las variables de tiempo estimado (fuera de los advices)
  	long startTime, estimatedTime;
    //Se crea un nuevo pointcut para la funcion greeting()
    pointcut callGreeting(): call (* HelloAspectJDemo.greeting());
    //se agregan los advices
    //advice previo a la ejecuci�n de greeting()
    before(): callGreeting() {
    	
    	startTime = System.currentTimeMillis();
    	
    }
    //advice despues de la ejecuci�n de greeting()
    after(): callGreeting() {
    	
    	estimatedTime = System.currentTimeMillis() - startTime;
    	
    	System.out.println("\n"+"Tiempo estimado de ejecuci�n: " +estimatedTime);
    	    	
    }
    //no se hacen cambios a los joinpoints
}