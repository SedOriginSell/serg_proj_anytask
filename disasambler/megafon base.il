
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Xml
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Security
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:0:0
}
.assembly 'megafon base'
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- Следующий настраиваемый атрибут добавлен автоматически, не следует отменять преобразование в комментарий -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 36 2E 31 01   // ,Version=v4.6.1.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 36 2E 31 )          // amework 4.6.1
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module 'megafon base.dll'
// MVID: {9A49FFE6-DF3A-4475-BF0B-402315DE3015}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x052B0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit megafon_base.Megafon
       extends [mscorlib]System.Object
{
  .field private string '<PhoneNumber>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<FullName>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<Address>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [mscorlib]System.DateTime '<BuyDate>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype megafon_base.Rate '<Tariff>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance string 
          get_PhoneNumber() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string megafon_base.Megafon::'<PhoneNumber>k__BackingField'
    IL_0006:  ret
  } // end of method Megafon::get_PhoneNumber

  .method public hidebysig specialname instance void 
          set_PhoneNumber(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string megafon_base.Megafon::'<PhoneNumber>k__BackingField'
    IL_0007:  ret
  } // end of method Megafon::set_PhoneNumber

  .method public hidebysig specialname instance string 
          get_FullName() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string megafon_base.Megafon::'<FullName>k__BackingField'
    IL_0006:  ret
  } // end of method Megafon::get_FullName

  .method public hidebysig specialname instance void 
          set_FullName(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string megafon_base.Megafon::'<FullName>k__BackingField'
    IL_0007:  ret
  } // end of method Megafon::set_FullName

  .method public hidebysig specialname instance string 
          get_Address() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string megafon_base.Megafon::'<Address>k__BackingField'
    IL_0006:  ret
  } // end of method Megafon::get_Address

  .method public hidebysig specialname instance void 
          set_Address(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string megafon_base.Megafon::'<Address>k__BackingField'
    IL_0007:  ret
  } // end of method Megafon::set_Address

  .method public hidebysig specialname instance valuetype [mscorlib]System.DateTime 
          get_BuyDate() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime megafon_base.Megafon::'<BuyDate>k__BackingField'
    IL_0006:  ret
  } // end of method Megafon::get_BuyDate

  .method public hidebysig specialname instance void 
          set_BuyDate(valuetype [mscorlib]System.DateTime 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [mscorlib]System.DateTime megafon_base.Megafon::'<BuyDate>k__BackingField'
    IL_0007:  ret
  } // end of method Megafon::set_BuyDate

  .method public hidebysig specialname instance valuetype megafon_base.Rate 
          get_Tariff() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype megafon_base.Rate megafon_base.Megafon::'<Tariff>k__BackingField'
    IL_0006:  ret
  } // end of method Megafon::get_Tariff

  .method public hidebysig specialname instance void 
          set_Tariff(valuetype megafon_base.Rate 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype megafon_base.Rate megafon_base.Megafon::'<Tariff>k__BackingField'
    IL_0007:  ret
  } // end of method Megafon::set_Tariff

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Размер кода:       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldstr      ""
    IL_000c:  call       instance void megafon_base.Megafon::set_FullName(string)
    IL_0011:  ldarg.0
    IL_0012:  ldstr      ""
    IL_0017:  call       instance void megafon_base.Megafon::set_PhoneNumber(string)
    IL_001c:  ldarg.0
    IL_001d:  ldstr      ""
    IL_0022:  call       instance void megafon_base.Megafon::set_Address(string)
    IL_0027:  ldarg.0
    IL_0028:  call       valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::get_Now()
    IL_002d:  call       instance void megafon_base.Megafon::set_BuyDate(valuetype [mscorlib]System.DateTime)
    IL_0032:  ldarg.0
    IL_0033:  ldc.i4     0x230
    IL_0038:  call       instance void megafon_base.Megafon::set_Tariff(valuetype megafon_base.Rate)
    IL_003d:  ret
  } // end of method Megafon::.ctor

  .method public hidebysig static valuetype megafon_base.Rate 
          GetRate(int32 indx) cil managed
  {
    // Размер кода:       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  switch     ( 
                          IL_0014,
                          IL_001a,
                          IL_0020)
    IL_0012:  br.s       IL_0026

    IL_0014:  ldc.i4     0x230
    IL_0019:  ret

    IL_001a:  ldc.i4     0x37a
    IL_001f:  ret

    IL_0020:  ldc.i4     0x513
    IL_0025:  ret

    IL_0026:  ldc.i4     0x230
    IL_002b:  ret
  } // end of method Megafon::GetRate

  .method public hidebysig static int32  GetRateIndx(valuetype megafon_base.Rate a) cil managed
  {
    // Размер кода:       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x230
    IL_0006:  beq.s      IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4     0x37a
    IL_000e:  beq.s      IL_001c

    IL_0010:  ldarg.0
    IL_0011:  ldc.i4     0x513
    IL_0016:  beq.s      IL_001e

    IL_0018:  br.s       IL_0020

    IL_001a:  ldc.i4.0
    IL_001b:  ret

    IL_001c:  ldc.i4.1
    IL_001d:  ret

    IL_001e:  ldc.i4.2
    IL_001f:  ret

    IL_0020:  ldc.i4.0
    IL_0021:  ret
  } // end of method Megafon::GetRateIndx

  .property instance string PhoneNumber()
  {
    .get instance string megafon_base.Megafon::get_PhoneNumber()
    .set instance void megafon_base.Megafon::set_PhoneNumber(string)
  } // end of property Megafon::PhoneNumber
  .property instance string FullName()
  {
    .get instance string megafon_base.Megafon::get_FullName()
    .set instance void megafon_base.Megafon::set_FullName(string)
  } // end of property Megafon::FullName
  .property instance string Address()
  {
    .get instance string megafon_base.Megafon::get_Address()
    .set instance void megafon_base.Megafon::set_Address(string)
  } // end of property Megafon::Address
  .property instance valuetype [mscorlib]System.DateTime
          BuyDate()
  {
    .get instance valuetype [mscorlib]System.DateTime megafon_base.Megafon::get_BuyDate()
    .set instance void megafon_base.Megafon::set_BuyDate(valuetype [mscorlib]System.DateTime)
  } // end of property Megafon::BuyDate
  .property instance valuetype megafon_base.Rate
          Tariff()
  {
    .get instance valuetype megafon_base.Rate megafon_base.Megafon::get_Tariff()
    .set instance void megafon_base.Megafon::set_Tariff(valuetype megafon_base.Rate)
  } // end of property Megafon::Tariff
} // end of class megafon_base.Megafon

