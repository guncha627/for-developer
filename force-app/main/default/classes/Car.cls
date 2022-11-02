public class Car {
    //class body. inside of the class.
    //if I change anything in class in vscode 
    //I have to save it and deploy each time
    
    public string carColor ='';
    public string carName = '';



    integer maxSpeedKmPerHour =150;//this is a class variable, private modified
    
    public void switchOn(){
        //method body
        system.debug('starting the car NOW');
    }
    public void drive(){
        System.debug('driving.... ' +carName);
    }

    public void driveAtMaxSpeed(){
        string description = 'Driving ' + carName + ' at max speed of ' + maxSpeedKmPerHour + ' km/hr';
        System.debug(description);
    }
 }
