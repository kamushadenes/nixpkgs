{ cabal, dataOrdlist, HUnit, mtl, testFramework, testFrameworkHunit
, time
}:

cabal.mkDerivation (self: {
  pname = "time-recurrence";
  version = "0.9.2";
  sha256 = "1arqmkagmswimbh78qfz5bcilk9i14w29j4vf4i89d00vac3vrzm";
  buildDepends = [ dataOrdlist mtl time ];
  testDepends = [
    dataOrdlist HUnit mtl testFramework testFrameworkHunit time
  ];
  meta = {
    homepage = "http://github.com/hellertime/time-recurrence";
    description = "Generate recurring dates";
    license = self.stdenv.lib.licenses.gpl3;
    platforms = self.ghc.meta.platforms;
  };
})
