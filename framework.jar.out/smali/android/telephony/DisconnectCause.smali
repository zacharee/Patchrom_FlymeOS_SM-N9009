.class public Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# static fields
.field public static final ACCESS_DISCARD:I = 0xdc

.field public static final ACM_EXCEED:I = 0xe6

.field public static final BARRED_IN_CUG:I = 0xe1

.field public static final BARRER_NOT_ALLOWED:I = 0xe2

.field public static final BEARER_CAPABILITY_NOT_AUTHORIZED:I = 0xc8

.field public static final BEARER_UNINPLEMENTED:I = 0xe5

.field public static final BUSY:I = 0x4

.field public static final CALL_BARRED:I = 0x14

.field public static final CALL_REJECT:I = 0xcf

.field public static final CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final CDMA_ACCESS_FAILURE:I = 0x20

.field public static final CDMA_CALL_LOST:I = 0x29

.field public static final CDMA_DROP:I = 0x1b

.field public static final CDMA_INTERCEPT:I = 0x1c

.field public static final CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final CDMA_NOT_EMERGENCY:I = 0x22

.field public static final CDMA_PREEMPTED:I = 0x21

.field public static final CDMA_REORDER:I = 0x1d

.field public static final CDMA_RETRY_ORDER:I = 0x1f

.field public static final CDMA_SO_REJECT:I = 0x1e

.field public static final CHANNEL_UNACCEPT:I = 0xcc

.field public static final CONGESTION:I = 0x5

.field public static final CS_RESTRICTED:I = 0x16

.field public static final CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final CS_RESTRICTED_NORMAL:I = 0x17

.field public static final DESTINATION_OUT_OF:I = 0xd3

.field public static final DIALED_MMI:I = 0x27

.field public static final EMERGENCY_ONLY:I = 0x25

.field public static final ERROR_UNSPECIFIED:I = 0x24

.field public static final EXITED_ECM:I = 0x2a

.field public static final FACILITY_REJECT:I = 0xd5

.field public static final FACILITY_UNINPLEMENTED:I = 0xe7

.field public static final FDN_BLOCKED:I = 0x15

.field public static final ICC_ERROR:I = 0x13

.field public static final IE_ERROR:I = 0xef

.field public static final IE_NON_EXIST:I = 0xf2

.field public static final IMS_ERROR:I = 0x65

.field public static final INCOMING_MISSED:I = 0x1

.field public static final INCOMING_REJECTED:I = 0x10

.field public static final INCOMPATIBLE_DEST:I = 0xec

.field public static final INCORRECT_MSG:I = 0xee

.field public static final INTERWORKING:I = 0xf7

.field public static final INVALID_CREDENTIALS:I = 0xa

.field public static final INVALID_IE_CONTENTS:I = 0xf3

.field public static final INVALID_NUMBER:I = 0x7

.field public static final INVALID_NUM_FORMAT:I = 0xd4

.field public static final INVALID_TI:I = 0xea

.field public static final INVALID_TRANSIT_NET:I = 0xed

.field public static final LIMIT_EXCEEDED:I = 0xf

.field public static final LOCAL:I = 0x3

.field public static final LOST_SIGNAL:I = 0xe

.field public static final MAXIMUM_VALID_VALUE:I = 0xf7

.field public static final MINIMUM_VALID_VALUE:I = 0x0

.field public static final MMI:I = 0x6

.field public static final MSG_NOT_COMP:I = 0xf1

.field public static final MSG_NOT_COMP_CALL_STATE:I = 0xf4

.field public static final MSG_TYPE_NON_EXIST:I = 0xf0

.field public static final NET_OUT_OF:I = 0xd9

.field public static final NON_SELECTED:I = 0xd2

.field public static final NORMAL:I = 0x2

.field public static final NORMAL_UNSPECIFIED:I = 0xd7

.field public static final NOT_DISCONNECTED:I = 0x0

.field public static final NOT_IN_CUG:I = 0xeb

.field public static final NOT_VALID:I = -0x1

.field public static final NO_ANSWER:I = 0x64

.field public static final NO_BEARER:I = 0xe3

.field public static final NO_CHANNEL:I = 0xdd

.field public static final NO_CIRCUIT:I = 0xd8

