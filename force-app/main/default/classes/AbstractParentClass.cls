public abstract class AbstractParentClass {
  public abstract string getValueFromChildClass();
    
    public String getStringValue() {
        return getValueFromChildClass();
    }
}