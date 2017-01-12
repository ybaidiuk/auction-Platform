<%--
  Created by IntelliJ IDEA.
  User: florian
  Date: 14.11.16
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!-- Latest compiled and minified JQuery -->
    <script   src="https://code.jquery.com/jquery-3.1.1.min.js"   integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="   crossorigin="anonymous"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <%-- NEUE NAVBAR --%>
    <style>
        body {
            padding-top: 70px;
        }
        #honkknopf {
            background-color: #404040;
            color: #9d9d9d;
        }
        #honkknopf:hover {
            background-color: #101010;
            color: #9d9d9d;
        }
    </style>

    <title>SWE-Projekt</title>
</head>
<body>

<div class="container text-center">
    <p><a id="honkknopf" class="btn btn-lg" href="index" role="button">E-Honk</a></p>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <h2>Allgemeine Geschäftsbedingungen</h2>
            <h3>1 Vertragsumfang und Gültigkeit</h3>
            <p>1.1. Alle Aufträge und Vereinbarungen sind nur dann rechtsverbindlich, wenn sie vom
                Auftragnehmer schriftlich und firmengemäß gezeichnet werden und verpflichten nur
                in dem in der Auftragsbestätigung angegebenem Umfang. Einkaufsbedingungen des
                Auftraggebers werden für das gegenständliche Rechtsgeschäft und die gesamte
                Geschäftsbeziehung hiermit ausgeschlossen.</p>
            <h3>2 Leistung und Prüfung</h3>
            <p>2.1. Gegenstand eines Auftrages kann sein:
                - Ausarbeitung von Organisationskonzepten
                - Global- und Detailanalysen
                - Erstellung von Individualprogrammen
                - Lieferung von Bibliotheks- (Standard-)Programmen
                - Erwerb von Nutzungsberechtigungen für Softwareprodukte
                - Erwerb von Werknutzungsbewilligungen
                - Mitwirkung bei der Inbetriebnahme (Umstellungsunterstützung)
                - Telefonische Beratung
                - Programmwartung
                - Erstellung von Programmträgern
                - Sonstige Dienstleistungen</p>
            <p>2.2. Die Ausarbeitung individueller Organisationskonzepte und Programme erfolgt nach
                Art und Umfang der vom Auftraggeber vollständig zur Verfügung gestellten
                bindenden Informationen, Unterlagen und Hilfsmittel. Dazu zählen auch
                praxisgerechte Testdaten sowie Testmöglichkeiten in ausreichendem Ausmaß, die
                der Auftraggeber zeitgerecht, in der Normalarbeitszeit und auf seine Kosten zur
                Verfügung stellt. Wird vom Auftraggeber bereits auf der zum Test zur Verfügung
                gestellten Anlage im Echtbetrieb gearbeitet, liegt die Verantwortung für die
                Sicherung der Echtdaten beim Auftraggeber.</p>
            <p>2.3. Grundlage für die Erstellung von Individualprogrammen ist die schriftliche
                Leistungsbeschreibung, die der Auftragnehmer gegen Kostenberechnung aufgrund
                der ihm zur Verfügung gestellten Unterlagen und Informationen ausarbeitet bzw.
                der Auftraggeber zur Verfügung stellt. Diese Leistungsbeschreibung ist vom
                Auftraggeber auf Richtigkeit und Vollständigkeit zu überprüfen und mit seinem
                Zustimmungsvermerk zu versehen. Später auftretende Änderungswünsche können zu
                gesonderten Termin- und Preisvereinbarungen führen.</p>
            <p>2.4. Bei Bestellung von Bibliotheks-(Standard-)Programmen bestätigt der Auftraggeber
                mit der Bestellung die Kenntnis des Leistungsumfanges der bestellten Programme.</p>
            <p>2.5. Sollte sich im Zuge der Arbeiten herausstellen, dass die Ausführung des Auftrages
                gemäß Leistungsbeschreibung tatsächlich oder juristisch unmöglich ist, ist der
                Auftragnehmer verpflichtet, dies dem Auftraggeber sofort anzuzeigen. Ändert der
                Auftraggeber die Leistungsbeschreibung nicht dahingehend bzw. schafft die
                Voraussetzung, dass eine Ausführung möglich wird, kann der Auftragnehmer die
                Ausführung ablehnen. Ist die Unmöglichkeit der Ausführung die Folge eines
                Versäumnisses des Auftraggebers oder einer nachträglichen Änderung der
                Leistungsbeschreibung durch den Auftraggeber, ist der Auftragnehmer berechtigt,
                vom Auftrag zurückzutreten. Die bis dahin für die Tätigkeit des Auftragnehmers
                angefallenen Kosten und Spesen sowie allfällige Abbaukosten sind vom Auftraggeber
                zu ersetzen.</p>
            <p>2.6. Ein Versand von Programmträgern, Dokumentationen und Leistungsbeschreibungen
                erfolgt auf Kosten und Gefahr des Auftraggebers. Darüber hinaus vom Auftraggeber
                gewünschte Schulung und Erklärungen werden gesondert in Rechnung gestellt.
                Versicherungen erfolgen nur auf Wunsch des Auftraggebers.</p>
            <p>2.7. Ausdrücklich weisen wir daraufhin, dass eine barrierefreie Ausgestaltung (von Websites) iSd Bundesgesetzes über die Gleichstellung von Menschen mit
                Behinderungen (Bundes-Behindertengleichstellungsgesetz – BGStG) nicht im Angebot enthalten ist, sofern diese nicht gesondert/ individuell vom Auftraggeber
                angefordert wurde. Sollte die barrierefreie Ausgestaltung nicht vereinbart worden sein, so obliegt dem Auftraggeber die Überprüfung der Leistung auf ihre Zulässigkeit
                im Hinblick auf das Bundes-Behindertengleichstellungsgesetz durchzuführen. Ebenso hat der Auftraggeber von ihm bereit gestellte Inhalte auf ihre rechtliche,
                insbesondere wettbewerbs-, marken-, urheber- und verwaltungsrechtliche Zulässigkeit zu überprüfen. Der Auftragnehmer haftet im Falle leichter
                Fahrlässigkeit oder nach Erfüllung einer allfälligen Warnpflicht gegenüber dem Kunden nicht für die rechtliche Zulässigkeit von Inhalten, wenn diese vom Kunden
                vorgegeben wurden.</p>
            <h3>3 Preise, Steuern und Gebühren</h3>
            <p>3.1. Alle Preise gelten nur für den vorliegenden Auftrag. Die genannten Preise verstehen
                sich ab Geschäftssitz bzw. -stelle des Auftragnehmers. Die Kosten von
                Programmträgern (z.B. CD’s, Magnetbänder, Magnetplatten, Floppy Disks, Streamer
                Tapes, Magnetbandkassetten usw.) sowie allfällige Vertragsgebühren werden
                gesondert in Rechnung gestellt.</p>
            <p>3.2. Bei Bibliotheks- (Standard)-Programmen gelten die am Tag der Lieferung gültigen
                Listenpreise. Bei allen anderen Dienstleistungen (Organisationsberatung,
                Programmierung, Einschulung, Umstellungsunterstützung, telefonische Beratung
                usw.) wird der Arbeitsaufwand zu den am Tag der Leistungserbringung gültigen
                Sätzen verrechnet. Abweichungen von einem dem Vertragspreis zugrundeliegenden
                Zeitaufwand, der nicht vom Auftragnehmer zu vertreten ist, wird nach
                tatsächlichem Anfall berechnet.</p>
            <p>3.3. Die Kosten für Fahrt-, Tag- und Nächtigungsgelder werden dem Auftraggeber
                gesondert nach den jeweils gültigen Sätzen in Rechnung gestellt. Wegzeiten gelten
                als Arbeitszeit.</p>
            </p>
            <h3>4 Liefertermin</h3>
            <p>4.1. Der Auftragnehmer ist bestrebt, die vereinbarten Termine der Erfüllung
            (Fertigstellung) möglichst genau einzuhalten.</p>
            <p>4.2. Die angestrebten Erfüllungstermine können nur dann eingehalten werden, wenn der
            Auftraggeber zu den vom Auftragnehmer angegebenen Terminen alle notwendigen
            Arbeiten und Unterlagen vollständig, insbesondere die von ihm akzeptierte
            Leistungsbeschreibung lt. Punkt 2.3. zur Verfügung stellt und seiner
            Mitwirkungsverpflichtung im erforderlichen Ausmaß nachkommt.
            Lieferverzögerungen und Kostenerhöhungen, die durch unrichtige, unvollständige
            oder nachträglich geänderte Angaben und Informationen bzw. zur Verfügung
            gestellte Unterlagen entstehen, sind vom Auftragnehmer nicht zu vertreten und
            können nicht zum Verzug des Auftragnehmers führen. Daraus resultierende
            Mehrkosten trägt der Auftraggeber.</p>
            <p>4.3. Bei Aufträgen, die mehrere Einheiten bzw. Programme umfassen, ist der
            Auftragnehmer berechtigt, Teillieferungen durchzuführen bzw. Teilrechnungen zu
            legen.</p>
            <h3>5 Zahlung</h3>
            <p>5.1. Die vom Auftragnehmer gelegten Rechnungen inklusive Umsatzsteuer sind
            spätestens 14 Tage ab Fakturenerhalt ohne jeden Abzug und spesenfrei zahlbar. Für
            Teilrechnungen gelten die für den Gesamtauftrag festgelegten
            Zahlungsbedingungen analog.</p>
            <p>5.2. Bei Aufträgen, die mehrere Einheiten (z.B. Programme und/oder Schulungen, Realisierungen
            in Teilschritten) umfassen, ist der Auftragnehmer berechtigt, nach
            Lieferung jeder einzelnen Einheit oder Leistung Rechnung zu legen.</p>
            <h3>6 Urheberrecht und Nutzung</h3>
            <p>6.1. Der Auftragnehmer erteilt dem Auftraggeber nach Bezahlung des vereinbarten
            Entgelts ein nicht ausschließliches, nicht übertragbares, nicht unterlizenzierbares
            und zeitlich unbegrenztes Recht die Software für die im Vertrag spezifizierte
            Hardware und im Ausmaß der erworbenen Anzahl Lizenzen für die gleichzeitige
            Nutzung auf mehreren Arbeitsplätzen zu verwenden, sämtliche auf der Grundlage
            des Vertrages des Auftragnehmers erstellten Arbeitsergebnisse zum eigenen,
            internen Gebrauch zu nutzen. Sämtliche sonstige Rechte verbleiben beim
            Auftragnehmer.
            Durch die Mitwirkung des Auftraggebers bei der Herstellung der Software werden
            keine Rechte über die im gegenständlichen Vertrag festgelegte Nutzung erworben.
            Jede Verletzung der Urheberrechte des Auftragnehmers zieht
            Schadenersatzansprüche nach sich, wobei in einem solchen Fall volle Genugtuung
            zu leisten ist.</p>
            <p>6.2. Die Anfertigung von Kopien für Archiv- und Datensicherungszwecke ist dem
            Auftraggeber unter der Bedingung gestattet, dass in der Software kein
            ausdrückliches Verbot des Lizenzgebers oder Dritter enthalten ist, und dass
            sämtliche Copyright- und Eigentumsvermerke in diese Kopien unverändert mit
            übertragen werden.</p>
            <p>6.3. Sollte für die Herstellung von Interoperabilität der gegenständlichen Software die
            Offenlegung der Schnittstellen erforderlich sein, ist dies vom Auftraggeber gegen
            Kostenvergütung beim Auftragnehmer zu beauftragen. Kommt der Auftragnehmer
            dieser Forderung nicht nach und erfolgt eine Dekompilierung gemäß
            Urheberrechtsgesetz, sind die Ergebnisse ausschließlich zur Herstellung der
            Interoperabilität zu verwenden. Missbrauch hat Schadenersatz zur Folge.</p>
            <p>6.4. Wird dem Auftraggeber eine Software zur Verfügung gestellt, deren Lizenzinhaber
            ein Dritter ist (zB Standardsoftware von Microsoft), so richtet sich die Einräumung
            des Nutzungsrechts nach den Lizenzbestimmungen des Lizenzinhabers (Hersteller).</p>
            <h3>7 Rücktrittsrecht</h3>
            <p>7.1. Für den Fall der Überschreitung einer vereinbarten Lieferzeit aus alleinigem
            Verschulden oder rechtswidrigem Handeln des Auftragnehmers ist der Auftraggeber
            berechtigt, mittels eingeschriebenen Briefes vom betreffenden Auftrag
            zurückzutreten, wenn auch innerhalb der angemessenen Nachfrist die vereinbarte
            Leistung in wesentlichen Teilen nicht erbracht wird und den Auftraggeber daran
            kein Verschulden trifft.</p>
            <p>7.2. Höhere Gewalt, Arbeitskonflikte, Naturkatastrophen und Transportsperren sowie
            sonstige Umstände, die außerhalb der Einflussmöglichkeit des Auftragnehmers
            liegen, entbinden den Auftragnehmer von der Lieferverpflichtung bzw. gestatten
            ihm eine Neufestsetzung der vereinbarten Lieferzeit.</p>
            <p>7.3. Stornierungen durch den Auftraggeber, welche weder gesetzlich vorgesehen bzw
            gerechtfertigt sind, sind nur mit schriftlicher Zustimmung des Auftragnehmers
            möglich. Ist der Auftragnehmer mit einem Storno einverstanden, so hat er das
            Recht, neben den erbrachten Leistungen und aufgelaufenen Kosten eine
            Stornogebühr in der Höhe von 30% des noch nicht abgerechneten Auftragswertes des
            Gesamtprojektes zu verrechnen.</p>
            <h3>8 Gewährleistung, Wartung, Änderungen</h3>
            <p>8.1. Der Auftragnehmer gewährleistet, dass die Software die in der dazugehörigen
            Dokumentation beschriebenen Funktionen erfüllt, sofern die Software auf dem im
            Vertrag beschriebenen Betriebssystem genutzt wird.</p>
            <p>8.2. Korrekturen und Ergänzungen, die sich bis zur Übergabe der vereinbarten Leistung
            aufgrund organisatorischer und programmtechnischer Mängel, welche vom
            Auftragnehmer zu vertreten sind, als notwendig erweisen, werden kostenlos vom
            Auftragnehmer durchgeführt.</p>
            <p>8.3. Kosten für Hilfestellung, Fehldiagnose sowie Fehler- und Störungsbeseitigung, die
            vom Auftraggeber zu vertreten sind sowie sonstige Korrekturen, Änderungen und
            Ergänzungen werden vom Auftragnehmer gegen Berechnung durchgeführt. Dies gilt
            auch für die Behebung von Mängeln, wenn Programmänderungen, Ergänzungen oder
            sonstige Eingriffe vom Auftraggeber selbst oder von dritter Seite vorgenommen
            worden sind.</p>
            <p>8.4. Ferner übernimmt der Auftragnehmer keine Gewähr für Fehler, Störungen oder
            Schäden, die auf unsachgemäße Bedienung, geänderter
            Betriebssystemkomponenten, Schnittstellen und Parameter, Verwendung
            ungeeigneter Organisationsmittel und Datenträger, soweit solche vorgeschrieben
            sind, anormale Betriebsbedingungen (insbesondere Abweichungen von den
            Installations- und Lagerbedingungen) sowie auf Transportschäden zurückzuführen
            sind.</p>
            <p>8.5. Für Programme, die durch eigene Programmierer des Auftraggebers bzw. Dritte
            nachträglich verändert werden, entfällt jegliche Gewährleistung durch den
            Auftragnehmer.</p>
            <h3>9 Haftung</h3>
            <p>9.1. Der Auftragnehmer haftet dem Auftraggeber für von ihm nachweislich verschuldete
            Schäden nur im Falle groben Verschuldens. Dies gilt sinngemäß auch für Schäden,
            die auf vom Auftragnehmer beigezogene Dritte zurückzuführen sind. Im Falle von
            verschuldeten Personenschäden haftet der Auftragnehmer unbeschränkt.</p>
            <p>9.2. Schadensersatzansprüche verjähren nach den gesetzlichen Vorschriften, jedoch
            spätestens mit Ablauf eines Jahres ab Kenntnis des Schadens und des Schädigers.</p>
            <h3>10 Datenschutz, Geheimhaltung</h3>
            Der Auftragnehmer verpflichtet seine Mitarbeiter, die Bestimmungen gemäß §15 des
            Datenschutzgesetzes einzuhalten.
            <h3>11 Sonstiges</h3>
            Sollten einzelne Bestimmungen dieses Vertrages unwirksam sein oder unwirksam
            werden, so wird hierdurch der übrige Inhalt dieses Vertrages nicht berührt. Die
            Vertragspartner werden partnerschaftlich zusammenwirken, um eine Regelung zu
            finden, die den unwirksamen Bestimmungen möglichst nahe kommt.

        </div>
        <div class="col-lg-2"></div>
    </div>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>