.field public static final NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final NO_QOS:I = 0xdf

.field public static final NO_RESOURCE:I = 0xde

.field public static final NO_ROUTE:I = 0xcb

.field public static final NO_SUBSCRIBED:I = 0xe0

.field public static final NO_USER_RESP:I = 0xce

.field public static final NUMBER_CHANGED:I = 0xd0

.field public static final NUMBER_UNREACHABLE:I = 0x8

.field public static final OP_DETERMINED:I = 0xcd

.field public static final OUTGOING_CANCELED:I = 0x2c

.field public static final OUTGOING_FAILURE:I = 0x2b

.field public static final OUT_OF_NETWORK:I = 0xb

.field public static final OUT_OF_SERVICE:I = 0x12

.field public static final POWER_OFF:I = 0x11

.field public static final PRE_EMPTION:I = 0xd1

.field public static final PROTOCOL_ERROR:I = 0xf6

.field public static final RECOVERY_TIMER_EXPIRY:I = 0xf5

.field public static final REQUESTED_FACILITY_NOT_IMPLEMENTED:I = 0xc9

.field public static final RESTRICTED_DIGITAL:I = 0xe8

.field public static final SERVER_ERROR:I = 0xc

.field public static final SERVER_UNREACHABLE:I = 0x9

.field public static final SERVICE_UNAVAILABLE:I = 0xe4

.field public static final SERVICE_UNINPLEMENTED:I = 0xe9

.field public static final STATUS_ENQUIRY:I = 0xd6

.field public static final SWITCH_CONGESTION:I = 0xdb

.field public static final TIMED_OUT:I = 0xd

.field public static final TMP_FAIL:I = 0xda

.field public static final UAVAILABLE_CHANNEL:I = 0x66

.field public static final UNASSIGNED_NUM:I = 0xca

.field public static final UNOBTAINABLE_NUMBER:I = 0x19

.field public static final VOICEMAIL_NUMBER_MISSING:I = 0x28

