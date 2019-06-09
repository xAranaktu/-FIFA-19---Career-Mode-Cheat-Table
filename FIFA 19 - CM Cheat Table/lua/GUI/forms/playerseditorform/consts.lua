
-- Components description
-- id - unique id of the memory record in cheat table
-- modifier - value to be added to the value of the memory record
-- valFromFunc - this func will be called to fill the value of the component
-- components_inheriting_value - these components will have the same value as the parent
-- depends_on - components used to calc new value for the parent
-- group - player attribute group
-- events - component events
function get_components_description_player_edit()
    return {
        PlayerIDEdit = {id = CT_MEMORY_RECORDS['PLAYERID'], modifier = 0},
        TeamIDEdit = {id = 2769, modifier = 1},
        OverallEdit = {id = 102, modifier = 1},
        PotentialEdit = {id = 24, modifier = 1},
        AgeEdit = {
            id = CT_MEMORY_RECORDS['BIRTHDATE'],
            current_date_rec_id = CT_MEMORY_RECORDS['CURRDATE'], 
            modifier = 0,
            valFromFunc = birthdate_to_age,
            onApplyChanges = age_to_birthdate
        },
        FirstNameIDEdit = {id = 38, modifier = 0},
        LastNameIDEdit = {id = 59, modifier = 0},
        CommonNameIDEdit = {id = 111, modifier = 0},
        JerseyNameIDEdit = {id = 108, modifier = 0},
        NationalityCB = {id = 84, modifier = 0},
        ContractValidUntilEdit = {id = 30, modifier = 0},
        PlayerJoinTeamDateEdit = {
            id = 81,
            current_date_rec_id = 2908,
            modifier = 0,
            valFromFunc = days_to_date,
            onApplyChanges = date_to_days
        },
        JerseyNumberEdit = {id = 2766, modifier = 1},
        GKSaveTypeEdit = {id = 7, modifier = 0},
        GKKickStyleEdit = {id = 91, modifier = 0},
    
        PreferredPosition1CB = {id = 46, modifier = 0},
        PreferredPosition2CB = {id = 42, modifier = -1},
        PreferredPosition3CB = {id = 13, modifier = -1},
        PreferredPosition4CB = {id = 115, modifier = -1},
    
        AttackingWorkRateCB = {id = 67, modifier = 0},
        DefensiveWorkRateCB = {id = 83, modifier = 0},
        SkillMovesCB = {id = 64, modifier = 0},
        WeakFootCB = {id = 87, modifier = 1},
    
        IsRetiringCB = {id = 18, modifier = 0},
        InternationalReputationCB = {id = 60, modifier = 1},
        PreferredFootCB = {id = 85, modifier = 1},
        GenderCB = {id = 120, modifier = 0},
        
        AttackTrackBar = {
            valFromFunc = AttributesTrackBarVal,
            group = 'Attack',
            components_inheriting_value = {
                "AttackValueLabel",
            },
            depends_on = {
                "CrossingEdit", "FinishingEdit", "HeadingAccuracyEdit",
                "ShortPassingEdit", "VolleysEdit"
            },
            events = {
                OnChange = AttributesTrackBarOnChange,
            },
        },
        CrossingEdit = {
            id = 23, 
            modifier = 1,
            group = 'Attack',
            events = {
                OnChange = AttrOnChange,
            },
        },
        FinishingEdit = {
            id = 32, 
            modifier = 1,
            group = 'Attack',
            events = {
                OnChange = AttrOnChange,
            },
        },
        HeadingAccuracyEdit = {
            id = 71, 
            modifier = 1,
            group = 'Attack',
            events = {
                OnChange = AttrOnChange,
            },
        },
        ShortPassingEdit = {
            id = 62,
            modifier = 1,
            group = 'Attack',
            events = {
                OnChange = AttrOnChange,
            },
        },
        VolleysEdit = {
            id = 116,
            modifier = 1,
            group = 'Attack',
            events = {
                OnChange = AttrOnChange,
            },
        },
        
        DefendingTrackBar = {
            valFromFunc = AttributesTrackBarVal,
            group = 'Defending',
            components_inheriting_value = {
                "DefendingValueLabel",
            },
            depends_on = {
                "MarkingEdit", "StandingTackleEdit", "SlidingTackleEdit",
            },
            events = {
                OnChange = AttributesTrackBarOnChange,
            },
        },
        MarkingEdit = {
            id = 94, 
            modifier = 1,
            group = 'Defending',
            events = {
                OnChange = AttrOnChange,
            },
        },
        StandingTackleEdit = {
            id = 11, 
            modifier = 1,
            group = 'Defending',
            events = {
                OnChange = AttrOnChange,
            },
        },
        SlidingTackleEdit = {
            id = 34,
            modifier = 1,
            group = 'Defending',
            events = {
                OnChange = AttrOnChange,
            },
        },
        
        SkillTrackBar = {
            valFromFunc = AttributesTrackBarVal,
            group = 'Skill',
            components_inheriting_value = {
                "SkillValueLabel",
            },
            depends_on = {
                "DribblingEdit", "CurveEdit", "FreeKickAccuracyEdit",
                "LongPassingEdit", "BallControlEdit",
            },
            events = {
                OnChange = AttributesTrackBarOnChange,
            },
        },
        DribblingEdit = {
            id = 33, 
            modifier = 1,
            group = 'Skill',
            events = {
                OnChange = AttrOnChange,
            },
        },
        CurveEdit = {
            id = 3, 
            modifier = 1,
            group = 'Skill',
            events = {
                OnChange = AttrOnChange,
            },
        },
        FreeKickAccuracyEdit = {
            id = 63, 
            modifier = 1,
            group = 'Skill',
            events = {
                OnChange = AttrOnChange,
            },
        },
        LongPassingEdit = {
            id = 14,
            modifier = 1,
            group = 'Skill',
            events = {
                OnChange = AttrOnChange,
            },
        },
        BallControlEdit = {
            id = 47,
            modifier = 1,
            group = 'Skill',
            events = {
                OnChange = AttrOnChange,
            },
        },
        
        GoalkeeperTrackBar = {
            valFromFunc = AttributesTrackBarVal,
            group = 'Goalkeeper',
            components_inheriting_value = {
                "GoalkeeperValueLabel",
            },
            depends_on = {
                "GKDivingEdit", "GKHandlingEdit", "GKKickingEdit",
                "GKPositioningEdit", "GKReflexEdit",
            },
            events = {
                OnChange = AttributesTrackBarOnChange,
            },
        },
        GKDivingEdit = {
            id = 20, 
            modifier = 1,
            group = 'Goalkeeper',
            events = {
                OnChange = AttrOnChange,
            },
        },
        GKHandlingEdit = {
            id = 76,
            modifier = 1,
            group = 'Goalkeeper',
            events = {
                OnChange = AttrOnChange,
            },
        },
        GKKickingEdit = {
            id = 58,
            modifier = 1,
            group = 'Goalkeeper',
            events = {
                OnChange = AttrOnChange,
            },
        },
        GKPositioningEdit = {
            id = 96,
            modifier = 1,
            group = 'Goalkeeper',
            events = {
                OnChange = AttrOnChange,
            },
        },
        GKReflexEdit = {
            id = 25,
            modifier = 1,
            group = 'Goalkeeper',
            events = {
                OnChange = AttrOnChange,
            },
        },
        
        PowerTrackBar = {
            valFromFunc = AttributesTrackBarVal,
            group = 'Power',
            components_inheriting_value = {
                "PowerValueLabel",
            },
            depends_on = {
                "ShotPowerEdit", "JumpingEdit", "StaminaEdit",
                "StrengthEdit", "LongShotsEdit",
            },
            events = {
                OnChange = AttributesTrackBarOnChange,
            },
        },
        ShotPowerEdit = {
            id = 48,
            modifier = 1,
            group = 'Power',
            events = {
                OnChange = AttrOnChange,
            },
        },
        JumpingEdit = {
            id = 88,
            modifier = 1,
            group = 'Power',
            events = {
                OnChange = AttrOnChange,
            },
        },
        StaminaEdit = {
            id = 92,
            modifier = 1,
            group = 'Power',
            events = {
                OnChange = AttrOnChange,
            },
        },
        StrengthEdit = {
            id = 43,
            modifier = 1,
            group = 'Power',
            events = {
                OnChange = AttrOnChange,
            },
        },
        LongShotsEdit = {
            id = 19,
            modifier = 1,
            group = 'Power',
            events = {
                OnChange = AttrOnChange,
            },
        },
        
        MovementTrackBar = {
            valFromFunc = AttributesTrackBarVal,
            group = 'Movement',
            components_inheriting_value = {
                "MovementValueLabel",
            },
            depends_on = {
                "AccelerationEdit", "SprintSpeedEdit", "AgilityEdit",
                "ReactionsEdit", "BalanceEdit",
            },
            events = {
                OnChange = AttributesTrackBarOnChange,
            },
        },
        AccelerationEdit = {
            id = 70,
            modifier = 1,
            group = 'Movement',
            events = {
                OnChange = AttrOnChange,
            },
        },
        SprintSpeedEdit = {
            id = 39, 
            modifier = 1,
            group = 'Movement',
            events = {
                OnChange = AttrOnChange,
            },
        },
        AgilityEdit = {
            id = 5,
            modifier = 1,
            group = 'Movement',
            events = {
                OnChange = AttrOnChange,
            },
        },
        ReactionsEdit = {
            id = 27,
            modifier = 1,
            group = 'Movement',
            events = {
                OnChange = AttrOnChange,
            },
        },
        BalanceEdit = {
            id = 55,
            modifier = 1,
            group = 'Movement',
            events = {
                OnChange = AttrOnChange,
            },
        },
        
        MentalityTrackBar = {
            valFromFunc = AttributesTrackBarVal,
            group = 'Mentality',
            components_inheriting_value = {
                "MentalityValueLabel",
            },
            depends_on = {
                "AggressionEdit", "ComposureEdit", "InterceptionsEdit",
                "AttackPositioningEdit", "VisionEdit", "PenaltiesEdit",
            },
            events = {
                OnChange = AttributesTrackBarOnChange,
            },
        },
        AggressionEdit = {
            id = 69,
            modifier = 1,
            group = 'Mentality',
            events = {
                OnChange = AttrOnChange,
            },
        },
        ComposureEdit = {
            id = 28,
            modifier = 1,
            group = 'Mentality',
            events = {
                OnChange = AttrOnChange,
            },
        },
        InterceptionsEdit = {
            id = 21,
            modifier = 1,
            group = 'Mentality',
            events = {
                OnChange = AttrOnChange,
            },
        },
        AttackPositioningEdit = {
            id = 8,
            modifier = 1,
            group = 'Mentality',
            events = {
                OnChange = AttrOnChange,
            },
        },
        VisionEdit = {
            id = 29,
            modifier = 1,
            group = 'Mentality',
            events = {
                OnChange = AttrOnChange,
            },
        },
        PenaltiesEdit = {
            id = 15,
            modifier = 1,
            group = 'Mentality',
            events = {
                OnChange = AttrOnChange,
            },
        },
    
        LongThrowInCB = {id = 1809,},
        PowerFreeKickCB = {id = 2079,},
        InjuryProneCB = {id = 1812,},
        SolidPlayerCB = {id = 1813,},
        LeadershipCB = {id = 1822,},
        EarlyCrosserCB = {id = 1820,},
        FinesseShotCB = {id = 1819,},
        FlairCB = {id = 1818,},
        SpeedDribblerCB = {id = 1823,},
        GKLongthrowCB = {id = 1829,},
        PowerheaderCB = {id = 1828,},
        GiantthrowinCB = {id = 1832,},
        OutsitefootshotCB = {id = 1833,},
        SwervePassCB = {id = 1835,},
        SecondWindCB = {id = 1834,},
        SkilledDribblingCB = {id = 1299,},
        FlairPassesCB = {id = 1838,},
        ChippedPenaltyCB = {id = 1842,},
        BicycleKicksCB = {id = 1841,},
        GKFlatKickCB = {id = 1845,},
        OneClubPlayerCB = {id = 1846,},
        TeamPlayerCB = {id = 1847,},
        RushesOutOfGoalCB = {id = 1850,},
        CautiousWithCrossesCB = {id = 1856,},
        ComesForCrossessCB = {id = 1855,},
        SaveswithFeetCB = {id = 1960,},
        SetPlaySpecialistCB = {id = 1959,},
        InflexibilityCB = {id = 1298,},
        DiverCB = {id = 1811,},
        AvoidsusingweakerfootCB = {id = 1814,},
        TriestobeatdefensivelineCB = {id = 1816,},
        SelfishCB = {id = 1817,},
        ArguesWithRefereeCB = {id = 1821,},
        GKupforcornersCB = {id = 1831,},
        PuncherCB = {id = 1830,},
        GKOneonOneCB = {id = 1827,},
        FansfavouriteCB = {id = 1873,},
        AcrobaticClearanceCB = {id = 1836,},
        FancyFlicksCB = {id = 1844,},
        StutterPenaltyCB = {id = 1843,},
        DivingHeaderCB = {id = 1840,},
        DrivenPassCB = {id = 1839,},
        BacksBacksIntoPlayerCB = {id = 1851,},
        HiddenSetPlaySpecialistCB = {id = 1852,},
        TakesFinesseFreeKicksCB = {id = 1853,},
        TargetForwardCB = {id = 1857,},
        BlamesTeammatesCB = {id = 1961,},
        TornadoSkillmoveCB = {id = 2078,},
        DivesIntoTacklesCB = {id = 1815,},
        LongPasserCB = {id = 1825,},
        LongShotTakerCB = {id = 1824,},
        PlaymakerCB = {id = 1826,},
        ChipShotCB = {id = 1848,},
        TechnicalDribblerCB = {id = 1849,},
    
        HeightEdit = {id = 40, modifier = 130},
        WeightEdit = {id = 51, modifier = 30},
        BodyTypeCB = {id = 112, modifier = 1},
        HeadTypeCodeCB = {
            id = CT_MEMORY_RECORDS['HEADTYPECODE'],
            modifier = 0,
            already_filled = true,
            events = {
                OnChange = HeadTypeCodeCBOnChange,
                OnDropDown = CommonCBOnDropDown,
                OnMouseEnter = CommonCBOnMouseEnter,
                OnMouseLeave = CommonCBOnMouseLeave,
            },
        },
        HeadTypeGroupCB = {
            valFromFunc = FillHeadTypeCB,
            events = {
                OnChange = HeadTypeGroupCBOnChange,
                OnDropDown = CommonCBOnDropDown,
                OnMouseEnter = CommonCBOnMouseEnter,
                OnMouseLeave = CommonCBOnMouseLeave,
            },
        },
        HairTypeEdit = {id = 10, modifier = 0},
        HairStyleEdit = {id = 110, modifier = 0},
        HairColorCB = {
            id = CT_MEMORY_RECORDS['HAIRCOLORCODE'], 
            modifier = 0,
            events = {
                OnChange = HeadTypeCodeCBOnChange,
                OnDropDown = CommonCBOnDropDown,
                OnMouseEnter = CommonCBOnMouseEnter,
                OnMouseLeave = CommonCBOnMouseLeave,
            },
        },
        FacialHairTypeEdit = {id = 2, modifier = 0},
        FacialHairColorEdit = {id = 118, modifier = 0},
        SideburnsEdit = {id = 86, modifier = 0},
        EyebrowEdit = {id = 73, modifier = 0},
        EyeColorEdit = {id = 77, modifier = 0},
        SkinTypeEdit = {id = 89, modifier = 0},
        SkinColorCB = {id = 100, modifier = 1},
        HasHighQualityHeadCB = {id = 52, modifier = 0},
        HeadAssetIDEdit = {id = 57, modifier = 0},
        HeadVariationEdit = {id = 97, modifier = 0},
        HeadClassCodeEdit = {id = 82, modifier = 0},
        TattooLeftArmEdit = {id = 9, modifier = 0},
        TattooRightArmEdit = {id = 54, modifier = 0},
        TattooLeftNeckEdit = {id = 103, modifier = 0},
        TattooRightNeckEdit = {id = 90, modifier = 0},
        TattooBackNeckEdit = {id = 12, modifier = 0},
        JerseyStyleEdit = {id = 4, modifier = 0},
        JerseyFitEdit = {id = 105, modifier = 0},
        jerseysleevelengthEdit = {id = 78, modifier = 0},
        hasseasonaljerseyEdit = {id = 41, modifier = 0},
        shortstyleEdit = {id = 101, modifier = 0},
        socklengthEdit = {id = 50, modifier = 0},
    
        GKGloveTypeEdit = {id = 53, modifier = 0},
        shoetypeEdit = {id = 44, modifier = 0},
        shoedesignEdit = {id = 107, modifier = 0},
        shoecolorEdit1 = {id = 109, modifier = 0},
        shoecolorEdit2 = {id = 22, modifier = 0},
        AccessoryEdit1 = {id = 80, modifier = 0},
        AccessoryColourEdit1 = {id = 36, modifier = 0},
        AccessoryEdit2 = {id = 106, modifier = 0},
        AccessoryColourEdit2 = {id = 117, modifier = 0},
        AccessoryEdit3 = {id = 35, modifier = 0},
        AccessoryColourEdit3 = {id = 79, modifier = 0},
        AccessoryEdit4 = {id = 6, modifier = 0},
        AccessoryColourEdit4 = {id = 95, modifier = 0},
    
        runningcodeEdit1 = {id = 114, modifier = 0},
        runningcodeEdit2 = {id = 74, modifier = 0},
        FinishingCodeEdit1 = {id = 26, modifier = 0},
        FinishingCodeEdit2 = {id = 68, modifier = 0},
        AnimFreeKickStartPosEdit = {id = 16, modifier = 0},
        AnimPenaltiesStartPosEdit = {id = 113, modifier = 0},
        AnimPenaltiesKickStyleEdit = {id = 17, modifier = 0},
        AnimPenaltiesMotionStyleEdit = {id = 61, modifier = 0},
        AnimPenaltiesApproachEdit = {id = 31, modifier = 0},
        FacePoserPresetEdit = {id = 65, modifier = 0},
        EmotionEdit = {id = 104, modifier = 0},
        SkillMoveslikelihoodEdit = {id = 98, modifier = 0},
        ModifierEdit = {id = 75, modifier = -5},
        IsCustomizedEdit = {id = 72, modifier = 0},
        UserCanEditNameEdit = {id = 66, modifier = 0},
    }
