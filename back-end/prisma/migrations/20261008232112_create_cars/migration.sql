-- CreateTable
CREATE TABLE "Customer" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "ident_document" TEXT NOT NULL,
    "birth_date" DATE,
    "street_name" TEXT NOT NULL,
    "house_number" TEXT NOT NULL,
    "complements" TEXT,
    "district" TEXT NOT NULL,
    "municipality" TEXT NOT NULL,
    "state" CHAR(2) NOT NULL,
    "phone" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "Customer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Car" (
    "id" SERIAL NOT NULL,
    "brand" TEXT NOT NULL,
    "model" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "year_manufacture" INTEGER NOT NULL,
    "imported" BOOLEAN NOT NULL,
    "plates" TEXT NOT NULL,
    "selling_date" TIMESTAMP(3),
    "selling_price" DECIMAL(65,30),
    "customer_id" INTEGER,

    CONSTRAINT "Car_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Customer_ident_document_key" ON "Customer"("ident_document");

-- CreateIndex
CREATE UNIQUE INDEX "Customer_email_key" ON "Customer"("email");

-- AddForeignKey
ALTER TABLE "Car" ADD CONSTRAINT "Car_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "Customer"("id") ON DELETE SET NULL ON UPDATE CASCADE;
