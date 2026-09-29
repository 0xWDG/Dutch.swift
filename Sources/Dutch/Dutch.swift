//
//  Dutch.swift
//  Dutch
//
//  Created by Wesley de Groot on 2024-10-04.
//  https://wesleydegroot.nl
//
//  https://github.com/0xWDG/Dutch
//  MIT License
//

// swiftlint:disable all

import Foundation

/// Alias for `true`, Ja
public let ja = true

/// Alias for `true`, Waar
public let waar = true

/// Alias for `false`, Nee
public let nee = false

/// Alias for `false`, Onwaar
public let onwaar = false

/// Alias for `Void`, Niets
public typealias Niets = Void

/// Alias for `Bool`, Waarheidswaarde
public typealias Waarheidswaarde = Bool

/// Alias for `func`, Functie (Function)
public typealias Functie = () -> Void

/// Alias for `String`, Tekst
public typealias Tekst = String

/// Alias for `Int`, Getal
public typealias Getal = Int

/// Alias for `UInt`, NatuurlijkGetal
public typealias NatuurlijkGetal = UInt

/// Alias for `UInt8`, Byte
public typealias Byte = UInt8

/// Alias for `Character`, Karakter
public typealias Karakter = Character

/// Alias for `Float`, Zwevend?
public typealias Zwevend = Float

/// Alias for `Double`, Dubbel
public typealias Dubbel = Double

/// Alias for `Decimal`, Decimaal
public typealias Decimaal = Decimal

/// Alias for `Date`, Datum
public typealias Datum = Date

/// Alias for `Data`, Gegevens
public typealias Gegevens = Data

/// Alias for `URL`, Webadres
public typealias Webadres = URL

/// Alias for `Array`, Lijst
public typealias Lijst<Element> = Array<Element>

/// Alias for `Dictionary`, Woordenboek
public typealias Woordenboek<Sleutel, Waarde> = Dictionary<Sleutel, Waarde> where Sleutel: Hashable

/// Alias for `Set`, Verzameling
public typealias Verzameling<Element> = Set<Element> where Element: Hashable

/// Alias for `Optional`, Optioneel
public typealias Optioneel<Inhoud> = Optional<Inhoud>

/// Alias for `Result`, Resultaat
public typealias Resultaat<Succes, Mislukking> = Result<Succes, Mislukking> where Mislukking: Error

/// Alias for `Error`, Fout
public typealias Fout = Error

/// Alias for `Any`, Alles
public typealias Alles = Any

/// Alias for `AnyObject`, Object
public typealias Object = AnyObject

/// Alias for `AnyHashable`, WillekeurigHashbaar
public typealias WillekeurigHashbaar = AnyHashable

/// Alias for `Never`, Onmogelijk
public typealias Onmogelijk = Never

/// Alias for `Range`, Bereik
public typealias Bereik<Grens> = Range<Grens> where Grens: Comparable

/// Alias for `ClosedRange`, GeslotenBereik
public typealias GeslotenBereik<Grens> = ClosedRange<Grens> where Grens: Comparable

/// Alias for `while`, zolang
///
/// - Parameters:
///   - conditie: De conditie waaraan voldaan moet worden
///   - actie: De actie die uitgevoerd moet worden zolang de conditie waar is
public func zolang(conditie: @autoclosure () throws -> Bool, actie: () throws -> Void) rethrows {
  while try conditie() {
      try actie()
  }
}

/// Alias for `if`, Als
///
/// - Parameters:
///   - conditie: De conditie waaraan voldaan moet worden
///   - actie:  De actie die uitgevoerd moet worden als de conditie waar is
public func als(_ conditie: @autoclosure () throws -> Bool, dan actie: () throws -> Void) rethrows {
  if try conditie() {
      try actie()
  }
}

/// Alias for `if`/`else`, Als/Anders
///
/// - Parameters:
///   - conditie: De conditie waaraan voldaan moet worden
///   - actie: De actie die uitgevoerd moet worden als de conditie waar is
///   - andereActie: De actie die uitgevoerd moet worden als de conditie onwaar is
public func als(
  _ conditie: @autoclosure () throws -> Bool,
  dan actie: () throws -> Void,
  anders andereActie: () throws -> Void
) rethrows {
  if try conditie() {
      try actie()
  } else {
      try andereActie()
  }
}

/// Alias for `if`, Indien
///
/// - Parameters:
///   - conditie: De conditie waaraan voldaan moet worden
///   - actie: De actie die uitgevoerd moet worden als de conditie waar is
public func indien(_ conditie: @autoclosure () throws -> Bool, dan actie: () throws -> Void) rethrows {
  try als(conditie(), dan: actie)
}

