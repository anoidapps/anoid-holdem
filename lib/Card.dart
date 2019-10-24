import 'CardSuit.dart';
import 'CardRank.dart';

class Card
{
  var _suit;
  var _rank;
  String _name;
  bool _visible = false;

  Card (CardSuit suit, CardRank rank)
  {
    this._suit = suit;
    this._rank = rank;
  }

  getSuit ()
  {
    return this._suit;
  }

  getRank ()
  {
    return this._rank;
  }

  show ()
  {
    this._visible = true;
  }

  hide ()
  {
    this._visible = false;
  }

  getVisible ()
  {
    return this._visible;
  }

  compare (Card card)
  {
    if (this._rank.index == card._rank.index)
      return 0;

    else if (this._rank.index < card._rank.index)
      return -1;

    else
      return 1;
  }

  toString ()
  {
    String nameRank = describeEnum(this._rank);
    String nameSuit = describeEnum(this._suit);


    this._name = nameRank + " of " + nameSuit;
    return this._name;
  }

  // https://api.flutter.dev/flutter/foundation/describeEnum.html
  String describeEnum(Object enumEntry)
  {
    final String description = enumEntry.toString();
    final int indexOfDot = description.indexOf('.');
    assert(indexOfDot != -1 && indexOfDot < description.length - 1);
    return description.substring(indexOfDot + 1);
  }

}