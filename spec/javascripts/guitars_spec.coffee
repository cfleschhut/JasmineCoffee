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

  describe 'suggesting age', ->

    beforeEach ->
      spyOn(Guitars, 'currentYear').andReturn(2014)

    it 'suggests 14 for year 2000', ->
      age = Guitars.suggestAge(2000)
      expect(age).toEqual(14)

    it 'suggests 44 for year 1970', ->
      age = Guitars.suggestAge(1970)
      expect(age).toEqual(44)

  describe 'currentYear', ->

    it 'returns year from Date', ->
      spyOn(Date.prototype, 'getFullYear').andReturn(2014)
      currentYear = Guitars.currentYear()
      expect(currentYear).toEqual(2014)
