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

/// Ja
public let ja = true

/// Waar
public let waar = true

/// Nee
public let nee = false

/// Onwaar
public let onwaar = false

/// Functie (Function)
public typealias functie = () -> Void

/// Tekst
public typealias tekst = String

/// Getal
public typealias getal = Int

/// Karakter
public typealias karakter = Character

/// Float?
public typealias myFloat = Float

/// Dubbel
public typealias dubbel = Double

/// zolang
/// - Parameters:
///   - conditie: <#conditie description#>
///   - actie: <#actie description#>
public func zolang(conditie: @autoclosure () -> Bool, actie: () -> ()) {
  while conditie() {
      actie()
  }
}

/// Als
/// - Parameters:
///   - conditie: <#conditie description#>
///   - actie: <#actie description#>
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