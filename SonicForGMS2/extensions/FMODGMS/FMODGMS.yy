{
    "id": "0a92d1a4-13ad-4631-aed5-87ac6a00aa2b",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "FMODGMS",
    "IncludedResources": [
        "Scripts\\FMODGMS\\FMODGMS_Util_BeatsToSamples",
        "Scripts\\FMODGMS\\FMODGMS_Util_SecondsToSamples",
        "Scripts\\FMODGMS\\FMODGMS_Util_SamplesToSeconds",
        "Scripts\\FMODGMS\\FMODGMS_Util_SamplesToBeats",
        "Scripts\\FMODGMS\\FMODGMS_Snd_TypeToString",
        "Scripts\\FMODGMS\\FMODGMS_Snd_TagDataTypeToString",
        "Scripts\\FMODGMS\\FMODGMS_Snd_TagTypeToString",
        "Scripts\\FMODGMS\\ReadMe_EffectParameters",
        "Scripts\\FMODGMS\\FMODGMS_Effect_TypeToString"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 202375362,
    "date": "2019-01-02 09:11:51",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "0e317b85-78ff-4100-8493-2762985db251",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                {
                    "id": "d62f721f-d623-40e8-9e80-5b427948aa0a",
                    "modelName": "GMProxyFile",
                    "mvc": "1.0",
                    "TargetMask": 2,
                    "proxyName": "libFMODGMS.dylib"
                },
                {
                    "id": "10fecc73-135c-4d9e-9e31-905390c8282e",
                    "modelName": "GMProxyFile",
                    "mvc": "1.0",
                    "TargetMask": 134217856,
                    "proxyName": "libfmodgms.so"
                }
            ],
            "constants": [
                {
                    "id": "129f991b-055f-4f32-b579-d70b16510456",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_LOOPPOINT_START",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "f5984d13-2ebe-42fd-8e3b-8f26b4cd1926",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_LOOPPOINT_END",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "c3f42b77-0ffb-4314-8ac3-cf4e35986c5f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_UNKNOWN",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "c7ea52d9-73c6-40f3-8b7e-2e0fc046a2d6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_AIFF",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "13316276-1af5-46f8-a381-ac03a967644d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_ASF",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "96493e98-ecbf-42c0-82ad-6993cfd56410",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_DLS",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "327c65c9-059b-489d-b933-5d43cf66da83",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_FLAC",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "50f0057d-c1cb-413a-bee2-bed1386f490f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_FSB",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "ca488801-d7ab-4384-ba5e-2a638f913ae1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_IT",
                    "hidden": false,
                    "value": "6"
                },
                {
                    "id": "f5c2b4f9-c5a6-48ec-93e9-d97dd7570f2c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_MIDI",
                    "hidden": false,
                    "value": "7"
                },
                {
                    "id": "950aeb91-f41c-4707-9ab2-87d7efea5cb4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_MOD",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "6a6eadb6-076c-42a3-8684-d9f052e07f5c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_MPEG",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "161f74bb-7335-43bb-93bd-3e586eb82a47",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_OGGVORBIS",
                    "hidden": false,
                    "value": "10"
                },
                {
                    "id": "a5d5f158-a40b-4b57-aa1c-f1e92f7646d8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_PLAYLIST",
                    "hidden": false,
                    "value": "11"
                },
                {
                    "id": "181abede-6cbf-47b5-85cc-a5e8b82c48e3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_RAW",
                    "hidden": false,
                    "value": "12"
                },
                {
                    "id": "1f7c6583-0023-4c61-88ef-53120a8ff633",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_S3M",
                    "hidden": false,
                    "value": "13"
                },
                {
                    "id": "04f20184-d392-4a0e-99a0-576ab9163df4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_USER",
                    "hidden": false,
                    "value": "14"
                },
                {
                    "id": "83757098-8756-455e-90f8-5f452525326d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_WAV",
                    "hidden": false,
                    "value": "15"
                },
                {
                    "id": "8b5acf78-96f3-415e-9333-a46647c375e4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_XM",
                    "hidden": false,
                    "value": "16"
                },
                {
                    "id": "e5c52437-d58f-4b5a-bc97-9a57d43fd28d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_XMA",
                    "hidden": false,
                    "value": "17"
                },
                {
                    "id": "23896e75-f07b-4578-912f-c116cb5c556e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_AUDIOQUEUE",
                    "hidden": false,
                    "value": "18"
                },
                {
                    "id": "88e08d1d-d1cf-428a-9f36-e87198cae2de",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_AT9",
                    "hidden": false,
                    "value": "19"
                },
                {
                    "id": "d0be7efd-ac74-4c8f-93b5-1d644e13ea0c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_VORBIS",
                    "hidden": false,
                    "value": "20"
                },
                {
                    "id": "9c334401-6476-42e8-a102-3080cc4a3cba",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_MEDIA_FOUNDATION",
                    "hidden": false,
                    "value": "21"
                },
                {
                    "id": "d1c693c5-2bdc-4411-907f-102765139eea",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_MEDIA_CODEC",
                    "hidden": false,
                    "value": "22"
                },
                {
                    "id": "15ad6e58-ce82-4af1-9180-412ccab47767",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_FADPCM",
                    "hidden": false,
                    "value": "23"
                },
                {
                    "id": "7f18d555-3558-45f6-824b-9178a7eb1331",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_SOUND_TYPE_MAX",
                    "hidden": false,
                    "value": "24"
                },
                {
                    "id": "01bdf3bd-6d8a-4124-abb9-b6e1cec5b78a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGDATATYPE_BINARY",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "c4ccb81c-2679-4179-8185-281c05df337d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGDATATYPE_INT",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "2493be2b-0ae8-486b-b4a0-16d11080d4f9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGDATATYPE_FLOAT",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "4c8e0019-8f37-48e4-914a-86cae12b40cf",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGDATATYPE_STRING",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "6d92eb7c-dc4b-43de-b166-c16c088dbf91",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGDATATYPE_STRING_UTF16",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "e7d2434a-e621-4158-a51a-b2f060fe3e98",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGDATATYPE_STRING_UTF16BE",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "641a2ca8-baa3-44be-afeb-8a93436483db",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGDATATYPE_STRING_UTF8",
                    "hidden": false,
                    "value": "6"
                },
                {
                    "id": "8efc15f3-0a92-477e-8528-5720cbe61765",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGDATATYPE_CDTOC",
                    "hidden": false,
                    "value": "7"
                },
                {
                    "id": "ed4db56b-3ef8-4f40-943b-76ab43048b96",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGDATATYPE_MAX",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "3ffd9c64-6745-4e36-be8d-55c67c4bc817",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGTYPE_ID3V1",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "f89b8ab6-0684-4dba-aea1-bcac856bde81",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGTYPE_ID3V2",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "ea7d2d76-6dc4-4d8d-a1f5-b45b92240616",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGTYPE_VORBISCOMMENT",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "8b9c2d3b-2302-4ebf-8a93-b5d917ffc6a4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGTYPE_SHOUTCAST",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "d3315307-b562-4781-842e-38696e307f30",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGTYPE_ICECAST",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "c63b89a4-9686-47e0-9cf7-be32dca8c131",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGTYPE_ASF",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "84b41239-bc7d-4dc5-a7f0-c4b169b37710",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGTYPE_MIDI",
                    "hidden": false,
                    "value": "6"
                },
                {
                    "id": "b00cd4cd-5ce4-412d-9ae5-20625fabdf97",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGTYPE_PLAYLIST",
                    "hidden": false,
                    "value": "7"
                },
                {
                    "id": "edc737b8-b598-44db-81fb-2ea71d7405ac",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGTYPE_FMOD",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "8f0f6f74-d96e-4d19-a9d7-07ed861cd13c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGTYPE_USER",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "892a6969-98dc-4c32-84d1-ad0bfdc3a2f4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_TAGTYPE_MAX",
                    "hidden": false,
                    "value": "10"
                },
                {
                    "id": "aa40ac28-73ac-481c-8a2b-cf06d0b5d016",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_LOOPMODE_NONE",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "cfab2f6c-e2ca-46d2-9ea1-f9974e3f99e0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_LOOPMODE_NORMAL",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "dca12b8b-4810-46dc-89be-49731a5c8e2f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_LOOPMODE_BIDI",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "53eb3e08-8156-493a-baf3-5040dcb74e00",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_EFFECT_LOWPASS",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "0edec8fd-4910-4d43-8271-323c90ae6ba2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_EFFECT_HIGHPASS",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "b998fc5d-aed8-450e-b73a-9873fc3582b1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_EFFECT_ECHO",
                    "hidden": false,
                    "value": "6"
                },
                {
                    "id": "456e8160-8bc3-4004-a668-0783faa04379",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_EFFECT_FLANGE",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "2d6012f8-eb29-42ea-88ef-ddeca4ed9f20",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_EFFECT_DISTORTION",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "d6dc33f7-8623-4d9c-956d-59530954fe19",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_EFFECT_CHORUS",
                    "hidden": false,
                    "value": "14"
                },
                {
                    "id": "e58fbc62-0754-4fe8-9ccf-028e663ebd7a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_EFFECT_REVERB",
                    "hidden": false,
                    "value": "19"
                },
                {
                    "id": "77a2ce2b-c10b-44ba-92c3-ac357a01ac91",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_EFFECT_TREMOLO",
                    "hidden": false,
                    "value": "22"
                },
                {
                    "id": "76c0a0af-4650-425e-90e0-73e8ed66286d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_EFFECT_PITCHSHIFT",
                    "hidden": false,
                    "value": "13"
                },
                {
                    "id": "1fbe530f-9dd6-4653-b846-6fb465f5ce95",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_AUTODETECT",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "41ae29e4-3c86-4069-a422-fa7075db2e25",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_UNKNOWN",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "ce521078-d644-46a6-b5dd-42d126295905",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_NOSOUND",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "d7704383-cab1-40b7-a4c2-2f9e39b0574d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_WAVWRITER",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "82d92570-ddb8-4938-ad17-e26f25da5b51",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_NOSOUND_NRT",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "dce414e2-6f4e-44ed-bc5e-591080e66863",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_WAVWRITER_NRT",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "aa7247af-7528-4899-a837-54c729898aa3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_DSOUND",
                    "hidden": false,
                    "value": "6"
                },
                {
                    "id": "ad2d17a0-2518-40d7-89bb-ca3a43494cf5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_WINMM",
                    "hidden": false,
                    "value": "7"
                },
                {
                    "id": "16a492be-bf62-443a-b6f3-8a9d5df03944",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_WASAPI",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "7f9418b0-9034-4d65-b7c4-c6dc19f33944",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_ASIO",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "b501ca68-9256-41ab-bf16-4f9d58822906",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_PULSEAUDIO",
                    "hidden": false,
                    "value": "10"
                },
                {
                    "id": "ad9d4d26-f2e3-4b89-ad74-a22e3ac33d2c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_ALSA",
                    "hidden": false,
                    "value": "11"
                },
                {
                    "id": "0b45994e-012d-4333-ab0b-31de733ccd90",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_COREAUDIO",
                    "hidden": false,
                    "value": "12"
                },
                {
                    "id": "e1104b9f-97a0-4905-bc37-005045b93ac3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_XAUDIO",
                    "hidden": false,
                    "value": "13"
                },
                {
                    "id": "32368b1b-c37d-4e84-b12c-633a87044314",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_PS3",
                    "hidden": false,
                    "value": "14"
                },
                {
                    "id": "72b5dc8c-624a-4567-a039-e230b861aace",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_AUDIOTRACK",
                    "hidden": false,
                    "value": "15"
                },
                {
                    "id": "7de0d870-cf27-4e24-9952-e9efdf1f6b19",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_OPENSL",
                    "hidden": false,
                    "value": "16"
                },
                {
                    "id": "916b7147-31d1-44bf-b9c7-c39e5a1e3cd2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_WIIU",
                    "hidden": false,
                    "value": "17"
                },
                {
                    "id": "426e4d23-a285-4d87-b7d4-d4c9082aebe6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_AUDIOOUT",
                    "hidden": false,
                    "value": "18"
                },
                {
                    "id": "bcc893ae-f8d9-4847-9b9a-153a34f26285",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_AUDIO3D",
                    "hidden": false,
                    "value": "19"
                },
                {
                    "id": "1e002599-5689-453d-8789-f97e724c141b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_ATMOS",
                    "hidden": false,
                    "value": "20"
                },
                {
                    "id": "6f43dfcc-a082-4b0d-ba10-21a94cd10415",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "FMODGMS_OUTPUTTYPE_MAX",
                    "hidden": false,
                    "value": "21"
                }
            ],
            "copyToTargets": 202375362,
            "filename": "FMODGMS.dll",
            "final": "",
            "functions": [
                {
                    "id": "9222fb52-1e8f-4d43-904f-dabdb90d8d66",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Sys_Create",
                    "help": "FMODGMS_Sys_Create()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Create",
                    "returnType": 2
                },
                {
                    "id": "33d586df-a01b-483f-ae6e-6e77bc1cc32c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Sys_Initialize",
                    "help": "FMODGMS_Sys_Initialize(maxChan)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Initialize",
                    "returnType": 2
                },
                {
                    "id": "797eecd4-a0f6-45f1-bba7-539cebc649a9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Sys_Close",
                    "help": "FMODGMS_Sys_Close()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Close",
                    "returnType": 2
                },
                {
                    "id": "09b70bc3-d5e4-4648-974f-b3091622ae0f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "FMODGMS_Snd_LoadSound",
                    "help": "FMODGMS_Snd_LoadSound(filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_LoadSound",
                    "returnType": 2
                },
                {
                    "id": "33811814-32f9-41e3-a0cf-74bd5cfac7df",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "FMODGMS_Snd_LoadStream",
                    "help": "FMODGMS_Snd_LoadStream(filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_LoadStream",
                    "returnType": 2
                },
                {
                    "id": "9195a6ec-f1d4-43d3-a5f4-4ba3d47a889d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Unload",
                    "help": "FMODGMS_Snd_Unload(index)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Unload",
                    "returnType": 2
                },
                {
                    "id": "29bf7c5e-2504-4f73-bb0d-bd8ae8232ab5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Snd_PlaySound",
                    "help": "FMODGMS_Snd_PlaySound(index, channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_PlaySound",
                    "returnType": 2
                },
                {
                    "id": "f594e7ad-7f60-419a-8087-17a5ba8bf7aa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Set_LoopMode",
                    "help": "FMODGMS_Snd_Set_LoopMode(index, mode, times)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Set_LoopMode",
                    "returnType": 2
                },
                {
                    "id": "7d514fa3-0c6e-465e-92d6-0ff3d2d20f9f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Set_LoopPoints",
                    "help": "FMODGMS_Snd_Set_LoopPoints(index, startTimeInSamples, endTimeInSamples)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Set_LoopPoints",
                    "returnType": 2
                },
                {
                    "id": "367d5e67-e046-44e7-9ea7-86dc46149ccb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Get_LoopPoints",
                    "help": "FMODGMS_Snd_Get_LoopPoints(index, whichOne)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_LoopPoints",
                    "returnType": 2
                },
                {
                    "id": "c0f901c1-1fe7-4d84-9095-1d06e4cf3810",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Chan_CreateChannel",
                    "help": "FMODGMS_Chan_CreateChannel()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_CreateChannel",
                    "returnType": 2
                },
                {
                    "id": "61d00a82-adad-4fc2-984c-1583cfb0010b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_RemoveChannel",
                    "help": "FMODGMS_Chan_RemoveChannel(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_RemoveChannel",
                    "returnType": 2
                },
                {
                    "id": "d4059eba-dfec-4307-a472-10f268afb57d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Util_GetErrorMessage",
                    "help": "FMODGMS_Util_GetErrorMessage()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Util_GetErrorMessage",
                    "returnType": 1
                },
                {
                    "id": "437b3393-afaa-483c-8f0c-50b5fa0d7f39",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Sys_Get_CPUUsage",
                    "help": "FMODGMS_Sys_Get_CPUUsage()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Get_CPUUsage",
                    "returnType": 2
                },
                {
                    "id": "60d286bf-8745-4d3b-878f-4d30f206b990",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Sys_Get_MaxSoundIndex",
                    "help": "FMODGMS_Sys_Get_MaxSoundIndex()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Get_MaxSoundIndex",
                    "returnType": 2
                },
                {
                    "id": "e8e442f9-b437-408e-9acd-1fdd4148b0ac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Sys_Get_MaxChannelIndex",
                    "help": "FMODGMS_Sys_Get_MaxChannelIndex()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Get_MaxChannelIndex",
                    "returnType": 2
                },
                {
                    "id": "101e9bc0-2333-4033-82d5-77aba941c7f8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Get_NumTags",
                    "help": "FMODGMS_Snd_Get_NumTags(index)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_NumTags",
                    "returnType": 2
                },
                {
                    "id": "ec67529f-6e1b-47b5-8324-e43ce8e23b27",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Get_TagName",
                    "help": "FMODGMS_Snd_Get_TagName(soundIndex, tagIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_TagName",
                    "returnType": 1
                },
                {
                    "id": "8c5b2264-77a5-4513-a443-737100f4ac0a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_StopChannel",
                    "help": "FMODGMS_Chan_StopChannel(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_StopChannel",
                    "returnType": 2
                },
                {
                    "id": "f6e03f98-c7a1-4631-ae4a-22d8d93714ac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Get_ModOrder",
                    "help": "FMODGMS_Chan_Get_ModOrder(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Get_ModOrder",
                    "returnType": 2
                },
                {
                    "id": "e7817ae3-f422-44a1-aac0-36e047b134dd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Get_ModPattern",
                    "help": "FMODGMS_Chan_Get_ModPattern(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Get_ModPattern",
                    "returnType": 2
                },
                {
                    "id": "a4aef3a4-755e-472a-84d0-8008ab309eaf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Get_ModRow",
                    "help": "FMODGMS_Chan_Get_ModRow(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Get_ModRow",
                    "returnType": 2
                },
                {
                    "id": "7488983f-952c-4eb4-ae44-877feb7388c7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Get_Type",
                    "help": "FMODGMS_Snd_Get_Type(index)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_Type",
                    "returnType": 2
                },
                {
                    "id": "e23e8bb8-0303-4644-9c9a-6bb62fa2cb8d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Get_Position",
                    "help": "FMODGMS_Chan_Get_Position(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Get_Position",
                    "returnType": 2
                },
                {
                    "id": "3f025dbe-7cfa-4eda-a5d5-5c254472f2be",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_PauseChannel",
                    "help": "FMODGMS_Chan_PauseChannel(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_PauseChannel",
                    "returnType": 2
                },
                {
                    "id": "2bf0c183-6437-4f5c-bcc5-f45c1aaf3338",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_ResumeChannel",
                    "help": "FMODGMS_Chan_ResumeChannel(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_ResumeChannel",
                    "returnType": 2
                },
                {
                    "id": "27ff2475-5833-4967-a289-1cb4bf4acde0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Sys_Update",
                    "help": "FMODGMS_Sys_Update()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Update",
                    "returnType": 2
                },
                {
                    "id": "2e7328b8-433e-4bbd-bacc-c064bbfdcc28",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Set_Position",
                    "help": "FMODGMS_Chan_Set_Position(channel,pos)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Set_Position",
                    "returnType": 2
                },
                {
                    "id": "c1a79f35-12c3-4b8c-b643-68318b4cb97b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Set_Volume",
                    "help": "FMODGMS_Chan_Set_Volume(channel,vol)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Set_Volume",
                    "returnType": 2
                },
                {
                    "id": "3b6cffad-3934-4435-9aed-abe72eadc4ac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Set_Frequency",
                    "help": "FMODGMS_Chan_Set_Frequency(channel,freq)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Set_Frequency",
                    "returnType": 2
                },
                {
                    "id": "25e9d041-8db9-4212-bf1b-3b7cd0236cb4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Set_Pitch",
                    "help": "FMODGMS_Chan_Set_Pitch(channel,pitch)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Set_Pitch",
                    "returnType": 2
                },
                {
                    "id": "3cc0bb3e-f631-43de-be5c-03ac8774926f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Set_ModOrder",
                    "help": "FMODGMS_Chan_Set_ModOrder(channel,ord)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Set_ModOrder",
                    "returnType": 2
                },
                {
                    "id": "4aadbc65-3881-43aa-bd85-080b0c398e5e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Set_ModRow",
                    "help": "FMODGMS_Chan_Set_ModRow(channel,row)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Set_ModRow",
                    "returnType": 2
                },
                {
                    "id": "e06f2b1a-dcb7-4047-8fdf-2f6a01faf30a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Get_Volume",
                    "help": "FMODGMS_Chan_Get_Volume(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Get_Volume",
                    "returnType": 2
                },
                {
                    "id": "725761c0-0795-40b2-9da7-b51f854f7772",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Get_Frequency",
                    "help": "FMODGMS_Chan_Get_Frequency(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Get_Frequency",
                    "returnType": 2
                },
                {
                    "id": "51c27a87-68b8-47a5-bd43-121ce90d3124",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Get_Pitch",
                    "help": "FMODGMS_Chan_Get_Pitch(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Get_Pitch",
                    "returnType": 2
                },
                {
                    "id": "1084c0d0-a24e-4fba-892d-302bf55ce472",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Sys_Set_SoftwareFormat",
                    "help": "FMODGMS_Sys_Set_SoftwareFormat(sampleRate, speakerMode)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Set_SoftwareFormat",
                    "returnType": 2
                },
                {
                    "id": "ade89c5f-3af5-4727-b79e-4b8f45bd476a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Sys_Get_SampleRate",
                    "help": "FMODGMS_Sys_Get_SampleRate()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Get_SampleRate",
                    "returnType": 2
                },
                {
                    "id": "3ecb0ed7-61a2-4998-b6f6-58f77c4de7a8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_FFT_Get_DominantFrequency",
                    "help": "FMODGMS_FFT_Get_DominantFrequency()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_FFT_Get_DominantFrequency",
                    "returnType": 2
                },
                {
                    "id": "d695b1c3-bb1d-4bfc-8580-97af6d5ac810",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_FFT_Get_BinValue",
                    "help": "FMODGMS_FFT_Get_BinValue(index)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_FFT_Get_BinValue",
                    "returnType": 2
                },
                {
                    "id": "df0891c1-c3b7-4d0d-968f-5d5fcf3dcbd9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_FFT_Get_NumBins",
                    "help": "FMODGMS_FFT_Get_NumBins()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_FFT_Get_NumBins",
                    "returnType": 2
                },
                {
                    "id": "ff70ba43-0b90-49af-a556-48059dbb4def",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_FFT_Set_WindowSize",
                    "help": "FMODGMS_FFT_Set_WindowSize(size)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_FFT_Set_WindowSize",
                    "returnType": 2
                },
                {
                    "id": "ab4daa9d-efdb-4222-94e4-8a104dd594ee",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Get_TagTypeFromIndex",
                    "help": "FMODGMS_Snd_Get_TagTypeFromIndex(soundIndex,tagIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_TagTypeFromIndex",
                    "returnType": 2
                },
                {
                    "id": "9b1f5ba4-6404-468e-94f4-cbbbbf9e0585",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Get_TagDataTypeFromIndex",
                    "help": "FMODGMS_Snd_Get_TagDataTypeFromIndex(soundIndex,tagIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_TagDataTypeFromIndex",
                    "returnType": 2
                },
                {
                    "id": "5116ac78-9cfa-43a2-a201-a6393174fffa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Get_TagRealFromIndex",
                    "help": "FMODGMS_Snd_Get_TagRealFromIndex(soundIndex,tagIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_TagRealFromIndex",
                    "returnType": 2
                },
                {
                    "id": "2635ccc3-f92a-4764-b855-bb845df7d7ce",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Get_TagStringFromIndex",
                    "help": "FMODGMS_Snd_Get_TagStringFromIndex(soundIndex,tagIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_TagStringFromIndex",
                    "returnType": 1
                },
                {
                    "id": "9b58a0a9-a2bf-45ff-83b3-9c4bd7b3935e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "FMODGMS_Snd_Get_TagTypeFromName",
                    "help": "FMODGMS_Snd_Get_TagTypeFromName(soundIndex,tagName)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_TagTypeFromName",
                    "returnType": 2
                },
                {
                    "id": "6b15c077-1b49-472c-96b4-a6558af92d2e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "FMODGMS_Snd_Get_TagDataTypeFromName",
                    "help": "FMODGMS_Snd_Get_TagDataTypeFromName(soundIndex,tagName)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_TagDataTypeFromName",
                    "returnType": 2
                },
                {
                    "id": "15301f54-6b0d-465a-91d0-2f4b9d625715",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "FMODGMS_Snd_Get_TagRealFromName",
                    "help": "FMODGMS_Snd_Get_TagRealFromName(soundIndex,tagName)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_TagRealFromName",
                    "returnType": 2
                },
                {
                    "id": "6ac62da7-8604-49e6-8630-30a956af44c2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "FMODGMS_Snd_Get_TagStringFromName",
                    "help": "FMODGMS_Snd_Get_TagStringFromName(soundIndex,tagName)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_TagStringFromName",
                    "returnType": 1
                },
                {
                    "id": "df4dafbb-3ae0-480c-bb42-4c4cb6d52706",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Set_ModChannelVolume",
                    "help": "FMODGMS_Snd_Set_ModChannelVolume(index, modChannel, vol)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Set_ModChannelVolume",
                    "returnType": 2
                },
                {
                    "id": "c9c28521-7b78-4809-8c5c-9408779b445d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Get_ModChannelVolume",
                    "help": "FMODGMS_Snd_Get_ModChannelVolume(index, modChannel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_ModChannelVolume",
                    "returnType": 2
                },
                {
                    "id": "5317ff81-600c-4e47-b704-d61bb1ead81d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Get_ModNumChannels",
                    "help": "FMODGMS_Snd_Get_ModNumChannels(index)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_ModNumChannels",
                    "returnType": 2
                },
                {
                    "id": "44048577-a5b2-4b8c-adb3-575bfd022a7f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Snd_Get_Length",
                    "help": "FMODGMS_Snd_Get_Length(index)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_Length",
                    "returnType": 2
                },
                {
                    "id": "30b564d4-aa96-4f6d-9d07-5287f419fdb2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Add_Effect",
                    "help": "FMODGMS_Chan_Add_Effect(channel, effect, index)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Add_Effect",
                    "returnType": 2
                },
                {
                    "id": "d2502c1b-4be9-463b-aecb-002a41e346c0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Remove_Effect",
                    "help": "FMODGMS_Chan_Remove_Effect(channel, effect)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Remove_Effect",
                    "returnType": 2
                },
                {
                    "id": "5ed90021-db2c-475c-8b5f-4e3b84cc036f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Effect_Create",
                    "help": "FMODGMS_Effect_Create(type)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Effect_Create",
                    "returnType": 2
                },
                {
                    "id": "bbc772ad-70ac-41a9-ab8a-5b3e8121448c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Effect_Set_Parameter",
                    "help": "FMODGMS_Effect_Set_Parameter(effect, parameter, value)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Effect_Set_Parameter",
                    "returnType": 2
                },
                {
                    "id": "069feff3-8788-4be6-8d5f-fdcd520203b0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Effect_Remove",
                    "help": "FMODGMS_Effect_Remove(effect)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Effect_Remove",
                    "returnType": 2
                },
                {
                    "id": "a8db6b21-cd87-4e07-a111-8d1569bc9075",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Effect_RemoveAll",
                    "help": "FMODGMS_Effect_RemoveAll()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Effect_RemoveAll",
                    "returnType": 2
                },
                {
                    "id": "e5ee3734-03a1-4049-8d37-1d1cdb75c110",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_FFT_Normalize",
                    "help": "FMODGMS_FFT_Normalize()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_FFT_Normalize",
                    "returnType": 2
                },
                {
                    "id": "29097575-fa82-4812-9f8a-f517eaba4bdf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Get_Level",
                    "help": "FMODGMS_Chan_Get_Level(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Get_Level",
                    "returnType": 2
                },
                {
                    "id": "4e91ae32-8155-4a2b-a9f4-931019e575b0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Get_Mute",
                    "help": "FMODGMS_Chan_Get_Mute(channel)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Get_Mute",
                    "returnType": 2
                },
                {
                    "id": "d5a27f8e-f774-4e5f-8e79-f8aa8a27fb9f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Chan_Set_Mute",
                    "help": "FMODGMS_Chan_Set_Mute(channel, mute)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Chan_Set_Mute",
                    "returnType": 2
                },
                {
                    "id": "bc3eab6c-a489-4e66-8cc1-9b0a2d5041c5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_Sys_Set_OutputMode",
                    "help": "FMODGMS_Sys_Set_OutputMode(outputType)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Set_OutputMode",
                    "returnType": 2
                },
                {
                    "id": "6bbe4735-3c4a-42ec-ae9f-9074a530ace5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Sys_Get_OutputMode",
                    "help": "FMODGMS_Sys_Get_OutputMode()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Get_OutputMode",
                    "returnType": 2
                },
                {
                    "id": "c5574c29-68ce-4ae3-b020-e67d665518ea",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Sys_Get_SpeakerMode",
                    "help": "FMODGMS_Sys_Get_SpeakerMode()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Get_SpeakerMode",
                    "returnType": 2
                },
                {
                    "id": "f2058ff6-ab64-4432-9924-97617ed31345",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Util_Handshake",
                    "help": "FMODGMS_Util_Handshake()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Util_Handshake",
                    "returnType": 1
                },
                {
                    "id": "9fc7d395-cd1e-4ae0-a95a-a6dae6c30ef3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "FMODGMS_FFT_Init",
                    "help": "FMODGMS_FFT_Init(windowSize)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_FFT_Init",
                    "returnType": 2
                },
                {
                    "id": "0c15b67d-b2f8-467b-ab73-fda7e9378b95",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "FMODGMS_Sys_Set_DSPBufferSize",
                    "help": "FMODGMS_Sys_Set_DSPBufferSize(size, numBuffers)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Set_DSPBufferSize",
                    "returnType": 2
                },
                {
                    "id": "50419413-170a-4d71-884e-01fabae8563f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Sys_Get_DSPBufferSize",
                    "help": "FMODGMS_Sys_Get_DSPBufferSize()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Get_DSPBufferSize",
                    "returnType": 2
                },
                {
                    "id": "80c2f2f8-ee22-4d0f-adcb-4d758e1b7dda",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Sys_Get_NumDSPBuffers",
                    "help": "FMODGMS_Sys_Get_NumDSPBuffers()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Sys_Get_NumDSPBuffers",
                    "returnType": 2
                },
                {
                    "id": "f5e864eb-751c-4632-940f-35a74a23d8ab",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "FMODGMS_Snd_Set_DLS",
                    "help": "FMODGMS_Snd_Set_DLS(filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Set_DLS",
                    "returnType": 2
                },
                {
                    "id": "0f0e8958-f9f8-4b0b-8055-fecaa7e35650",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Snd_Remove_DLS",
                    "help": "FMODGMS_Snd_Remove_DLS()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Remove_DLS",
                    "returnType": 2
                },
                {
                    "id": "6055eb3a-fa52-4395-a853-d8707af82471",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "FMODGMS_Snd_Get_DLS",
                    "help": "FMODGMS_Snd_Get_DLS()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FMODGMS_Snd_Get_DLS",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\FMODGMS.dll",
            "uncompress": false
        },
        {
            "id": "58fcb0aa-2da4-4899-8ade-ede7dfcec145",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 1048640,
            "filename": "fmod.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\fmod.dll",
            "uncompress": false
        },
        {
            "id": "affaeb1a-8f30-4b45-a2ec-8fa6b466ca12",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 67108866,
            "filename": "libfmod.dylib",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\libfmod.dylib",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 202375362,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "0.10.0"
}