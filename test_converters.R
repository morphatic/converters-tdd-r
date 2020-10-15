context('A library of units converters')

# import code to be tested
source('./converters.R')

describe('A library of units converters', {
  it('can blow smoke', {
    expect_equal(TRUE, TRUE)
  })

  it('should convert PSI to KPA', {
    expect_equal(psi2kpa(32), 220.631712)
    expect_equal(psi2kpa(1), 6.894741)
  })

  it('should convert KPa to PSI', {
    expect_equal(kpa2psi(101.325), 14.695952495133)
    expect_equal(kpa2psi(1), 0.14503777444)
  })

  it('should convert MPG to liters per 100km', {
    expect_equal(mpg2lp100k(40), 5.8803694563)
    expect_equal(mpg2lp100k(25), 9.408591130080001)
  })

  it('should convert liters per 100km to MPG', {
    expect_equal(lp100k2mpg(9.4), 25.022895167663442)
    expect_equal(lp100k2mpg(5.1), 46.12063030902673)
  })
})