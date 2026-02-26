# PHP TVS (Turinio Valdymo Sistema) / CMS Projektas

Šis projektas yra pilnai veikianti tinklaraščio ir turinio valdymo sistema, sukurta naudojant gryną PHP ir MySQL. Sistema leidžia kurti įrašus, priskirti jiems kategorijas, palikti komentarus ir valdyti vartotojus per atskirą administratoriaus panelę.

## Technologijos
* **Front-End:** HTML5, CSS3, Bootstrap
* **Back-End:** PHP
* **Duomenų bazė:** MySQL (InnoDB struktūra)

## Reikalavimai
Projektui paleisti reikalingas lokalus serveris. Rekomenduojama naudoti:
* **XAMPP** (Windows / Mac / Linux)

---

## Kaip paleisti projektą savo kompiuteryje?

2. Paleiskite XAMPP serverį

  Atidarykite XAMPP Control Panel.

  Paspauskite Start prie Apache ir MySQL modulių. Įsitikinkite, kad abu šviečia žaliai.

3. Sukurkite duomenų bazę

  Naršyklėje atidarykite duomenų bazių valdymą: http://localhost/phpmyadmin

  Sukurkite naują duomenų bazę pavadinimu cms (Pasirinkite Collation: utf8mb4_general_ci).

  Kairėje pusėje paspauskite ant naujai sukurtos cms bazės.

  Viršutiniame meniu pasirinkite Import.

  Įkelkite projekto aplanke esantį failą cms.sql, tada spauskite Go.

4. Atidaryti svetainę per http://localhost/cms/
