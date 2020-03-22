public class chmod {
   /**
   * The name of this program.  
   * This is the program name that is used 
   * when displaying error messages.
   */
  public static String PROGRAM_NAME = "chmod";

  
  public static void main(String[] args) throws Exception 
  {
    // initialize the file system simulator kernel
    Kernel.initialize();

    int argsLenght = args.length;

    // print a useful message if not all command line arguments are specified
    if (argsLenght < 2) {
      System.err.println( PROGRAM_NAME + ": too few arguments" );
      Kernel.exit(1);
    }

    short mode = Short.valueOf(args[argsLenght -1]);

    //print a useful message if the mode is entered incorrectly
    if (mode < 0 || mode > 777) {
      Kernel.perror(PROGRAM_NAME);
      System.err.println(PROGRAM_NAME + ": the specified mode value is out of range (000...777)");
      Kernel.exit(2);
    }
    
    //go through the names of all the files in which you want to change the mode
    for (int i = 0; i < argsLenght -1; i++) {

      // stat the name to get information about the file or directory
      Stat stat = new Stat() ;
      if( Kernel.stat( args[i] , stat ) < 0){
        Kernel.perror( PROGRAM_NAME ) ;
        Kernel.exit( 1 ) ;
      }

      //execution change mode program and check the results of its operation
      if (Kernel.chmod(args[i], mode) < 0) {
        Kernel.perror(PROGRAM_NAME);
        System.err.println(PROGRAM_NAME + ": index node cannot be accessed");
        Kernel.exit(3);
      }
    }

    Kernel.exit(0);
  }

  

  
  
 }