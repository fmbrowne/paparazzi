

ap.CFLAGS += -DUSE_UART$(MODEM_UART_NR) 
ap.CFLAGS += -DUART$(MODEM_UART_NR)_BAUD=B$(MODEM_BAUD)

MODEM_UART = Uart$(MODEM_UART_NR)

ap.CFLAGS += -DDOWNLINK -DDOWNLINK_FBW_DEVICE=$(MODEM_UART) -DDOWNLINK_AP_DEVICE=$(MODEM_UART) -DPPRZ_UART=$(MODEM_UART)
ap.CFLAGS += -DDOWNLINK_TRANSPORT=PprzTransport -DDATALINK=PPRZ
ap.srcs += $(SRC_FIXEDWING)/downlink.c $(SRC_FIXEDWING)/datalink.c $(SRC_FIXEDWING)/pprz_transport.c


