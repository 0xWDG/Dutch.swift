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

/// Alias for `true`, Ja
public let ja = true

/// Alias for `true`, Waar
public let waar = true

/// Alias for `false`, Nee
public let nee = false

/// Alias for `false`, Onwaar
public let onwaar = false

/// Alias for `func`, Functie (Function)
public typealias Functie = () -> Void

/// Alias for `String`, Tekst
public typealias Tekst = String

/// Alias for `Int`, Getal
public typealias Getal = Int

/// Alias for `Character`, Karakter
public typealias Karakter = Character

/// Alias for `Float`, Zwevend?
public typealias Zwevend = Float

/// Alias for `Double`, Dubbel
public typealias Dubbel = Double

/// Alias for `while`, zolang
///
/// - Parameters:
///   - conditie: De conditie waaraan voldaan moet worden
///   - actie: De actie die uitgevoerd moet worden zolang de conditie waar is
public func zolang(conditie: @autoclosure () -> Bool, actie: () -> ()) {
  while conditie() {
      actie()
  }
}

/// Alias for `else` Als
///
/// - Parameters:
///   - conditie: De conditie waaraan voldaan moet worden
///   - actie:  De actie die uitgevoerd moet worden als de conditie waar is
public func als(_ conditie: @autoclosure () -> Bool, dan actie: () -> ()) {
  if conditie() {
      actie()
  }
}

// public let stop = break
// public let herhaal = repeat
// public let volgende = continue
// public let doe = do
// public stel = let
// public als = if
// public anders = else
// public array = Lijst
// public antwoord = return

// swiftlint:enable all
