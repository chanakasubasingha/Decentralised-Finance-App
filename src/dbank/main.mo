import Debug "mo:base/Debug"

actor DBank{
  stable var currentValue: Nat = 300;
  // currentValue := 100;

  let id = 235156121;

  public func topUp(amount: Nat){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdrawl(amount: Nat){
    let tempValue: Int = currentValue - amount;

    if (tempValue >= 0){
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    }else {
      Debug.print("There is an issue!");
    }
  };

  public query func checkBalance(): async Nat {
    return currentValue;
  };
}
