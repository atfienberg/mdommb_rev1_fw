// Widths
localparam
  L_WIDTH_MDOM_WVB_HDR_BUNDLE_2_EVT_LTC         = 49,
  L_WIDTH_MDOM_WVB_HDR_BUNDLE_2_START_ADDR      = 11,
  L_WIDTH_MDOM_WVB_HDR_BUNDLE_2_STOP_ADDR       = 11,
  L_WIDTH_MDOM_WVB_HDR_BUNDLE_2_TRIG_SRC        = 2,
  L_WIDTH_MDOM_WVB_HDR_BUNDLE_2_CNST_RUN        = 1,
  L_WIDTH_MDOM_WVB_HDR_BUNDLE_2_PRE_CONF        = 5,
  L_WIDTH_MDOM_WVB_HDR_BUNDLE_2_SYNC_RDY        = 1;

// Start position = Previous start + Width
localparam 
  L_START_POS_MDOM_WVB_HDR_BUNDLE_2_EVT_LTC         = 0,
  L_START_POS_MDOM_WVB_HDR_BUNDLE_2_START_ADDR      = 49,
  L_START_POS_MDOM_WVB_HDR_BUNDLE_2_STOP_ADDR       = 60,
  L_START_POS_MDOM_WVB_HDR_BUNDLE_2_TRIG_SRC        = 71,
  L_START_POS_MDOM_WVB_HDR_BUNDLE_2_CNST_RUN        = 73,
  L_START_POS_MDOM_WVB_HDR_BUNDLE_2_PRE_CONF        = 74,
  L_START_POS_MDOM_WVB_HDR_BUNDLE_2_SYNC_RDY        = 79;

// Start position = Previous start + Width
localparam 
  L_STOP_POS_MDOM_WVB_HDR_BUNDLE_2_EVT_LTC         = 48,
  L_STOP_POS_MDOM_WVB_HDR_BUNDLE_2_START_ADDR      = 59,
  L_STOP_POS_MDOM_WVB_HDR_BUNDLE_2_STOP_ADDR       = 70,
  L_STOP_POS_MDOM_WVB_HDR_BUNDLE_2_TRIG_SRC        = 72,
  L_STOP_POS_MDOM_WVB_HDR_BUNDLE_2_CNST_RUN        = 73,
  L_STOP_POS_MDOM_WVB_HDR_BUNDLE_2_PRE_CONF        = 78,
  L_STOP_POS_MDOM_WVB_HDR_BUNDLE_2_SYNC_RDY        = 79;

// Zero pad width and bundle width
localparam L_WIDTH_MDOM_WVB_HDR_BUNDLE_2_ZERO_PAD = 0;
localparam L_WIDTH_MDOM_WVB_HDR_BUNDLE_2 = 80;