.field public static final WIFI_OUT_OF_FOOTPRINT:I = 0x67


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method public static disconnectCauseId(Ljava/lang/String;)I
    .locals 1
    .param p0, "cause"    # Ljava/lang/String;

    .prologue
    .line 448
    const-string v0, "NOT_DISCONNECTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 649
    :goto_0
    return v0

    .line 450
    :cond_0
    const-string v0, "INCOMING_MISSED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    const/4 v0, 0x1

    goto :goto_0

    .line 452
    :cond_1
    const-string v0, "NORMAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    const/4 v0, 0x2

    goto :goto_0

    .line 454
    :cond_2
    const-string v0, "LOCAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    const/4 v0, 0x3

    goto :goto_0

    .line 456
    :cond_3
    const-string v0, "BUSY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 457
    const/4 v0, 0x4

    goto :goto_0

    .line 458
    :cond_4
    const-string v0, "CONGESTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 459
    const/4 v0, 0x5

    goto :goto_0

    .line 460
    :cond_5
    const-string v0, "INVALID_NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 461
    const/4 v0, 0x7

    goto :goto_0

    .line 462
    :cond_6
    const-string v0, "NUMBER_UNREACHABLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 463
    const/16 v0, 0x8

    goto :goto_0

    .line 464
    :cond_7
    const-string v0, "SERVER_UNREACHABLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 465
    const/16 v0, 0x9

    goto :goto_0

    .line 466
    :cond_8
    const-string v0, "INVALID_CREDENTIALS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 467
    const/16 v0, 0xa

    goto :goto_0

    .line 468
    :cond_9
    const-string v0, "OUT_OF_NETWORK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 469
    const/16 v0, 0xb

    goto :goto_0

    .line 470
    :cond_a
    const-string v0, "SERVER_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 471
    const/16 v0, 0xc

    goto :goto_0

    .line 472
    :cond_b
    const-string v0, "TIMED_OUT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 473
    const/16 v0, 0xd

    goto :goto_0

    .line 474
    :cond_c
    const-string v0, "LOST_SIGNAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 475
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 476
    :cond_d
    const-string v0, "LIMIT_EXCEEDED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 477
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 478
    :cond_e
    const-string v0, "INCOMING_REJECTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 479
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 480
    :cond_f
    const-string v0, "POWER_OFF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 481
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 482
    :cond_10
    const-string v0, "OUT_OF_SERVICE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 483
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 484
    :cond_11
    const-string v0, "ICC_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 485
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 486
    :cond_12
    const-string v0, "CALL_BARRED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 487
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 488
    :cond_13
    const-string v0, "FDN_BLOCKED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 489
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 490
    :cond_14
    const-string v0, "CS_RESTRICTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 491
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 492
    :cond_15
    const-string v0, "CS_RESTRICTED_NORMAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 493
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 494
    :cond_16
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 495
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 496
    :cond_17
    const-string v0, "UNOBTAINABLE_NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 497
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 498
    :cond_18
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 499
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 500
    :cond_19
    const-string v0, "CDMA_DROP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 501
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 502
    :cond_1a
    const-string v0, "CDMA_INTERCEPT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 503
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 504
    :cond_1b
    const-string v0, "CDMA_REORDER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 505
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 506
    :cond_1c
    const-string v0, "CDMA_SO_REJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 507
    const/16 v0, 0x1e

    goto/16 :goto_0

    .line 508
    :cond_1d
    const-string v0, "CDMA_RETRY_ORDER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 509
    const/16 v0, 0x1f

    goto/16 :goto_0

    .line 510
    :cond_1e
    const-string v0, "CDMA_ACCESS_FAILURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 511
    const/16 v0, 0x20

    goto/16 :goto_0

    .line 512
    :cond_1f
    const-string v0, "CDMA_PREEMPTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 513
    const/16 v0, 0x21

    goto/16 :goto_0

    .line 514
    :cond_20
    const-string v0, "CDMA_NOT_EMERGENCY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 515
    const/16 v0, 0x22

    goto/16 :goto_0

    .line 516
    :cond_21
    const-string v0, "CDMA_ACCESS_BLOCKED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 517
    const/16 v0, 0x23

    goto/16 :goto_0

    .line 518
    :cond_22
    const-string v0, "EMERGENCY_ONLY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 519
    const/16 v0, 0x25

    goto/16 :goto_0

    .line 520
    :cond_23
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 521
    const/16 v0, 0x26

    goto/16 :goto_0

    .line 522
    :cond_24
    const-string v0, "DIALED_MMI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 523
    const/16 v0, 0x27

    goto/16 :goto_0

    .line 524
    :cond_25
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 525
    const/16 v0, 0x28

    goto/16 :goto_0

    .line 526
    :cond_26
    const-string v0, "CDMA_CALL_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 527
    const/16 v0, 0x29

    goto/16 :goto_0

    .line 528
    :cond_27
    const-string v0, "EXITED_ECM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 529
    const/16 v0, 0x2a

    goto/16 :goto_0

    .line 530
    :cond_28
    const-string v0, "ERROR_UNSPECIFIED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 531
    const/16 v0, 0x24

    goto/16 :goto_0

    .line 532
    :cond_29
    const-string v0, "OUTGOING_FAILURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 533
    const/16 v0, 0x2b

    goto/16 :goto_0

    .line 534
    :cond_2a
    const-string v0, "OUTGOING_CANCELED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 535
    const/16 v0, 0x2c

    goto/16 :goto_0

    .line 537
    :cond_2b
    const-string v0, "NO_ANSWER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 538
    const/16 v0, 0x64

    goto/16 :goto_0

    .line 539
    :cond_2c
    const-string v0, "IMS_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 540
    const/16 v0, 0x65

    goto/16 :goto_0

    .line 541
    :cond_2d
    const-string v0, "UAVAILABLE_CHANNEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 542
    const/16 v0, 0x66

    goto/16 :goto_0

    .line 545
    :cond_2e
    const-string v0, "WIFI_OUT_OF_FOOTPRINT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 546
    const/16 v0, 0x67

    goto/16 :goto_0

    .line 549
    :cond_2f
    const-string v0, "BEARER_CAPABILITY_NOT_AUTHORIZED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 550
    const/16 v0, 0xc8

    goto/16 :goto_0

    .line 551
    :cond_30
    const-string v0, "REQUESTED_FACILITY_NOT_IMPLEMENTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 552
    const/16 v0, 0xc9

    goto/16 :goto_0

    .line 555
    :cond_31
    const-string v0, "NO_USER_RESP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 556
    const/16 v0, 0xce

    goto/16 :goto_0

    .line 557
    :cond_32
    const-string v0, "NO_CIRCUIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 558
    const/16 v0, 0xd8

    goto/16 :goto_0

    .line 559
    :cond_33
    const-string v0, "TMP_FAIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 560
    const/16 v0, 0xda

    goto/16 :goto_0

    .line 561
    :cond_34
    const-string v0, "SWITCH_CONGESTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 562
    const/16 v0, 0xdb

    goto/16 :goto_0

    .line 563
    :cond_35
    const-string v0, "NO_CHANNEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 564
    const/16 v0, 0xdd

    goto/16 :goto_0

    .line 565
    :cond_36
    const-string v0, "NO_QOS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 566
    const/16 v0, 0xdf

    goto/16 :goto_0

    .line 567
    :cond_37
    const-string v0, "NO_BEARER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 568
    const/16 v0, 0xe3

    goto/16 :goto_0

    .line 569
    :cond_38
    const-string v0, "ACM_EXCEED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 570
    const/16 v0, 0xe6

    goto/16 :goto_0

    .line 571
    :cond_39
    const-string v0, "UNASSIGNED_NUM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 572
    const/16 v0, 0xca

    goto/16 :goto_0

    .line 573
    :cond_3a
    const-string v0, "NO_ROUTE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 574
    const/16 v0, 0xcb

    goto/16 :goto_0

    .line 575
    :cond_3b
    const-string v0, "CHANNEL_UNACCEPT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 576
    const/16 v0, 0xcc

    goto/16 :goto_0

    .line 577
    :cond_3c
    const-string v0, "OP_DETERMINED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 578
    const/16 v0, 0xcd

    goto/16 :goto_0

    .line 579
    :cond_3d
    const-string v0, "CALL_REJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 580
    const/16 v0, 0xcf

    goto/16 :goto_0

    .line 581
    :cond_3e
    const-string v0, "PRE_EMPTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 582
    const/16 v0, 0xd1

    goto/16 :goto_0

    .line 583
    :cond_3f
    const-string v0, "NON_SELECTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 584
    const/16 v0, 0xd2

    goto/16 :goto_0

    .line 585
    :cond_40
    const-string v0, "DESTINATION_OUT_OF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 586
    const/16 v0, 0xd3

    goto/16 :goto_0

    .line 587
    :cond_41
    const-string v0, "INVALID_NUM_FORMAT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 588
    const/16 v0, 0xd4

    goto/16 :goto_0

    .line 589
    :cond_42
    const-string v0, "FACILITY_REJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 590
    const/16 v0, 0xd5

    goto/16 :goto_0

    .line 591
    :cond_43
    const-string v0, "NET_OUT_OF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 592
    const/16 v0, 0xd9

    goto/16 :goto_0

    .line 593
    :cond_44
    const-string v0, "ACCESS_DISCARD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 594
    const/16 v0, 0xdc

    goto/16 :goto_0

    .line 595
    :cond_45
    const-string v0, "NO_RESOURCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 596
    const/16 v0, 0xde

    goto/16 :goto_0

    .line 597
    :cond_46
    const-string v0, "NO_SUBSCRIBED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 598
    const/16 v0, 0xe0

    goto/16 :goto_0

    .line 599
    :cond_47
    const-string v0, "BARRED_IN_CUG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 600
    const/16 v0, 0xe1

    goto/16 :goto_0

    .line 601
    :cond_48
    const-string v0, "BARRER_NOT_ALLOWED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 602
    const/16 v0, 0xe2

    goto/16 :goto_0

    .line 603
    :cond_49
    const-string v0, "SERVICE_UNAVAILABLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 604
    const/16 v0, 0xe4

    goto/16 :goto_0

    .line 605
    :cond_4a
    const-string v0, "BEARER_UNINPLEMENTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 606
    const/16 v0, 0xe5

    goto/16 :goto_0

    .line 607
    :cond_4b
    const-string v0, "FACILITY_UNINPLEMENTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 608
    const/16 v0, 0xe7

    goto/16 :goto_0

    .line 609
    :cond_4c
    const-string v0, "RESTRICTED_DIGITAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 610
    const/16 v0, 0xe8

    goto/16 :goto_0

    .line 611
    :cond_4d
    const-string v0, "SERVICE_UNINPLEMENTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 612
    const/16 v0, 0xe9

    goto/16 :goto_0

    .line 613
    :cond_4e
    const-string v0, "INVALID_TI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 614
    const/16 v0, 0xea

    goto/16 :goto_0

    .line 615
    :cond_4f
    const-string v0, "NOT_IN_CUG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 616
    const/16 v0, 0xeb

    goto/16 :goto_0

    .line 617
    :cond_50
    const-string v0, "INCOMPATIBLE_DEST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 618
    const/16 v0, 0xec

    goto/16 :goto_0

    .line 619
    :cond_51
    const-string v0, "INVALID_TRANSIT_NET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 620
    const/16 v0, 0xed

    goto/16 :goto_0

    .line 621
    :cond_52
    const-string v0, "INCORRECT_MSG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 622
    const/16 v0, 0xee

    goto/16 :goto_0

    .line 623
    :cond_53
    const-string v0, "IE_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 624
    const/16 v0, 0xef

    goto/16 :goto_0

    .line 625
    :cond_54
    const-string v0, "MSG_TYPE_NON_EXIST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 626
    const/16 v0, 0xf0

    goto/16 :goto_0

    .line 627
    :cond_55
    const-string v0, "MSG_NOT_COMP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 628
    const/16 v0, 0xf1

    goto/16 :goto_0

    .line 629
    :cond_56
    const-string v0, "IE_NON_EXIST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 630
    const/16 v0, 0xf2

    goto/16 :goto_0

    .line 631
    :cond_57
    const-string v0, "INVALID_IE_CONTENTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 632
    const/16 v0, 0xf3

    goto/16 :goto_0

    .line 633
    :cond_58
    const-string v0, "MSG_NOT_COMP_CALL_STATE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 634
    const/16 v0, 0xf4

    goto/16 :goto_0

    .line 635
    :cond_59
    const-string v0, "RECOVERY_TIMER_EXPIRY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 636
    const/16 v0, 0xf5

    goto/16 :goto_0

    .line 637
    :cond_5a
    const-string v0, "PROTOCOL_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 638
    const/16 v0, 0xf6

    goto/16 :goto_0

    .line 639
    :cond_5b
    const-string v0, "INTERWORKING"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 640
    const/16 v0, 0xf7

    goto/16 :goto_0

    .line 641
    :cond_5c
    const-string v0, "NUMBER_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 642
    const/16 v0, 0xd0

    goto/16 :goto_0

    .line 643
    :cond_5d
    const-string v0, "STATUS_ENQUIRY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 644
    const/16 v0, 0xd6

    goto/16 :goto_0

    .line 645
    :cond_5e
    const-string v0, "NORMAL_UNSPECIFIED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 646
    const/16 v0, 0xd7

    goto/16 :goto_0

    .line 649
    :cond_5f
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "cause"    # I

    .prologue
    .line 240
    sparse-switch p0, :sswitch_data_0

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 242
    :sswitch_0
    const-string v0, "NOT_DISCONNECTED"

    goto :goto_0

    .line 244
    :sswitch_1
    const-string v0, "INCOMING_MISSED"

    goto :goto_0

    .line 246
    :sswitch_2
    const-string v0, "NORMAL"

    goto :goto_0

    .line 248
    :sswitch_3
    const-string v0, "LOCAL"

    goto :goto_0

    .line 250
    :sswitch_4
    const-string v0, "BUSY"

    goto :goto_0

    .line 252
    :sswitch_5
    const-string v0, "CONGESTION"

    goto :goto_0

    .line 254
    :sswitch_6
    const-string v0, "INVALID_NUMBER"

    goto :goto_0

    .line 256
    :sswitch_7
    const-string v0, "NUMBER_UNREACHABLE"

    goto :goto_0

    .line 258
    :sswitch_8
    const-string v0, "SERVER_UNREACHABLE"

    goto :goto_0

    .line 260
    :sswitch_9
    const-string v0, "INVALID_CREDENTIALS"

    goto :goto_0

    .line 262
    :sswitch_a
    const-string v0, "OUT_OF_NETWORK"

    goto :goto_0

    .line 264
    :sswitch_b
    const-string v0, "SERVER_ERROR"

    goto :goto_0

    .line 266
    :sswitch_c
    const-string v0, "TIMED_OUT"

    goto :goto_0

    .line 268
    :sswitch_d
    const-string v0, "LOST_SIGNAL"

    goto :goto_0

    .line 270
    :sswitch_e
    const-string v0, "LIMIT_EXCEEDED"

    goto :goto_0

    .line 272
    :sswitch_f
    const-string v0, "INCOMING_REJECTED"

    goto :goto_0

    .line 274
    :sswitch_10
    const-string v0, "POWER_OFF"

    goto :goto_0

    .line 276
    :sswitch_11
    const-string v0, "OUT_OF_SERVICE"

    goto :goto_0

    .line 278
    :sswitch_12
    const-string v0, "ICC_ERROR"

    goto :goto_0

    .line 280
    :sswitch_13
    const-string v0, "CALL_BARRED"

    goto :goto_0

    .line 282
    :sswitch_14
    const-string v0, "FDN_BLOCKED"

    goto :goto_0

    .line 284
    :sswitch_15
    const-string v0, "CS_RESTRICTED"

    goto :goto_0

    .line 286
    :sswitch_16
    const-string v0, "CS_RESTRICTED_NORMAL"

    goto :goto_0

    .line 288
    :sswitch_17
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    goto :goto_0

    .line 290
    :sswitch_18
    const-string v0, "UNOBTAINABLE_NUMBER"

    goto :goto_0

    .line 292
    :sswitch_19
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    goto :goto_0

    .line 294
    :sswitch_1a
    const-string v0, "CDMA_DROP"

    goto :goto_0

    .line 296
    :sswitch_1b
    const-string v0, "CDMA_INTERCEPT"

    goto :goto_0

    .line 298
    :sswitch_1c
    const-string v0, "CDMA_REORDER"

    goto :goto_0

    .line 300
    :sswitch_1d
    const-string v0, "CDMA_SO_REJECT"

    goto :goto_0

    .line 302
    :sswitch_1e
    const-string v0, "CDMA_RETRY_ORDER"

    goto :goto_0

    .line 304
    :sswitch_1f
    const-string v0, "CDMA_ACCESS_FAILURE"

    goto :goto_0

    .line 306
    :sswitch_20
    const-string v0, "CDMA_PREEMPTED"

    goto :goto_0

    .line 308
    :sswitch_21
    const-string v0, "CDMA_NOT_EMERGENCY"

    goto :goto_0

    .line 310
    :sswitch_22
    const-string v0, "CDMA_ACCESS_BLOCKED"

    goto :goto_0

    .line 312
    :sswitch_23
    const-string v0, "EMERGENCY_ONLY"

    goto :goto_0

    .line 314
    :sswitch_24
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    goto :goto_0

    .line 316
    :sswitch_25
    const-string v0, "DIALED_MMI"

    goto :goto_0

    .line 318
    :sswitch_26
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    goto :goto_0

    .line 320
    :sswitch_27
    const-string v0, "CDMA_CALL_LOST"

    goto :goto_0

    .line 322
    :sswitch_28
    const-string v0, "EXITED_ECM"

    goto :goto_0

    .line 324
    :sswitch_29
    const-string v0, "ERROR_UNSPECIFIED"

    goto :goto_0

    .line 326
    :sswitch_2a
    const-string v0, "OUTGOING_FAILURE"

    goto/16 :goto_0

    .line 328
    :sswitch_2b
    const-string v0, "OUTGOING_CANCELED"

    goto/16 :goto_0

    .line 331
    :sswitch_2c
    const-string v0, "NO_ANSWER"

    goto/16 :goto_0

    .line 333
    :sswitch_2d
    const-string v0, "IMS_ERROR"

    goto/16 :goto_0

    .line 335
    :sswitch_2e
    const-string v0, "UAVAILABLE_CHANNEL"

    goto/16 :goto_0

    .line 339
    :sswitch_2f
    const-string v0, "WIFI_OUT_OF_FOOTPRINT"

    goto/16 :goto_0

    .line 343
    :sswitch_30
    const-string v0, "BEARER_CAPABILITY_NOT_AUTHORIZED"

    goto/16 :goto_0

    .line 345
    :sswitch_31
    const-string v0, "REQUESTED_FACILITY_NOT_IMPLEMENTED"

    goto/16 :goto_0

    .line 349
    :sswitch_32
    const-string v0, "NO_USER_RESP"

    goto/16 :goto_0

    .line 351
    :sswitch_33
    const-string v0, "NO_CIRCUIT"

    goto/16 :goto_0

    .line 353
    :sswitch_34
    const-string v0, "TMP_FAIL"

    goto/16 :goto_0

    .line 355
    :sswitch_35
    const-string v0, "SWITCH_CONGESTION"

    goto/16 :goto_0

    .line 357
    :sswitch_36
    const-string v0, "NO_CHANNEL"

    goto/16 :goto_0

    .line 359
    :sswitch_37
    const-string v0, "NO_QOS"

    goto/16 :goto_0

    .line 361
    :sswitch_38
    const-string v0, "NO_BEARER"

    goto/16 :goto_0

    .line 363
    :sswitch_39
    const-string v0, "ACM_EXCEED"

    goto/16 :goto_0

    .line 365
    :sswitch_3a
    const-string v0, "UNASSIGNED_NUM"

    goto/16 :goto_0

    .line 367
    :sswitch_3b
    const-string v0, "NO_ROUTE"

    goto/16 :goto_0

    .line 369
    :sswitch_3c
    const-string v0, "CHANNEL_UNACCEPT"

    goto/16 :goto_0

    .line 371
    :sswitch_3d
    const-string v0, "OP_DETERMINED"

    goto/16 :goto_0

    .line 373
    :sswitch_3e
    const-string v0, "CALL_REJECT"

    goto/16 :goto_0

    .line 375
    :sswitch_3f
    const-string v0, "PRE_EMPTION"

    goto/16 :goto_0

    .line 377
    :sswitch_40
    const-string v0, "NON_SELECTED"

    goto/16 :goto_0

    .line 379
    :sswitch_41
    const-string v0, "DESTINATION_OUT_OF"

    goto/16 :goto_0

    .line 381
    :sswitch_42
    const-string v0, "INVALID_NUM_FORMAT"

    goto/16 :goto_0

    .line 383
    :sswitch_43
    const-string v0, "FACILITY_REJECT"

    goto/16 :goto_0

    .line 385
    :sswitch_44
    const-string v0, "NET_OUT_OF"

    goto/16 :goto_0

    .line 387
    :sswitch_45
    const-string v0, "ACCESS_DISCARD"

    goto/16 :goto_0

    .line 389
    :sswitch_46
    const-string v0, "NO_RESOURCE"

    goto/16 :goto_0

    .line 391
    :sswitch_47
    const-string v0, "NO_SUBSCRIBED"

    goto/16 :goto_0

    .line 393
    :sswitch_48
    const-string v0, "BARRED_IN_CUG"

    goto/16 :goto_0

    .line 395
    :sswitch_49
    const-string v0, "BARRER_NOT_ALLOWED"

    goto/16 :goto_0

    .line 397
    :sswitch_4a
    const-string v0, "SERVICE_UNAVAILABLE"

    goto/16 :goto_0

    .line 399
    :sswitch_4b
    const-string v0, "BEARER_UNINPLEMENTED"

    goto/16 :goto_0

    .line 401
    :sswitch_4c
    const-string v0, "FACILITY_UNINPLEMENTED"

    goto/16 :goto_0

    .line 403
    :sswitch_4d
    const-string v0, "RESTRICTED_DIGITAL"

    goto/16 :goto_0

    .line 405
    :sswitch_4e
    const-string v0, "SERVICE_UNINPLEMENTED"

    goto/16 :goto_0

    .line 407
    :sswitch_4f
    const-string v0, "INVALID_TI"

    goto/16 :goto_0

    .line 409
    :sswitch_50
    const-string v0, "NOT_IN_CUG"

    goto/16 :goto_0

    .line 411
    :sswitch_51
    const-string v0, "INCOMPATIBLE_DEST"

    goto/16 :goto_0

    .line 413
    :sswitch_52
    const-string v0, "INVALID_TRANSIT_NET"

    goto/16 :goto_0

    .line 415
    :sswitch_53
    const-string v0, "INCORRECT_MSG"

    goto/16 :goto_0

    .line 417
    :sswitch_54
    const-string v0, "IE_ERROR"

    goto/16 :goto_0

    .line 419
    :sswitch_55
    const-string v0, "MSG_TYPE_NON_EXIST"

    goto/16 :goto_0

    .line 421
    :sswitch_56
    const-string v0, "MSG_NOT_COMP"

    goto/16 :goto_0

    .line 423
    :sswitch_57
    const-string v0, "IE_NON_EXIST"

    goto/16 :goto_0

    .line 425
    :sswitch_58
    const-string v0, "INVALID_IE_CONTENTS"

    goto/16 :goto_0

    .line 427
    :sswitch_59
    const-string v0, "MSG_NOT_COMP_CALL_STATE"

    goto/16 :goto_0

    .line 429
    :sswitch_5a
    const-string v0, "RECOVERY_TIMER_EXPIRY"

    goto/16 :goto_0

    .line 431
    :sswitch_5b
    const-string v0, "PROTOCOL_ERROR"

    goto/16 :goto_0

    .line 433
    :sswitch_5c
    const-string v0, "INTERWORKING"

    goto/16 :goto_0

    .line 435
    :sswitch_5d
    const-string v0, "NUMBER_CHANGED"

    goto/16 :goto_0

    .line 437
    :sswitch_5e
    const-string v0, "STATUS_ENQUIRY"

    goto/16 :goto_0

    .line 439
    :sswitch_5f
    const-string v0, "NORMAL_UNSPECIFIED"

    goto/16 :goto_0

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_29
        0x25 -> :sswitch_23
        0x26 -> :sswitch_24
        0x27 -> :sswitch_25
        0x28 -> :sswitch_26
        0x29 -> :sswitch_27
        0x2a -> :sswitch_28
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x64 -> :sswitch_2c
        0x65 -> :sswitch_2d
        0x66 -> :sswitch_2e
        0x67 -> :sswitch_2f
        0xc8 -> :sswitch_30
        0xc9 -> :sswitch_31
        0xca -> :sswitch_3a
        0xcb -> :sswitch_3b
        0xcc -> :sswitch_3c
        0xcd -> :sswitch_3d
        0xce -> :sswitch_32
        0xcf -> :sswitch_3e
        0xd0 -> :sswitch_5d
        0xd1 -> :sswitch_3f
        0xd2 -> :sswitch_40
        0xd3 -> :sswitch_41
        0xd4 -> :sswitch_42
        0xd5 -> :sswitch_43
        0xd6 -> :sswitch_5e
        0xd7 -> :sswitch_5f
        0xd8 -> :sswitch_33
        0xd9 -> :sswitch_44
        0xda -> :sswitch_34
        0xdb -> :sswitch_35
        0xdc -> :sswitch_45
        0xdd -> :sswitch_36
        0xde -> :sswitch_46
        0xdf -> :sswitch_37
        0xe0 -> :sswitch_47
        0xe1 -> :sswitch_48
        0xe2 -> :sswitch_49
        0xe3 -> :sswitch_38
        0xe4 -> :sswitch_4a
        0xe5 -> :sswitch_4b
        0xe6 -> :sswitch_39
        0xe7 -> :sswitch_4c
        0xe8 -> :sswitch_4d
        0xe9 -> :sswitch_4e
        0xea -> :sswitch_4f
        0xeb -> :sswitch_50
        0xec -> :sswitch_51
        0xed -> :sswitch_52
        0xee -> :sswitch_53
        0xef -> :sswitch_54
        0xf0 -> :sswitch_55
        0xf1 -> :sswitch_56
        0xf2 -> :sswitch_57
        0xf3 -> :sswitch_58
        0xf4 -> :sswitch_59
        0xf5 -> :sswitch_5a
        0xf6 -> :sswitch_5b
        0xf7 -> :sswitch_5c
    .end sparse-switch
.end method