.class public auto ansi sealed megafon_base.Rate
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype megafon_base.Rate 'ПЕРВЫЙ' = int32(0x00000230)
  .field public static literal valuetype megafon_base.Rate 'ВТОРОЙ' = int32(0x0000037A)
  .field public static literal valuetype megafon_base.Rate 'ТРЕТИЙ' = int32(0x00000513)
} // end of class megafon_base.Rate

.class public auto ansi beforefieldinit ildLicense.LicenseDto
       extends [mscorlib]System.Object
{
  .field private string '<LicenseeName>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [mscorlib]System.DateTime '<ValidUntil>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [mscorlib]System.Collections.Generic.List`1<string> '<AllowedFeatures>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance string 
          get_LicenseeName() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string ildLicense.LicenseDto::'<LicenseeName>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseDto::get_LicenseeName

  .method public hidebysig specialname instance void 
          set_LicenseeName(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string ildLicense.LicenseDto::'<LicenseeName>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseDto::set_LicenseeName

  .method public hidebysig specialname instance valuetype [mscorlib]System.DateTime 
          get_ValidUntil() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime ildLicense.LicenseDto::'<ValidUntil>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseDto::get_ValidUntil

  .method public hidebysig specialname instance void 
          set_ValidUntil(valuetype [mscorlib]System.DateTime 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [mscorlib]System.DateTime ildLicense.LicenseDto::'<ValidUntil>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseDto::set_ValidUntil

  .method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.List`1<string> 
          get_AllowedFeatures() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<string> ildLicense.LicenseDto::'<AllowedFeatures>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseDto::get_AllowedFeatures

  .method public hidebysig specialname instance void 
          set_AllowedFeatures(class [mscorlib]System.Collections.Generic.List`1<string> 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Collections.Generic.List`1<string> ildLicense.LicenseDto::'<AllowedFeatures>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseDto::set_AllowedFeatures

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method LicenseDto::.ctor

  .property instance string LicenseeName()
  {
    .get instance string ildLicense.LicenseDto::get_LicenseeName()
    .set instance void ildLicense.LicenseDto::set_LicenseeName(string)
  } // end of property LicenseDto::LicenseeName
  .property instance valuetype [mscorlib]System.DateTime
          ValidUntil()
  {
    .get instance valuetype [mscorlib]System.DateTime ildLicense.LicenseDto::get_ValidUntil()
    .set instance void ildLicense.LicenseDto::set_ValidUntil(valuetype [mscorlib]System.DateTime)
  } // end of property LicenseDto::ValidUntil
  .property instance class [mscorlib]System.Collections.Generic.List`1<string>
          AllowedFeatures()
  {
    .get instance class [mscorlib]System.Collections.Generic.List`1<string> ildLicense.LicenseDto::get_AllowedFeatures()
    .set instance void ildLicense.LicenseDto::set_AllowedFeatures(class [mscorlib]System.Collections.Generic.List`1<string>)
  } // end of property LicenseDto::AllowedFeatures
} // end of class ildLicense.LicenseDto

.class public auto ansi beforefieldinit ildLicense.LicenseProj
       extends [mscorlib]System.Object
{
  .field private bool '<HasLicense>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<License>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [mscorlib]System.DateTime '<ValidUntil>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [mscorlib]System.Collections.Generic.List`1<string> '<enablesdFeatures>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<secretKey>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<publicKey>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance bool 
          get_HasLicense() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool ildLicense.LicenseProj::'<HasLicense>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseProj::get_HasLicense

  .method private hidebysig specialname instance void 
          set_HasLicense(bool 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool ildLicense.LicenseProj::'<HasLicense>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseProj::set_HasLicense

  .method public hidebysig specialname instance string 
          get_License() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string ildLicense.LicenseProj::'<License>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseProj::get_License

  .method private hidebysig specialname instance void 
          set_License(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string ildLicense.LicenseProj::'<License>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseProj::set_License

  .method public hidebysig specialname instance valuetype [mscorlib]System.DateTime 
          get_ValidUntil() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime ildLicense.LicenseProj::'<ValidUntil>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseProj::get_ValidUntil

  .method private hidebysig specialname instance void 
          set_ValidUntil(valuetype [mscorlib]System.DateTime 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [mscorlib]System.DateTime ildLicense.LicenseProj::'<ValidUntil>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseProj::set_ValidUntil

  .method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.List`1<string> 
          get_enablesdFeatures() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<string> ildLicense.LicenseProj::'<enablesdFeatures>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseProj::get_enablesdFeatures

  .method private hidebysig specialname instance void 
          set_enablesdFeatures(class [mscorlib]System.Collections.Generic.List`1<string> 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Collections.Generic.List`1<string> ildLicense.LicenseProj::'<enablesdFeatures>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseProj::set_enablesdFeatures

  .method public hidebysig specialname instance string 
          get_secretKey() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string ildLicense.LicenseProj::'<secretKey>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseProj::get_secretKey

  .method public hidebysig specialname instance void 
          set_secretKey(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string ildLicense.LicenseProj::'<secretKey>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseProj::set_secretKey

  .method public hidebysig specialname instance string 
          get_publicKey() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string ildLicense.LicenseProj::'<publicKey>k__BackingField'
    IL_0006:  ret
  } // end of method LicenseProj::get_publicKey

  .method public hidebysig specialname instance void 
          set_publicKey(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string ildLicense.LicenseProj::'<publicKey>k__BackingField'
    IL_0007:  ret
  } // end of method LicenseProj::set_publicKey

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Размер кода:       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  call       instance void ildLicense.LicenseProj::GenerateNewKeyPair()
    IL_000c:  ret
  } // end of method LicenseProj::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string SecretKey) cil managed
  {
    // Размер кода:       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void ildLicense.LicenseProj::set_secretKey(string)
    IL_000d:  ret
  } // end of method LicenseProj::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string SecretKey,
                               string PublicKey) cil managed
  {
    // Размер кода:       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void ildLicense.LicenseProj::set_secretKey(string)
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  call       instance void ildLicense.LicenseProj::set_publicKey(string)
    IL_0014:  ret
  } // end of method LicenseProj::.ctor

  .method private hidebysig instance void 
          GenerateNewKeyPair() cil managed
  {
    // Размер кода:       77 (0x4d)
    .maxstack  3
    .locals init ([0] class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider rsaCsp)
    IL_0000:  newobj     instance void [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider::.ctor()
    IL_0005:  stloc.0
    .try
    {
      IL_0006:  ldarg.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.1
      IL_0009:  callvirt   instance string [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm::ToXmlString(bool)
      IL_000e:  call       instance void ildLicense.LicenseProj::set_secretKey(string)
      IL_0013:  ldarg.0
      IL_0014:  ldloc.0
      IL_0015:  ldc.i4.0
      IL_0016:  callvirt   instance string [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm::ToXmlString(bool)
      IL_001b:  call       instance void ildLicense.LicenseProj::set_publicKey(string)
      IL_0020:  ldstr      "private.xml"
      IL_0025:  ldarg.0
      IL_0026:  call       instance string ildLicense.LicenseProj::get_secretKey()
      IL_002b:  call       void [mscorlib]System.IO.File::WriteAllText(string,
                                                                       string)
      IL_0030:  ldstr      "public.xml"
      IL_0035:  ldarg.0
      IL_0036:  call       instance string ildLicense.LicenseProj::get_publicKey()
      IL_003b:  call       void [mscorlib]System.IO.File::WriteAllText(string,
                                                                       string)
      IL_0040:  leave.s    IL_004c

    }  // end .try
    finally
    {
      IL_0042:  ldloc.0
      IL_0043:  brfalse.s  IL_004b

      IL_0045:  ldloc.0
      IL_0046:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_004b:  endfinally
    }  // end handler
    IL_004c:  ret
  } // end of method LicenseProj::GenerateNewKeyPair

  .method public hidebysig static void  SignXml(class [System.Xml]System.Xml.XmlDocument xmlDoc,
                                                class [mscorlib]System.Security.Cryptography.RSA Key) cil managed
  {
    // Размер кода:       111 (0x6f)
    .maxstack  4
    .locals init ([0] class [System.Security]System.Security.Cryptography.Xml.Reference reference,
             [1] class [System.Security]System.Security.Cryptography.Xml.XmlDsigEnvelopedSignatureTransform env,
             [2] class [System.Xml]System.Xml.XmlElement xmlDigitalSignature)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "xmlDoc"
    IL_0008:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_000d:  throw

    IL_000e:  ldarg.1
    IL_000f:  brtrue.s   IL_001c

    IL_0011:  ldstr      "Key"
    IL_0016:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_001b:  throw

    IL_001c:  ldarg.0
    IL_001d:  newobj     instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::.ctor(class [System.Xml]System.Xml.XmlDocument)
    IL_0022:  dup
    IL_0023:  ldarg.1
    IL_0024:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::set_SigningKey(class [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm)
    IL_0029:  newobj     instance void [System.Security]System.Security.Cryptography.Xml.Reference::.ctor()
    IL_002e:  stloc.0
    IL_002f:  ldloc.0
    IL_0030:  ldstr      ""
    IL_0035:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.Reference::set_Uri(string)
    IL_003a:  newobj     instance void [System.Security]System.Security.Cryptography.Xml.XmlDsigEnvelopedSignatureTransform::.ctor()
    IL_003f:  stloc.1
    IL_0040:  ldloc.0
    IL_0041:  ldloc.1
    IL_0042:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.Reference::AddTransform(class [System.Security]System.Security.Cryptography.Xml.Transform)
    IL_0047:  dup
    IL_0048:  ldloc.0
    IL_0049:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::AddReference(class [System.Security]System.Security.Cryptography.Xml.Reference)
    IL_004e:  dup
    IL_004f:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::ComputeSignature()
    IL_0054:  callvirt   instance class [System.Xml]System.Xml.XmlElement [System.Security]System.Security.Cryptography.Xml.SignedXml::GetXml()
    IL_0059:  stloc.2
    IL_005a:  ldarg.0
    IL_005b:  callvirt   instance class [System.Xml]System.Xml.XmlElement [System.Xml]System.Xml.XmlDocument::get_DocumentElement()
    IL_0060:  ldarg.0
    IL_0061:  ldloc.2
    IL_0062:  ldc.i4.1
    IL_0063:  callvirt   instance class [System.Xml]System.Xml.XmlNode [System.Xml]System.Xml.XmlDocument::ImportNode(class [System.Xml]System.Xml.XmlNode,
                                                                                                                      bool)
    IL_0068:  callvirt   instance class [System.Xml]System.Xml.XmlNode [System.Xml]System.Xml.XmlNode::AppendChild(class [System.Xml]System.Xml.XmlNode)
    IL_006d:  pop
    IL_006e:  ret
  } // end of method LicenseProj::SignXml

  .method public hidebysig instance void 
          CreateLicenseFile(class ildLicense.LicenseDto dto,
                            string fileName) cil managed
  {
    // Размер кода:       89 (0x59)
    .maxstack  4
    .locals init ([0] class [mscorlib]System.IO.MemoryStream ms,
             [1] class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider rsaKey)
    IL_0000:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldtoken    ildLicense.LicenseDto
    IL_000b:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0010:  newobj     instance void [System.Xml]System.Xml.Serialization.XmlSerializer::.ctor(class [mscorlib]System.Type)
    IL_0015:  ldloc.0
    IL_0016:  ldarg.1
    IL_0017:  call       instance void [System.Xml]System.Xml.Serialization.XmlSerializer::Serialize(class [mscorlib]System.IO.Stream,
                                                                                                     object)
    IL_001c:  newobj     instance void [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider::.ctor()
    IL_0021:  stloc.1
    IL_0022:  ldloc.1
    IL_0023:  ldarg.0
    IL_0024:  call       instance string ildLicense.LicenseProj::get_secretKey()
    IL_0029:  callvirt   instance void [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm::FromXmlString(string)
    IL_002e:  newobj     instance void [System.Xml]System.Xml.XmlDocument::.ctor()
    IL_0033:  dup
    IL_0034:  ldc.i4.1
    IL_0035:  callvirt   instance void [System.Xml]System.Xml.XmlDocument::set_PreserveWhitespace(bool)
    IL_003a:  ldloc.0
    IL_003b:  ldc.i4.0
    IL_003c:  conv.i8
    IL_003d:  ldc.i4.0
    IL_003e:  callvirt   instance int64 [mscorlib]System.IO.Stream::Seek(int64,
                                                                         valuetype [mscorlib]System.IO.SeekOrigin)
    IL_0043:  pop
    IL_0044:  dup
    IL_0045:  ldloc.0
    IL_0046:  callvirt   instance void [System.Xml]System.Xml.XmlDocument::Load(class [mscorlib]System.IO.Stream)
    IL_004b:  dup
    IL_004c:  ldloc.1
    IL_004d:  call       void ildLicense.LicenseProj::SignXml(class [System.Xml]System.Xml.XmlDocument,
                                                              class [mscorlib]System.Security.Cryptography.RSA)
    IL_0052:  ldarg.2
    IL_0053:  callvirt   instance void [System.Xml]System.Xml.XmlDocument::Save(string)
    IL_0058:  ret
  } // end of method LicenseProj::CreateLicenseFile

  .method public hidebysig static bool  VerifyXml(class [System.Xml]System.Xml.XmlDocument Doc,
                                                  class [mscorlib]System.Security.Cryptography.RSA Key) cil managed
  {
    // Размер кода:       95 (0x5f)
    .maxstack  3
    .locals init ([0] class [System.Security]System.Security.Cryptography.Xml.SignedXml signedXml,
             [1] class [System.Xml]System.Xml.XmlNodeList nodeList)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "Doc"
    IL_0008:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_000d:  throw

    IL_000e:  ldarg.1
    IL_000f:  brtrue.s   IL_001c

    IL_0011:  ldstr      "Key"
    IL_0016:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_001b:  throw

    IL_001c:  ldarg.0
    IL_001d:  newobj     instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::.ctor(class [System.Xml]System.Xml.XmlDocument)
    IL_0022:  stloc.0
    IL_0023:  ldarg.0
    IL_0024:  ldstr      "Signature"
    IL_0029:  callvirt   instance class [System.Xml]System.Xml.XmlNodeList [System.Xml]System.Xml.XmlDocument::GetElementsByTagName(string)
    IL_002e:  stloc.1
    IL_002f:  ldloc.1
    IL_0030:  callvirt   instance int32 [System.Xml]System.Xml.XmlNodeList::get_Count()
    IL_0035:  ldc.i4.0
    IL_0036:  bgt.s      IL_003a

    IL_0038:  ldc.i4.0
    IL_0039:  ret

    IL_003a:  ldloc.1
    IL_003b:  callvirt   instance int32 [System.Xml]System.Xml.XmlNodeList::get_Count()
    IL_0040:  ldc.i4.2
    IL_0041:  blt.s      IL_0045

    IL_0043:  ldc.i4.0
    IL_0044:  ret

    IL_0045:  ldloc.0
    IL_0046:  ldloc.1
    IL_0047:  ldc.i4.0
    IL_0048:  callvirt   instance class [System.Xml]System.Xml.XmlNode [System.Xml]System.Xml.XmlNodeList::get_ItemOf(int32)
    IL_004d:  castclass  [System.Xml]System.Xml.XmlElement
    IL_0052:  callvirt   instance void [System.Security]System.Security.Cryptography.Xml.SignedXml::LoadXml(class [System.Xml]System.Xml.XmlElement)
    IL_0057:  ldloc.0
    IL_0058:  ldarg.1
    IL_0059:  callvirt   instance bool [System.Security]System.Security.Cryptography.Xml.SignedXml::CheckSignature(class [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm)
    IL_005e:  ret
  } // end of method LicenseProj::VerifyXml

  .method public hidebysig instance bool 
          TryLoadLicense(string fileName) cil managed
  {
    // Размер кода:       206 (0xce)
    .maxstack 1

.locals init ([0] bool V_0)

IL_0000: nop

IL_0001: ldc.i4.1

IL_0002: stloc.0

IL_0003: br.s IL_0005

IL_0005: ldloc.0

IL_0006: ret
  } // end of method LicenseProj::TryLoadLicense

  .property instance bool HasLicense()
  {
    .get instance bool ildLicense.LicenseProj::get_HasLicense()
    .set instance void ildLicense.LicenseProj::set_HasLicense(bool)
  } // end of property LicenseProj::HasLicense
  .property instance string License()
  {
    .get instance string ildLicense.LicenseProj::get_License()
    .set instance void ildLicense.LicenseProj::set_License(string)
  } // end of property LicenseProj::License
  .property instance valuetype [mscorlib]System.DateTime
          ValidUntil()
  {
    .get instance valuetype [mscorlib]System.DateTime ildLicense.LicenseProj::get_ValidUntil()
    .set instance void ildLicense.LicenseProj::set_ValidUntil(valuetype [mscorlib]System.DateTime)
  } // end of property LicenseProj::ValidUntil
  .property instance class [mscorlib]System.Collections.Generic.List`1<string>
          enablesdFeatures()
  {
    .get instance class [mscorlib]System.Collections.Generic.List`1<string> ildLicense.LicenseProj::get_enablesdFeatures()
    .set instance void ildLicense.LicenseProj::set_enablesdFeatures(class [mscorlib]System.Collections.Generic.List`1<string>)
  } // end of property LicenseProj::enablesdFeatures
  .property instance string secretKey()
  {
    .get instance string ildLicense.LicenseProj::get_secretKey()
    .set instance void ildLicense.LicenseProj::set_secretKey(string)
  } // end of property LicenseProj::secretKey
  .property instance string publicKey()
  {
    .get instance string ildLicense.LicenseProj::get_publicKey()
    .set instance void ildLicense.LicenseProj::set_publicKey(string)
  } // end of property LicenseProj::publicKey
} // end of class ildLicense.LicenseProj


// =============================================================

// *********** ДИЗАССЕМБЛИРОВАНИЕ ЗАВЕРШЕНО ***********************
// ВНИМАНИЕ: создан файл ресурсов Win32 D:\github\serg_proj_anytask\disasambler\megafon base.res
