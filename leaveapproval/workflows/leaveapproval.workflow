{
	"contents": {
		"a810bd41-2fe5-485e-86f2-cbd11fe061f3": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "leaveapproval",
			"subject": "leaveapproval",
			"name": "leaveapproval",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"a09936ef-b3f2-496b-944f-75da2332c65e": {
					"name": "Leave Approval"
				},
				"9f9778df-9bed-4ef6-9dcf-b28e55c72bb8": {
					"name": "Leave Approval Form"
				}
			},
			"sequenceFlows": {
				"6e457cd1-8816-418c-9eca-ae8a0faa8d74": {
					"name": "SequenceFlow5"
				},
				"3d9afa8c-92fc-4387-bd9d-d8200d0b372a": {
					"name": "SequenceFlow7"
				},
				"3d124e2c-810a-4747-9a39-4271b20ceb1d": {
					"name": "SequenceFlow12"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"a09936ef-b3f2-496b-944f-75da2332c65e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Leave Approval for ${context.Requester.Name}",
			"description": "leave approval",
			"priority": "HIGH",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://leaveapprovalapp_service.namespaceleaveapprovalapp/namespace.leaveapprovalapp",
			"recipientUsers": "${info.startedBy}",
			"userInterfaceParams": [],
			"id": "usertask1",
			"name": "Leave Approval"
		},
		"9f9778df-9bed-4ef6-9dcf-b28e55c72bb8": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Leave Approval for ${context.Requester.Name}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/Accept.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "LeaveForm"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Leave Approval Form"
		},
		"6e457cd1-8816-418c-9eca-ae8a0faa8d74": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "9f9778df-9bed-4ef6-9dcf-b28e55c72bb8"
		},
		"3d9afa8c-92fc-4387-bd9d-d8200d0b372a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "a09936ef-b3f2-496b-944f-75da2332c65e",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6cafcd9d-964d-443a-a802-f943756b618b": {},
				"eb2e1617-bbe6-4271-afc7-455af54b4a33": {},
				"b0b4403b-acd9-471d-abd2-ab7e4aaa01e5": {},
				"ec11330a-4602-4ddc-914f-d0ec53e8ab96": {},
				"74b5023e-8a4c-4b3e-8791-d57640644794": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 15,
			"y": 97,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 416.9999988079071,
			"y": 53,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6cafcd9d-964d-443a-a802-f943756b618b": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 266.9999988079071,
			"y": 40.5,
			"width": 100,
			"height": 60,
			"object": "a09936ef-b3f2-496b-944f-75da2332c65e"
		},
		"eb2e1617-bbe6-4271-afc7-455af54b4a33": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 116.9999988079071,
			"y": 39.5,
			"width": 100,
			"height": 62,
			"object": "9f9778df-9bed-4ef6-9dcf-b28e55c72bb8"
		},
		"b0b4403b-acd9-471d-abd2-ab7e4aaa01e5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "47,113 81.99999940395355,113 81.99999940395355,70.5 116.9999988079071,70.5",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "eb2e1617-bbe6-4271-afc7-455af54b4a33",
			"object": "6e457cd1-8816-418c-9eca-ae8a0faa8d74"
		},
		"ec11330a-4602-4ddc-914f-d0ec53e8ab96": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "366.9999988079071,70.5 416.9999988079071,70.5",
			"sourceSymbol": "6cafcd9d-964d-443a-a802-f943756b618b",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "3d9afa8c-92fc-4387-bd9d-d8200d0b372a"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"messageeventdefinition": 1,
			"timereventdefinition": 1,
			"sequenceflow": 12,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"boundarytimerevent": 1,
			"endevent": 4,
			"usertask": 3,
			"servicetask": 2,
			"scripttask": 1,
			"exclusivegateway": 1,
			"referencedsubflow": 1
		},
		"3d124e2c-810a-4747-9a39-4271b20ceb1d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "9f9778df-9bed-4ef6-9dcf-b28e55c72bb8",
			"targetRef": "a09936ef-b3f2-496b-944f-75da2332c65e"
		},
		"74b5023e-8a4c-4b3e-8791-d57640644794": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "216.9999988079071,70.5 266.9999988079071,70.5",
			"sourceSymbol": "eb2e1617-bbe6-4271-afc7-455af54b4a33",
			"targetSymbol": "6cafcd9d-964d-443a-a802-f943756b618b",
			"object": "3d124e2c-810a-4747-9a39-4271b20ceb1d"
		}
	}
}