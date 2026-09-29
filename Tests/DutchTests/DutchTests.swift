//
//  DutchTests.swift
//  Dutch
//
//  Created by Wesley de Groot on 2024-10-04.
//  https://wesleydegroot.nl
//
//  https://github.com/0xWDG/Dutch
//  MIT License
//

@testable import Dutch
import XCTest

final class DutchTests: XCTestCase {
    func testBooleanAliases() {
        XCTAssertTrue(ja)
        XCTAssertTrue(waar)
        XCTAssertFalse(nee)
        XCTAssertFalse(onwaar)
    }

    func testTypeAliases() throws {
        let tekst: Tekst = "Hallo"
        let getal: Getal = 42
        let natuurlijkGetal: NatuurlijkGetal = 42
        let byte: Byte = 255
        let karakter: Karakter = "D"
        let zwevend: Zwevend = 1.5
        let dubbel: Dubbel = 2.5
        let decimaal: Decimaal = 2.5
        let datum: Datum = .distantPast
        let gegevens = Gegevens([0x44, 0x75, 0x74, 0x63, 0x68])
        let webadres = try XCTUnwrap(Webadres(string: "https://example.com"))
        let lijst: Lijst<Getal> = [1, 2, 3]
        let woordenboek: Woordenboek<Tekst, Getal> = ["een": 1]
        let verzameling: Verzameling<Getal> = [1, 2, 3]
        let optioneel: Optioneel<Tekst> = nil
        let bereik: Bereik<Getal> = 0..<3
        let geslotenBereik: GeslotenBereik<Getal> = 0...3

        XCTAssertEqual(tekst, "Hallo")
        XCTAssertEqual(getal, 42)
        XCTAssertEqual(natuurlijkGetal, 42)
        XCTAssertEqual(byte, 255)
        XCTAssertEqual(karakter, "D")
        XCTAssertEqual(zwevend, 1.5)
        XCTAssertEqual(dubbel, 2.5)
        XCTAssertEqual(decimaal, 2.5)
        XCTAssertEqual(datum, .distantPast)
        XCTAssertEqual(gegevens.count, 5)
        XCTAssertEqual(webadres.host, "example.com")
        XCTAssertEqual(lijst, [1, 2, 3])
        XCTAssertEqual(woordenboek["een"], 1)
        XCTAssertEqual(verzameling.count, 3)
        XCTAssertNil(optioneel)
        XCTAssertEqual(Array(bereik), [0, 1, 2])
        XCTAssertEqual(Array(geslotenBereik), [0, 1, 2, 3])
    }

    func testAlsAndAnders() {
        var resultaat = "niet gezet"

        als(waar, dan: {
            resultaat = "waar"
        })

        XCTAssertEqual(resultaat, "waar")

        als(nee, dan: {
            resultaat = "onverwacht"
        }, anders: {
            resultaat = "anders"
        })

        XCTAssertEqual(resultaat, "anders")
    }

    func testTenzij() {
        var uitgevoerd = false

        tenzij(nee, doe: {
            uitgevoerd = true
        })

        XCTAssertTrue(uitgevoerd)
    }

    func testIndien() {
        var resultaat = "niet gezet"

        indien(nee, dan: {
            resultaat = "onverwacht"
        }, anders: {
            resultaat = "anders"
        })

        XCTAssertEqual(resultaat, "anders")
    }

    func testZolangAndHerhaal() {
        var teller = 0

        zolang(conditie: teller < 3) {
            teller += 1
        }

        XCTAssertEqual(teller, 3)

        herhaal({
            teller += 1
        }, zolang: teller < 5)

        XCTAssertEqual(teller, 5)
    }

    func testVoorElk() {
        var som = 0

        voorElk([1, 2, 3]) { getal in
            som += getal
        }

        XCTAssertEqual(som, 6)
    }

    func testUtilityFunctions() {
        XCTAssertEqual(minimum(4, 2), 2)
        XCTAssertEqual(maximum(4, 2), 4)
        XCTAssertEqual(absoluut(-4), 4)
        XCTAssertTrue(isNiets(Optional<Int>.none))
        XCTAssertFalse(isNiets(Optional.some(1)))
    }
}