end


HEAD_TYPE_GROUPS = {
    African_South_European = {
        5000,
        5001,
        5002,
        5003,
        10500,
        10501,
        10502,
    },
    African = {
        1000,
        1001,
        1002,
        1003,
        1004,
        1005,
        1006,
        1007,
        1008,
        1009,
        1010,
        1011,
        1012,
        1013,
        1014,
        1015,
        1016,
        1017,
        1018,
        1019,
        1020,
        1021,
        1022,
        1023,
        1024,
        1025,
        1026,
        1027,
        6500,
        6501,
        6502,
    },
    Eastern_European = {
        2000,
        2001,
        2002,
        2003,
        2004,
        2005,
        2006,
        2007,
        2008,
        2009,
        2010,
        2011,
        2012,
        2013,
        2014,
        2015,
        2016,
        2017,
        2019,
        2020,
        2021,
        2022,
        2023,
        2024,
        2025,
        2026,
        2027,
        2028,
        2029,
        2030,
        7500,
        7501,
        7502,
    },
    South_European = {
        3500,
        3501,
        3502,
        3503,
        3504,
        3505,
        9000,
        9001,
        9002,
    },
    Arabic = {
        2500,
        2501,
        2502,
        2503,
        2504,
        2505,
        2506,
        2507,
        2508,
        2509,
        2510,
        2511,
        2512,
        2513,
        2514,
        2515,
        2516,
        2517,
        2518,
        8000,
        8001,
        8002,
    },
    Asian = {
        500,
        501,
        502,
        503,
        504,
        505,
        506,
        507,
        508,
        509,
        510,
        511,
        512,
        513,
        514,
        515,
        516,
        517,
        518,
        519,
        520,
        521,
        522,
        523,
        524,
        525,
        526,
        527,
        528,
        529,
        530,
        531,
        532,
        533,
        534,
        535,
        536,
        537,
        538,
        539,
        540,
        541,
        542,
        543,
        544,
        545,
        546,
        547,
        548,
        549,
        550,
        551,
        552,
        553,
        554,
        555,
        556,
        557,
        558,
        559,
        560,
        561,
        562,
        6000,
        6001,
        6002,
        6003,
        6004,
        6005,
        6006,
        6007,
        6008,
        6009,
    },
    Caucasian = {
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
        25,
        5500,
        5501,
        5502,
        5503,
        5504,
        5505,
    },
    Latin = {
        1500,
        1501,
        1502,
        1503,
        1504,
        1505,
        1506,
        1507,
        1508,
        1509,
        1510,
        1511,
        1512,
        1513,
        1514,
        1515,
        1516,
        1517,
        1518,
        1519,
        1520,
        1521,
        1522,
        1523,
        1524,
        1525,
        1526,
        1527,
        1528,
        7000,
        7001,
        7002,
        7003,
        7004,
        7005,
        7006,
        7007,
        7008,
        7009,
        7010,
        7011,
    },
    African_South = {
        3000,
        3001,
        3002,
        3003,
        3004,
        3005,
        8500,
        8501,
        8502,
    },
    North_European = {
        4000,
        4001,
        4002,
        4003,
        9500,
        9501,
        9502,
    },
    African_North = {
        4500,
        4501,
        4502,
        4525,
        10000,
        10001,
        10002,
    }
}