require '/assets/application.js'

describe 'Guitars', ->

  describe 'suggesting title', ->

    it 'suggests "1999 Gibson SG" from "Gibson SG" brand and "1999" year', ->
      brand = 'Gibson SG'
      year = 1999
      title = Guitars.suggestTitle(brand, year)
      expect(title).toEqual('1999 Gibson SG')

    it 'suggests "1970 Fender Strat" from "Fender Strat" brand and "1970" year', ->
      brand = 'Fender Strat'
      year = 1970
      title = Guitars.suggestTitle(brand, year)
      expect(title).toEqual('1970 Fender Strat')
