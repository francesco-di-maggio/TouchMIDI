{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 0.0, 57.0, 360.0, 450.0 ],
        "openrect": [ 0.0, 0.0, 360.0, 450.0 ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "toolbarvisible": 0,
        "title": " ",
        "boxes": [
            {
                "box": {
                    "id": "obj-205",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1188.0, 457.0, 85.0, 33.0 ],
                    "text": "filtering out\nP01, P10, P11"
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 3,
                        "data": [
                            {
                                "key": 0,
                                "value": [ "set", "MODE1" ]
                            },
                            {
                                "key": 1,
                                "value": [ "set", "MODE2" ]
                            },
                            {
                                "key": 2,
                                "value": [ "set", "MODE3" ]
                            }
                        ]
                    },
                    "id": "obj-208",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 1417.0, 132.0, 67.0, 35.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll @embed 1"
                }
            },
            {
                "box": {
                    "id": "obj-209",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1417.0, 83.0, 57.0, 22.0 ],
                    "text": "pvar S07"
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 3,
                        "data": [
                            {
                                "key": 0,
                                "value": [ "set", "MODE1" ]
                            },
                            {
                                "key": 1,
                                "value": [ "set", "MODE2" ]
                            },
                            {
                                "key": 2,
                                "value": [ "set", "MODE3" ]
                            }
                        ]
                    },
                    "id": "obj-206",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 1343.0, 131.0, 67.0, 35.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll @embed 1"
                }
            },
            {
                "box": {
                    "id": "obj-207",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1343.0, 82.0, 57.0, 22.0 ],
                    "text": "pvar S09"
                }
            },
            {
                "box": {
                    "id": "obj-204",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1966.0, 107.0, 33.0, 22.0 ],
                    "text": "== 1"
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 2,
                        "data": [
                            {
                                "key": 0,
                                "value": [ "set", "PARAM1" ]
                            },
                            {
                                "key": 1,
                                "value": [ "set", "PARAM2" ]
                            }
                        ]
                    },
                    "id": "obj-203",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 1966.0, 131.0, 67.0, 35.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll @embed 1"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1966.0, 82.0, 57.0, 22.0 ],
                    "text": "pvar S09"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 20.0,
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0785351395607, 40.83769762516022, 134.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 130.0, 13.0, 101.0, 29.0 ],
                    "text": "Touch",
                    "textcolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 26.0,
                    "id": "obj-137",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0785351395607, 55.0, 126.0, 36.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 130.0, 31.0, 101.0, 36.0 ],
                    "text": "MIDI",
                    "textcolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "textjustification": 1,
                    "underline": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-37",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2191.0, 176.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 287.5, 52.0500977769434, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "LED",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-201",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2199.0, 278.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 214.80874966466442, 52.327875554721174, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P11",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-200",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2124.0, 278.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 72.4015025123261, 52.34303645645927, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P10",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-199",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2115.0, 177.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 143.61711088398047, 213.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "PRESS",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-198",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1497.0, 278.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 287.219779253006, 292.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P02",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-197",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1418.0, 278.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 142.467129793163, 292.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P01",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-196",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1340.0, 278.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.5017365050692888, 291.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P00",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-192",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1891.0, 276.0, 74.0, 20.47467071935158 ],
                    "presentation": 1,
                    "presentation_rect": [ 287.0923282726138, 412.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P07",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-191",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1576.0, 276.0, 74.0, 20.47467071935158 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.3194859978740112, 412.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P03",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-190",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1734.0, 276.0, 74.0, 20.47467071935158 ],
                    "presentation": 1,
                    "presentation_rect": [ 143.71977925300598, 412.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P05",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-189",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2048.0, 276.0, 74.0, 20.47467071935158 ],
                    "presentation": 1,
                    "presentation_rect": [ 215.6782590709837, 412.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P09",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-188",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1812.0, 276.0, 74.0, 20.47467071935158 ],
                    "presentation": 1,
                    "presentation_rect": [ 215.46977925300598, 353.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P06",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-165",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1970.0, 276.0, 74.0, 20.47467071935158 ],
                    "presentation": 1,
                    "presentation_rect": [ 71.969779253006, 412.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P08",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-163",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1655.0, 276.0, 74.0, 20.47467071935158 ],
                    "presentation": 1,
                    "presentation_rect": [ 71.969779253006, 353.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "P04",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-158",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1418.0, 177.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 215.46977925300598, 292.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "S07",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-157",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1343.0, 177.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 71.969779253006, 292.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "S09",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-155",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2040.0, 177.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 287.21977925300604, 230.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "S37",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-153",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1966.0, 177.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 230.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "S36",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-150",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1886.0, 177.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 236.39849287329866, 202.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "S35",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-133",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1571.0, 177.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 51.91977925300597, 130.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "S31",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-132",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1808.0, 177.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 235.51977925300605, 130.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "S34",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-105",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1729.0, 177.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 174.319779253006, 130.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "S33",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-104",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1650.0, 177.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 113.11977925300602, 130.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "S32",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "fontface": 1,
                    "id": "obj-91",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1493.0, 177.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 49.31888111888112, 203.0, 73.0, 21.5 ],
                    "rounded": 0.0,
                    "text": "S30",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 487.5, 71.0, 51.0, 22.0 ],
                    "text": "r DUMP"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 1084.0, 566.0, 61.0, 22.0 ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 947.0, 444.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1084.0, 462.0, 95.0, 22.0 ],
                    "text": "0 2 3 4 5 6 7 8 9"
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 729.0, 34.0, 39.0, 22.0 ],
                    "text": "r LED"
                }
            },
            {
                "box": {
                    "contrastactivetab": 0,
                    "fontsize": 12.0,
                    "htabcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-131",
                    "maxclass": "tab",
                    "multiline": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 796.0, 664.0, 53.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 94.31818181818181, 263.0, 28.40909090909091, 19.318181818181817 ],
                    "rounded": 3.0,
                    "spacing_x": 1.0,
                    "spacing_y": 12.0,
                    "tabcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "tabs": [ "1", "0", "2" ],
                    "textcolor": [ 1.0, 1.0, 1.0, 0.0 ],
                    "varname": "S09"
                }
            },
            {
                "box": {
                    "contrastactivetab": 0,
                    "fontsize": 12.0,
                    "htabcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-130",
                    "maxclass": "tab",
                    "multiline": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 888.0, 664.0, 53.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 237.08444283800853, 263.0, 28.40909090909091, 19.318181818181817 ],
                    "rounded": 3.0,
                    "spacing_x": 1.0,
                    "spacing_y": 12.0,
                    "tabcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 0.0 ],
                    "tabs": [ "1", "0", "2" ],
                    "textcolor": [ 1.0, 1.0, 1.0, 0.0 ],
                    "varname": "S07"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 1084.0, 409.0, 29.5, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1084.0, 510.0, 56.0, 22.0 ],
                    "text": "zl.lookup"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 947.0, 482.0, 61.0, 22.0 ],
                    "text": "s ACTIVE"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-88",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 947.0, 337.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-112",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 142.0, 412.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 318.09844370683044, 264.0, 10.803112586339239, 17.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[12]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p3"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-52",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 32.0, 412.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 31.50173650506929, 264.0, 10.738255033557047, 17.030321803476184 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[11]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p1"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-108",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 87.0, 412.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 174.63087248322148, 264.0, 10.738255033557047, 17.030321803476184 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[8]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p2"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1084.0, 757.9285985827446, 60.0, 22.0 ],
                    "text": "s TOUCH"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 227.0, 42.0, 22.0 ],
                    "text": "title \" \""
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 35.0, 278.0, 67.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "degrees": 180,
                    "id": "obj-194",
                    "maxclass": "dial",
                    "mode": 2,
                    "needlecolor": [ 0.96, 0.84, 0.18, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1084.0, 705.9285985827446, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 134.94784942844458, 152.0, 89.89896440505981, 89.89896440505981 ],
                    "thickness": 120.0,
                    "varname": "ptot"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 1084.0, 675.9285985827446, 47.0, 22.0 ],
                    "text": "line 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1084.0, 645.9285985827446, 61.0, 22.0 ],
                    "text": "pack 0 80"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1084.0, 613.9285985827446, 117.0, 22.0 ],
                    "text": "expr int($f1*127.) / 7"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 506.0, 757.0, 46.0, 22.0 ],
                    "text": "s P11P"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 451.0, 757.0, 47.0, 22.0 ],
                    "text": "s P10P"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 396.0, 757.0, 47.0, 22.0 ],
                    "text": "s P09P"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 341.0, 757.0, 47.0, 22.0 ],
                    "text": "s P08P"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 506.0, 598.0, 47.0, 22.0 ],
                    "text": "s P07P"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 451.0, 598.0, 47.0, 22.0 ],
                    "text": "s P06P"
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 396.0, 598.0, 47.0, 22.0 ],
                    "text": "s P05P"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 341.0, 598.0, 47.0, 22.0 ],
                    "text": "s P04P"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 505.0, 444.0, 47.0, 22.0 ],
                    "text": "s P03P"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 451.0, 444.0, 47.0, 22.0 ],
                    "text": "s P02P"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 396.0, 444.0, 47.0, 22.0 ],
                    "text": "s P01P"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 341.0, 444.0, 47.0, 22.0 ],
                    "text": "s P00P"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 197.0, 757.0, 38.0, 22.0 ],
                    "text": "s P11"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 142.0, 757.0, 39.0, 22.0 ],
                    "text": "s P10"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 87.0, 757.0, 39.0, 22.0 ],
                    "text": "s P09"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 757.0, 39.0, 22.0 ],
                    "text": "s P08"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 197.0, 598.0, 39.0, 22.0 ],
                    "text": "s P07"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 142.0, 598.0, 39.0, 22.0 ],
                    "text": "s P06"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 87.0, 598.0, 39.0, 22.0 ],
                    "text": "s P05"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 598.0, 39.0, 22.0 ],
                    "text": "s P04"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 196.0, 444.0, 39.0, 22.0 ],
                    "text": "s P03"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 142.0, 444.0, 39.0, 22.0 ],
                    "text": "s P02"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 87.0, 444.0, 39.0, 22.0 ],
                    "text": "s P01"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 444.0, 39.0, 22.0 ],
                    "text": "s P00"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 947.0, 406.0, 48.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 947.0, 376.0, 29.5, 22.0 ],
                    "text": "> 0."
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1084.0, 538.0, 43.0, 22.0 ],
                    "text": "zl.sum"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "contdata": 1,
                    "id": "obj-25",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1084.0, 309.0, 73.0, 76.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 1,
                    "size": 12,
                    "slidercolor": [ 1.0, 1.0, 1.0, 0.29 ],
                    "spacing": 2
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1084.0, 238.0, 57.0, 22.0 ],
                    "text": "pack 0 0."
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1084.0, 265.0, 73.0, 22.0 ],
                    "text": "select $1 $2"
                }
            },
            {
                "box": {
                    "id": "obj-183",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 556.0, 33.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-182",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 35.0, 71.0, 20.0 ],
                    "text": "refresh midi"
                }
            },
            {
                "box": {
                    "id": "obj-180",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 330.0, 33.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-178",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 110.0, 315.0, 433.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 28.0, 86.0, 119.0, 22.0 ],
                                    "text": "loadmess controllers"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 28.0, 296.0, 31.0, 22.0 ],
                                    "text": "t b s"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 219.0, 86.0, 58.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 219.0, 142.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 219.0, 114.0, 66.0, 22.0 ],
                                    "text": "TouchMIDI"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 28.0, 268.0, 38.0, 22.0 ],
                                    "text": "zl.reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 28.0, 217.0, 34.0, 22.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 28.0, 188.0, 67.0, 22.0 ],
                                    "text": "zl.compare"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 28.0, 142.0, 79.0, 22.0 ],
                                    "text": "route append"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 28.0, 114.0, 173.0, 22.0 ],
                                    "text": "midiinfo @autopollcontrollers 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-175",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 28.0, 26.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-176",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 40.0, 378.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-177",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 75.0, 378.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "midpoints": [ 37.5, 58.0, 37.5, 58.0 ],
                                    "order": 1,
                                    "source": [ "obj-175", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "midpoints": [ 37.5, 72.0, 228.5, 72.0 ],
                                    "order": 0,
                                    "source": [ "obj-175", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "midpoints": [ 37.5, 166.0, 37.5, 166.0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "midpoints": [ 37.5, 139.0, 37.5, 139.0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "midpoints": [ 37.5, 211.0, 37.5, 211.0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "midpoints": [ 37.5, 241.0, 37.5, 241.0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "midpoints": [ 37.5, 292.0, 37.5, 292.0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "midpoints": [ 228.5, 139.0, 228.5, 139.0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 1 ],
                                    "midpoints": [ 228.5, 175.0, 85.5, 175.0 ],
                                    "order": 0,
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 1 ],
                                    "midpoints": [ 228.5, 253.0, 56.5, 253.0 ],
                                    "order": 1,
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "midpoints": [ 228.5, 109.0, 228.5, 109.0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-176", 0 ],
                                    "midpoints": [ 49.5, 319.0, 49.5, 319.0 ],
                                    "source": [ "obj-75", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-177", 0 ],
                                    "midpoints": [ 37.5, 364.0, 84.5, 364.0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 330.0, 71.0, 60.0, 22.0 ],
                    "text": "p midiinfo"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 341.0, 649.0, 239.0, 22.0 ],
                    "text": "route 62 64 36 38"
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 341.0, 491.0, 239.0, 22.0 ],
                    "text": "route 55 57 59 60"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 506.0, 688.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 451.0, 688.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 396.0, 688.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-154",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 341.0, 688.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-156",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 506.0, 530.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-160",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 451.0, 530.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-162",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 396.0, 530.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-164",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 341.0, 530.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-166",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 505.0, 376.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-168",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 451.0, 376.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-170",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 396.0, 376.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-172",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 341.0, 376.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-174",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 341.0, 337.0, 238.0, 22.0 ],
                    "text": "route 48 50 52 53"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 656.0, 503.0, 69.0, 22.0 ],
                    "text": "route 20 21"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 32.0, 649.0, 239.0, 22.0 ],
                    "text": "route 62 64 36 38"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 32.0, 491.0, 239.0, 22.0 ],
                    "text": "route 55 57 59 60"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 454.0, 33.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 330.0, 175.0, 77.0, 22.0 ],
                    "text": "prepend port"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 482.0, 35.0, 57.0, 20.0 ],
                    "text": "dump val"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 585.0, 35.0, 95.0, 20.0 ],
                    "text": "rebase pressure"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 905.0, 757.0, 39.0, 22.0 ],
                    "text": "s S07"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 813.0, 757.0, 39.0, 22.0 ],
                    "text": "s S09"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 709.0, 757.0, 39.0, 22.0 ],
                    "text": "s S37"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 867.0, 444.0, 39.0, 22.0 ],
                    "text": "s S35"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 444.0, 39.0, 22.0 ],
                    "text": "s S34"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 783.0, 444.0, 39.0, 22.0 ],
                    "text": "s S33"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 741.0, 444.0, 39.0, 22.0 ],
                    "text": "s S32"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 699.0, 444.0, 39.0, 22.0 ],
                    "text": "s S31"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 656.0, 757.0, 39.0, 22.0 ],
                    "text": "s S36"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 656.0, 444.0, 39.0, 22.0 ],
                    "text": "s S30"
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 3,
                        "data": [
                            {
                                "key": 0,
                                "value": [ 0 ]
                            },
                            {
                                "key": 64,
                                "value": [ 1 ]
                            },
                            {
                                "key": 127,
                                "value": [ 2 ]
                            }
                        ]
                    },
                    "id": "obj-151",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 888.0, 607.4285985827446, 67.0, 35.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll @embed 1"
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 3,
                        "data": [
                            {
                                "key": 0,
                                "value": [ 0 ]
                            },
                            {
                                "key": 64,
                                "value": [ 1 ]
                            },
                            {
                                "key": 127,
                                "value": [ 2 ]
                            }
                        ]
                    },
                    "id": "obj-140",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 796.0, 607.4285985827446, 67.0, 35.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll @embed 1"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 556.0, 121.0, 51.0, 22.0 ],
                    "text": "112 100"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 197.0, 688.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-122",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 197.0, 724.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 245.91986077577553, 24.5500977769434, 10.738255033557047, 17.030321803476184 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[7]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p12"
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 142.0, 688.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-124",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 142.0, 724.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 102.95705806788166, 24.565258678681488, 10.738255033557047, 17.030321803476184 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[10]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p11"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 87.0, 688.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-126",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 87.0, 724.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 246.5432255806896, 385.0, 10.738255033557047, 17.030321803476184 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[9]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p10"
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 32.0, 688.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-128",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 32.0, 724.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 102.47825382927718, 385.0, 10.738255033557047, 17.030321803476184 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[6]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p9"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 197.0, 530.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-114",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 197.0, 566.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 318.20588235294116, 325.0, 10.588235294117647, 77.03921568627449 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[5]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p8"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 142.0, 530.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-116",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 142.0, 566.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 246.3808724832215, 326.0, 10.738255033557047, 17.030321803476184 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[4]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p7"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 87.0, 530.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-118",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 87.0, 566.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 174.7058823529412, 324.0, 10.588235294117647, 77.03921568627449 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[3]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p6"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 32.0, 530.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-120",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 32.0, 566.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 102.88087248322148, 326.0, 10.738255033557047, 17.030321803476184 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[2]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p5"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 196.0, 376.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "activebgoncolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "focusbordercolor": [ 0.313725, 0.313725, 0.313725, 0.0 ],
                    "id": "obj-110",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 196.0, 412.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 31.3782991202346, 326.0, 10.557184750733137, 75.95307917888563 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": " ",
                    "texton": " ",
                    "varname": "p4"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 142.0, 376.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 87.0, 376.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1132.0, 189.0, 137.0, 22.0 ],
                    "text": "expr pow(($f1 / 127.)\\, 1)"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 454.0, 121.0, 52.0, 22.0 ],
                    "text": "113 100"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "id": "obj-64",
                    "maxclass": "dial",
                    "needlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 867.0, 394.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 255.27961175441754, 161.0, 33.04077649116516, 33.04077649116516 ],
                    "thickness": 120.0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "id": "obj-65",
                    "maxclass": "dial",
                    "needlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 825.0, 394.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 255.27961175441743, 88.0, 33.04077649116516, 33.04077649116516 ],
                    "thickness": 120.0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "id": "obj-62",
                    "maxclass": "dial",
                    "needlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 783.0, 394.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 194.07961175441747, 89.0, 33.04077649116516, 33.04077649116516 ],
                    "thickness": 120.0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "id": "obj-63",
                    "maxclass": "dial",
                    "needlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 741.0, 394.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 132.87961175441743, 89.0, 33.04077649116516, 33.04077649116516 ],
                    "thickness": 120.0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "id": "obj-61",
                    "maxclass": "dial",
                    "needlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 699.0, 394.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 71.67961175441742, 89.0, 33.04077649116516, 33.04077649116516 ],
                    "thickness": 120.0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "id": "obj-60",
                    "knobcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 709.0, 599.0, 20.0, 140.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 313.0, 87.0, 20.430108428001404, 133.87097364664078 ],
                    "thickness": 25.0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "id": "obj-59",
                    "maxclass": "dial",
                    "needlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 656.0, 394.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 68.2, 161.0, 33.04077649116516, 33.04077649116516 ],
                    "thickness": 120.0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "id": "obj-58",
                    "knobcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 656.0, 599.0, 20.0, 140.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 89.0, 21.0, 134.0 ],
                    "thickness": 25.0
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 656.0, 337.0, 136.0, 22.0 ],
                    "text": "route 14 15 16 17 18 19"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 32.0, 376.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 32.0, 337.0, 238.0, 22.0 ],
                    "text": "route 48 50 52 53"
                }
            },
            {
                "box": {
                    "id": "obj-145",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1084.0, 189.0, 29.5, 22.0 ],
                    "text": "- 29"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 1084.0, 160.0, 67.0, 22.0 ],
                    "text": "unpack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1097.0, 34.0, 29.5, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1084.0, 131.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1124.0, 82.0, 156.0, 22.0 ],
                    "text": "expr $f1 >=30 && $f1 <= 41"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 767.0, 35.0, 136.0, 20.0 ],
                    "text": "turn onboard LED on/off"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 796.0, 554.0, 69.0, 22.0 ],
                    "text": "route 80 81"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 695.0, 91.0, 37.0, 22.0 ],
                    "text": "* 100"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.0, 121.0, 43.0, 22.0 ],
                    "text": "111 $1"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 433.0, 175.0, 82.0, 22.0 ],
                    "text": "midiformat"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 433.0, 227.0, 47.0, 22.0 ],
                    "text": "midiout"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "int", "int", "", "int", "" ],
                    "patching_rect": [ 330.0, 278.0, 92.5, 22.0 ],
                    "text": "midiparse"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 330.0, 227.0, 40.0, 22.0 ],
                    "text": "midiin"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "id": "obj-135",
                    "maxclass": "led",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "oncolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 695.0, 33.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 310.5, 20.050097776943403, 26.0, 26.0 ],
                    "thickness": 70.0,
                    "varname": "led"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-98",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0785351395607, 93.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 251.78310825791405, 157.0, 40.0, 40.0 ],
                    "proportion": 0.5,
                    "rounded": 50,
                    "shape": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-96",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 138.0785351395607, 93.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 251.8, 85.0, 40.0, 40.0 ],
                    "proportion": 0.5,
                    "rounded": 50,
                    "shape": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-95",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 115.0785351395607, 93.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 190.60000000000002, 86.0, 40.0, 40.0 ],
                    "proportion": 0.5,
                    "rounded": 50,
                    "shape": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-94",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 93.0785351395607, 93.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 129.4, 86.0, 40.0, 40.0 ],
                    "proportion": 0.5,
                    "rounded": 50,
                    "shape": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-93",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 71.0785351395607, 93.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 68.2, 86.0, 40.0, 40.0 ],
                    "proportion": 0.5,
                    "rounded": 50,
                    "shape": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-92",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0785351395607, 93.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 64.70349650349651, 158.0, 40.0, 40.0 ],
                    "proportion": 0.5,
                    "rounded": 50,
                    "shape": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-142",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0785351395607, 139.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.099706744868033, 321.0, 21.0, 86.51026392961876 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-176",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0785351395607, 163.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 169.5, 320.0, 21.0, 86.51026392961876 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-187",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0785351395607, 185.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 88.32618558466018, 259.0, 40.0, 27.0 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-101",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0785351395607, 117.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 85.0, 21.0, 140.0 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-102",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 71.0785351395607, 117.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 313.0, 85.0, 21.0, 140.0 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-177",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 71.0785351395607, 163.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 241.25, 321.0, 21.0, 27.0 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-186",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 71.0785351395607, 185.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 231.28898829255402, 259.0, 40.0, 27.0 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-167",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 71.0785351395607, 139.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.50173650506929, 259.0, 21.00153699942997, 27.097435897435915 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-179",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 93.0785351395607, 163.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 97.39350806656532, 380.0, 21.0, 27.0 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-169",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 93.0785351395607, 139.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 169.95250991012207, 259.0, 21.00153699942997, 27.097435897435915 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-195",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 93.0785351395607, 185.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-173",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 138.0785351395607, 139.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 312.87254901960785, 321.0, 21.0, 86.51026392961876 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-175",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0785351395607, 139.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 97.75, 321.0, 21.0, 27.0 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-171",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 115.0785351395607, 139.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 313.0, 259.0, 21.0, 27.0 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
                    "id": "obj-193",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 115.0785351395607, 185.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 311.5, 21.050097776943403, 24.0, 24.0 ],
                    "proportion": 0.5,
                    "rounded": 50,
                    "shape": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-181",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 115.0785351395607, 163.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 240.91986077577553, 19.5500977769434, 21.0, 27.0 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-185",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 138.0785351395607, 163.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 241.45847981797775, 380.0, 21.0, 27.0 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "border": 2.0,
                    "id": "obj-30",
                    "linecolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 138.0, 197.0, 42.49738395214081, 6.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 150.1525277910177, 205.0, 57.90828123688698, 6.1674012541770935 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "border": 2,
                    "bordercolor": [ 0.8274509803921568, 0.6862745098039216, 0.21568627450980393, 1.0 ],
                    "id": "obj-184",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0785351395607, 163.83769762516022, 20.41884881258011, 21.80627977848053 ],
                    "presentation": 1,
                    "presentation_rect": [ 97.95705806788166, 19.565258678681488, 21.0, 27.0 ],
                    "proportion": 0.5,
                    "rounded": 5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-20",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 36.74083751440048, 157.0, 182.25916248559952 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 360.0, 450.0 ],
                    "proportion": 0.5,
                    "rounded": 0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 339.5, 252.0, 339.5, 252.0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 1093.5, 600.0, 1093.5, 600.0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "midpoints": [ 956.5, 469.0, 956.5, 469.0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 96.5, 399.0, 96.5, 399.0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "midpoints": [ 96.5, 435.0, 96.5, 435.0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "midpoints": [ 205.5, 399.0, 205.5, 399.0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "midpoints": [ 205.5, 435.0, 205.5, 435.0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "midpoints": [ 151.5, 399.0, 151.5, 399.0 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "midpoints": [ 151.5, 435.0, 151.5, 435.0 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "midpoints": [ 206.5, 555.0, 206.5, 555.0 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "midpoints": [ 206.5, 591.0, 206.5, 591.0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "midpoints": [ 151.5, 555.0, 151.5, 555.0 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "midpoints": [ 151.5, 591.0, 151.5, 591.0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "midpoints": [ 96.5, 555.0, 96.5, 555.0 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "midpoints": [ 96.5, 591.0, 96.5, 591.0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "midpoints": [ 41.5, 555.0, 41.5, 555.0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 704.5, 114.0, 704.5, 114.0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "midpoints": [ 41.5, 591.0, 41.5, 591.0 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "midpoints": [ 206.5, 711.0, 206.5, 711.0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "midpoints": [ 206.5, 747.0, 206.5, 747.0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "midpoints": [ 151.5, 711.0, 151.5, 711.0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "midpoints": [ 151.5, 747.0, 151.5, 747.0 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "midpoints": [ 96.5, 711.0, 96.5, 711.0 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "midpoints": [ 96.5, 747.0, 96.5, 747.0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 41.5, 711.0, 41.5, 711.0 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "midpoints": [ 41.5, 747.0, 41.5, 747.0 ],
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 2 ],
                    "midpoints": [ 565.5, 162.0, 463.5, 162.0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "midpoints": [ 914.5, 681.0, 914.5, 681.0 ],
                    "source": [ "obj-130", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 822.5, 681.0, 822.5, 681.0 ],
                    "source": [ "obj-131", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 704.5, 60.0, 704.5, 60.0 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 1 ],
                    "midpoints": [ 1104.0, 447.0, 1071.0, 447.0, 1071.0, 495.0, 1130.5, 495.0 ],
                    "source": [ "obj-136", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "midpoints": [ 1093.5, 432.0, 1093.5, 432.0 ],
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 0 ],
                    "midpoints": [ 515.5, 672.0, 515.5, 672.0 ],
                    "source": [ "obj-138", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-143", 0 ],
                    "midpoints": [ 460.5, 672.0, 460.5, 672.0 ],
                    "source": [ "obj-138", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-152", 0 ],
                    "midpoints": [ 405.5, 672.0, 405.5, 672.0 ],
                    "source": [ "obj-138", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "midpoints": [ 350.5, 672.0, 350.5, 672.0 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "midpoints": [ 570.5, 636.0, 350.5, 636.0 ],
                    "source": [ "obj-139", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-156", 0 ],
                    "midpoints": [ 515.5, 516.0, 515.5, 516.0 ],
                    "source": [ "obj-139", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 0 ],
                    "midpoints": [ 460.5, 516.0, 460.5, 516.0 ],
                    "source": [ "obj-139", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "midpoints": [ 405.5, 516.0, 405.5, 516.0 ],
                    "source": [ "obj-139", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-164", 0 ],
                    "midpoints": [ 350.5, 516.0, 350.5, 516.0 ],
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 497.0, 108.0, 463.5, 108.0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "midpoints": [ 805.5, 645.0, 805.5, 645.0 ],
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "midpoints": [ 515.5, 711.0, 515.5, 711.0 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "midpoints": [ 460.5, 711.0, 460.5, 711.0 ],
                    "source": [ "obj-143", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "midpoints": [ 1093.5, 213.0, 1093.5, 213.0 ],
                    "source": [ "obj-145", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 1093.5, 183.0, 1093.5, 183.0 ],
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "midpoints": [ 1141.5, 183.0, 1141.5, 183.0 ],
                    "source": [ "obj-146", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 1 ],
                    "midpoints": [ 1106.5, 57.0, 1106.5, 57.0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 0 ],
                    "midpoints": [ 1117.0, 69.0, 1133.5, 69.0 ],
                    "source": [ "obj-147", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "midpoints": [ 1093.5, 156.0, 1093.5, 156.0 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "midpoints": [ 1133.5, 117.0, 1093.5, 117.0 ],
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "midpoints": [ 1093.5, 636.9285985827446, 1093.5, 636.9285985827446 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-130", 0 ],
                    "midpoints": [ 897.5, 645.0, 897.5, 645.0 ],
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "midpoints": [ 405.5, 711.0, 405.5, 711.0 ],
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "midpoints": [ 350.5, 711.0, 350.5, 711.0 ],
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "midpoints": [ 515.5, 555.0, 515.5, 555.0 ],
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 738.5, 78.0, 704.5, 78.0 ],
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "midpoints": [ 460.5, 555.0, 460.5, 555.0 ],
                    "source": [ "obj-160", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "midpoints": [ 405.5, 555.0, 405.5, 555.0 ],
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "midpoints": [ 350.5, 555.0, 350.5, 555.0 ],
                    "source": [ "obj-164", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "midpoints": [ 514.5, 399.0, 514.5, 399.0 ],
                    "source": [ "obj-166", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "midpoints": [ 460.5, 399.0, 460.5, 399.0 ],
                    "source": [ "obj-168", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 405.5, 399.0, 405.5, 399.0 ],
                    "source": [ "obj-170", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "midpoints": [ 350.5, 399.0, 350.5, 399.0 ],
                    "source": [ "obj-172", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "midpoints": [ 569.5, 477.0, 350.5, 477.0 ],
                    "source": [ "obj-174", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-166", 0 ],
                    "midpoints": [ 514.75, 360.0, 514.5, 360.0 ],
                    "source": [ "obj-174", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-168", 0 ],
                    "midpoints": [ 460.0, 360.0, 460.5, 360.0 ],
                    "source": [ "obj-174", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 0 ],
                    "midpoints": [ 405.25, 360.0, 405.5, 360.0 ],
                    "source": [ "obj-174", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 0 ],
                    "midpoints": [ 350.5, 360.0, 350.5, 360.0 ],
                    "source": [ "obj-174", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "midpoints": [ 339.5, 96.0, 339.5, 96.0 ],
                    "source": [ "obj-178", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 380.5, 108.0, 463.5, 108.0 ],
                    "source": [ "obj-178", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 0 ],
                    "midpoints": [ 339.5, 60.0, 339.5, 60.0 ],
                    "source": [ "obj-180", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 0 ],
                    "midpoints": [ 565.5, 60.0, 565.5, 60.0 ],
                    "source": [ "obj-183", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "midpoints": [ 1093.5, 747.9285985827446, 1093.5, 747.9285985827446 ],
                    "source": [ "obj-194", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 0 ],
                    "midpoints": [ 350.0, 303.0, 350.5, 303.0 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 339.5, 324.0, 41.5, 324.0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 360.5, 324.0, 665.5, 324.0 ],
                    "source": [ "obj-2", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "midpoints": [ 381.5, 324.0, 956.5, 324.0 ],
                    "source": [ "obj-2", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 1975.5, 131.33333333333331, 1975.5, 131.33333333333331 ],
                    "source": [ "obj-204", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-206", 0 ],
                    "midpoints": [ 1352.5, 104.33333333333331, 1352.5, 104.33333333333331 ],
                    "source": [ "obj-207", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-208", 0 ],
                    "midpoints": [ 1426.5, 107.33333333333331, 1426.5, 107.33333333333331 ],
                    "source": [ "obj-209", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 1093.5, 669.9285985827446, 1093.5, 669.9285985827446 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 1093.5, 288.0, 1093.5, 288.0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "midpoints": [ 1093.5, 699.9285985827446, 1093.5, 699.9285985827446 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 1093.5, 261.0, 1093.5, 261.0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "midpoints": [ 1093.5, 387.0, 1093.5, 387.0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "midpoints": [ 1093.5, 561.0, 1093.5, 561.0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "midpoints": [ 956.5, 400.0, 956.5, 400.0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "midpoints": [ 956.5, 430.0, 956.5, 430.0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "midpoints": [ 44.5, 252.0, 44.5, 252.0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "midpoints": [ 1093.5, 534.0, 1093.5, 534.0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 339.5, 198.0, 339.5, 198.0 ],
                    "order": 1,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 339.5, 213.0, 442.5, 213.0 ],
                    "order": 0,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 463.5, 60.0, 463.5, 60.0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-204", 0 ],
                    "midpoints": [ 1975.5, 104.33333333333331, 1975.5, 104.33333333333331 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "midpoints": [ 1093.5, 486.0, 1093.5, 486.0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "midpoints": [ 96.25, 360.0, 96.5, 360.0 ],
                    "source": [ "obj-50", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 205.75, 360.0, 205.5, 360.0 ],
                    "source": [ "obj-50", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "midpoints": [ 151.0, 360.0, 151.5, 360.0 ],
                    "source": [ "obj-50", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 41.5, 360.0, 41.5, 360.0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "midpoints": [ 260.5, 477.0, 41.5, 477.0 ],
                    "source": [ "obj-50", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "midpoints": [ 41.5, 435.0, 41.5, 435.0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "midpoints": [ 41.5, 399.0, 41.5, 399.0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "midpoints": [ 665.5, 360.0, 665.5, 360.0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 685.0, 381.0, 708.5, 381.0 ],
                    "source": [ "obj-55", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "midpoints": [ 724.0, 381.0, 792.5, 381.0 ],
                    "source": [ "obj-55", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "midpoints": [ 704.5, 381.0, 750.5, 381.0 ],
                    "source": [ "obj-55", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "midpoints": [ 763.0, 381.0, 876.5, 381.0 ],
                    "source": [ "obj-55", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "midpoints": [ 743.5, 381.0, 834.5, 381.0 ],
                    "source": [ "obj-55", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "midpoints": [ 782.5, 381.0, 642.0, 381.0, 642.0, 489.0, 665.5, 489.0 ],
                    "source": [ "obj-55", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 665.5, 741.0, 665.5, 741.0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 665.5, 435.0, 665.5, 435.0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 718.5, 741.0, 718.5, 741.0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 708.5, 435.0, 708.5, 435.0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 792.5, 435.0, 792.5, 435.0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 750.5, 435.0, 750.5, 435.0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "midpoints": [ 876.5, 435.0, 876.5, 435.0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 834.5, 435.0, 834.5, 435.0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 206.5, 516.0, 206.5, 516.0 ],
                    "source": [ "obj-67", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 0 ],
                    "midpoints": [ 151.5, 516.0, 151.5, 516.0 ],
                    "source": [ "obj-67", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "midpoints": [ 96.5, 516.0, 96.5, 516.0 ],
                    "source": [ "obj-67", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "midpoints": [ 41.5, 516.0, 41.5, 516.0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "midpoints": [ 261.5, 636.0, 41.5, 636.0 ],
                    "source": [ "obj-67", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "midpoints": [ 206.5, 672.0, 206.5, 672.0 ],
                    "source": [ "obj-68", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "midpoints": [ 151.5, 672.0, 151.5, 672.0 ],
                    "source": [ "obj-68", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "midpoints": [ 96.5, 672.0, 96.5, 672.0 ],
                    "source": [ "obj-68", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "midpoints": [ 41.5, 672.0, 41.5, 672.0 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 442.5, 198.0, 442.5, 198.0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "midpoints": [ 665.5, 528.0, 665.5, 528.0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "midpoints": [ 690.5, 585.0, 718.5, 585.0 ],
                    "source": [ "obj-70", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "midpoints": [ 715.5, 540.0, 805.5, 540.0 ],
                    "source": [ "obj-70", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 2 ],
                    "midpoints": [ 463.5, 144.0, 463.5, 144.0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "midpoints": [ 1141.5, 225.0, 1131.5, 225.0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 2 ],
                    "midpoints": [ 704.5, 162.0, 463.5, 162.0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "midpoints": [ 805.5, 579.0, 805.5, 579.0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "midpoints": [ 855.5, 579.0, 1071.0, 579.0, 1071.0, 30.0, 1106.5, 30.0 ],
                    "source": [ "obj-90", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "midpoints": [ 830.5, 594.0, 897.5, 594.0 ],
                    "source": [ "obj-90", 1 ]
                }
            }
        ],
        "parameters": {
            "obj-108": [ "live.text[8]", "live.text", 0 ],
            "obj-110": [ "live.text[1]", "live.text", 0 ],
            "obj-112": [ "live.text[12]", "live.text", 0 ],
            "obj-114": [ "live.text[5]", "live.text", 0 ],
            "obj-116": [ "live.text[4]", "live.text", 0 ],
            "obj-118": [ "live.text[3]", "live.text", 0 ],
            "obj-120": [ "live.text[2]", "live.text", 0 ],
            "obj-122": [ "live.text[7]", "live.text", 0 ],
            "obj-124": [ "live.text[10]", "live.text", 0 ],
            "obj-126": [ "live.text[9]", "live.text", 0 ],
            "obj-128": [ "live.text[6]", "live.text", 0 ],
            "obj-52": [ "live.text[11]", "live.text", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}