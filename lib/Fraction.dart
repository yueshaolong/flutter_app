class Fraction{
  num molecule;//分子
  num denominator;//分母

  Fraction(this.molecule, this.denominator);

  Fraction add(Fraction f){
    return this + f;
  }

  Fraction multiplication(Fraction f){
    return this * f;
  }

  Fraction operator +(Fraction f){
    return Fraction(this.molecule*f.denominator+f.molecule*this.denominator, this.denominator*f.denominator);
  }

  Fraction operator *(Fraction f){
    return Fraction(this.molecule * f.molecule, this.denominator * f.denominator);
  }


  @override
  String toString() {
    if (this.molecule == this.denominator){
      return "1";
    }else {
        try {
          num yueshu = getGongYueShu(this.molecule, this.denominator);
          this.molecule = this.molecule / yueshu;
          this.denominator = this.denominator / yueshu;
          return this.molecule.toInt().toString()+"/"+this.denominator.toInt().toString();
        } catch (e) {
          print(e);
          return "null";
        }
    }
  }

  num getGongYueShu(num a, num b) {//求两个数的最大公约数
    try {
      num t = 0;
      if(a < b){
        t = a;
        a = b;
        b = t;
      }
      num c = a % b;
      if(c == 0){
        return b;
      }else{
        return getGongYueShu(b, c);
      }
    } catch (e) {
      print(e);
      return 1;
    }
  }
}

void main (){
  Fraction fraction = Fraction(1, 3);
  print(fraction);
  Fraction f0 = fraction.add(new Fraction(1, 2));
  print(f0);
  Fraction f1 = fraction.multiplication(new Fraction(5, 6));
  print(f1);
}