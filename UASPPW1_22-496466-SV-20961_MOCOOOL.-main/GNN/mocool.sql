use connection;

-- ======================DATABASE MOCOOL=================================
CREATE TABLE pelatih(
ID_pelatih CHAR(6) NOT NULL PRIMARY KEY,
nama_pelatih VARCHAR(20),
asal_pelatih VARCHAR(20),
umur_pelatih INT(2),
nomor_telepon INT(13));

CREATE TABLE program(
kode_latihan CHAR(6) NOT NULL PRIMARY KEY,
latihan VARCHAR(30),
ID_pelatih VARCHAR(50));

CREATE TABLE atlet(
ID_atlet CHAR(6) NOT NULL PRIMARY KEY,
nama_atlet VARCHAR(30),
umur_atlet INT(2),
tingkatan_atlet VARCHAR(20),
asal_atlet VARCHAR(50));

CREATE TABLE lapangan(
kode_lapangan CHAR(6) NOT NULL PRIMARY KEY,
urutan_lapangan INT(3),
kapasitas_lapangan VARCHAR(10));

CREATE TABLE jadwal (
    ID_pelatih CHAR(6) PRIMARY KEY,
    ID_atlet CHAR(6) NOT NULL,
    hari VARCHAR(10) NOT NULL,
    durasi INT NOT NULL,
    tingkatan_atlet VARCHAR(20) NOT NULL,
    kode_lapangan CHAR(6) NOT NULL,
	CONSTRAINT fk_atlet FOREIGN KEY (ID_atlet)  REFERENCES atlet (ID_atlet) on delete cascade,
	CONSTRAINT fk_lap FOREIGN KEY (kode_lapangan) REFERENCES lapangan (kode_lapangan) on delete cascade);


