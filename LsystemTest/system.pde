class Lsystem {
  
  String axiom1;
  String axiom2;
  String rule;
  
  Lsystem(String tempRule) {
    rule = tempRule;  
  }
  
  Lsystem(String tempAxiom1, String tempRule) {
    axiom1 = tempAxiom1;
    rule = tempRule;  
  }
    
  Lsystem(String tempAxiom1, String tempAxiom2, String tempRule) {
    axiom1 = tempAxiom1;
    axiom2 = tempAxiom2;
    rule = tempRule;  
  }
  
  void generate() {
    
  }
  
}