/// Alias for `if`/`else`, Indien/Anders
///
/// - Parameters:
///   - conditie: De conditie waaraan voldaan moet worden
///   - actie: De actie die uitgevoerd moet worden als de conditie waar is
///   - andereActie: De actie die uitgevoerd moet worden als de conditie onwaar is
public func indien(
  _ conditie: @autoclosure () throws -> Bool,
  dan actie: () throws -> Void,
  anders andereActie: () throws -> Void
) rethrows {
  try als(conditie(), dan: actie, anders: andereActie)
}

/// Alias for `if !condition`, Tenzij
///
/// - Parameters:
///   - conditie: De conditie waaraan niet voldaan moet worden
///   - actie: De actie die uitgevoerd moet worden als de conditie onwaar is
public func tenzij(_ conditie: @autoclosure () throws -> Bool, doe actie: () throws -> Void) rethrows {
  if try !conditie() {
      try actie()
  }
}

/// Alias for `repeat`/`while`, Herhaal
///
/// - Parameters:
///   - actie: De actie die minstens een keer uitgevoerd moet worden
///   - conditie: De conditie waaraan voldaan moet worden om door te gaan
public func herhaal(_ actie: () throws -> Void, zolang conditie: @autoclosure () throws -> Bool) rethrows {
  repeat {
      try actie()
  } while try conditie()
}

/// Alias for `for`/`in`, VoorElk
///
/// - Parameters:
///   - reeks: De reeks om doorheen te lopen
///   - actie: De actie die voor elk element uitgevoerd moet worden
public func voorElk<Reeks: Sequence>(_ reeks: Reeks, doe actie: (Reeks.Element) throws -> Void) rethrows {
  for element in reeks {
      try actie(element)
  }
}

/// Alias for `print`, Afdrukken
///
/// - Parameters:
///   - items: De waarden die afgedrukt moeten worden
///   - scheiding: De tekst tussen de waarden
///   - einde: De tekst aan het einde van de uitvoer
public func afdrukken(_ items: Any..., scheiding: String = " ", einde: String = "\n") {
  Swift.print(items.map { String(describing: $0) }.joined(separator: scheiding), terminator: einde)
}

/// Alias for `print`, Schrijf
///
/// - Parameters:
///   - items: De waarden die afgedrukt moeten worden
///   - scheiding: De tekst tussen de waarden
///   - einde: De tekst aan het einde van de uitvoer
public func schrijf(_ items: Any..., scheiding: String = " ", einde: String = "\n") {
  Swift.print(items.map { String(describing: $0) }.joined(separator: scheiding), terminator: einde)
}

/// Alias for `assert`, Bewering
///
/// - Parameters:
///   - conditie: De conditie die waar moet zijn
///   - bericht: Het bericht dat getoond wordt als de conditie onwaar is
public func bewering(
  _ conditie: @autoclosure () -> Bool,
  _ bericht: @autoclosure () -> String = String(),
  bestand: StaticString = #file,
  regel: UInt = #line
) {
  assert(conditie(), bericht(), file: bestand, line: regel)
}

/// Alias for `precondition`, Voorwaarde
///
/// - Parameters:
///   - conditie: De conditie die waar moet zijn
///   - bericht: Het bericht dat getoond wordt als de conditie onwaar is
public func voorwaarde(
  _ conditie: @autoclosure () -> Bool,
  _ bericht: @autoclosure () -> String = String(),
  bestand: StaticString = #file,
  regel: UInt = #line
) {
  precondition(conditie(), bericht(), file: bestand, line: regel)
}

/// Alias for `fatalError`, FataleFout
///
/// - Parameters:
///   - bericht: Het bericht dat getoond wordt bij de fatale fout
public func fataleFout(
  _ bericht: @autoclosure () -> String = String(),
  bestand: StaticString = #file,
  regel: UInt = #line
) -> Never {
  fatalError(bericht(), file: bestand, line: regel)
}

/// Alias for `min`, Minimum
public func minimum<Waarde: Comparable>(_ eerste: Waarde, _ tweede: Waarde) -> Waarde {
  min(eerste, tweede)
}

/// Alias for `max`, Maximum
public func maximum<Waarde: Comparable>(_ eerste: Waarde, _ tweede: Waarde) -> Waarde {
  max(eerste, tweede)
}

/// Alias for `abs`, Absoluut
public func absoluut<Waarde: SignedNumeric & Comparable>(_ waarde: Waarde) -> Waarde {
  abs(waarde)
}

/// Controleert of een optionele waarde `nil` is.
public func isNiets<Waarde>(_ waarde: Waarde?) -> Bool {
  waarde == nil
}

// public let stop = break
// public let volgende = continue
// public let doe = do
// public stel = let
// public antwoord = return

// swiftlint:enable all
