{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 2,
			"revision" : 3,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 476.0, 468.0, 1070.0, 475.0 ],
		"bgcolor" : [ 0.572549, 0.47451, 0.447059, 1.0 ],
		"editing_bgcolor" : [ 0.572549, 0.47451, 0.447059, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "Chesterfield",
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 20.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 58.0, 6.0, 236.0, 29.0 ],
					"style" : "",
					"text" : "Part 2",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 20.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 621.0, 2.0, 236.0, 29.0 ],
					"style" : "",
					"text" : "Part 1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 213.0, 367.0, 150.0, 60.0 ],
					"style" : "",
					"text" : "you can drop multiple videos from the file browser and drop them into a playlist slot(s)."
				}

			}
, 			{
				"box" : 				{
					"clipheight" : 23.0,
					"data" : 					{
						"clips" : [ 							{
								"filename" : "bball.mov",
								"filekind" : "moviefile",
								"loop" : 0,
								"content_state" : 								{
									"outputmode" : [ 1 ],
									"out_name" : [ "u066001028" ],
									"dim" : [ 1, 1 ],
									"interp" : [ 0 ],
									"autostart" : [ 1 ],
									"framereport" : [ 0 ],
									"moviefile" : [ "" ],
									"loopstart" : [ 0 ],
									"usedstrect" : [ 0 ],
									"position" : [ 0.0 ],
									"vol" : [ 1.0 ],
									"rate" : [ 1.0 ],
									"drawto" : [ "" ],
									"unique" : [ 0 ],
									"texture_name" : [ "u952001026" ],
									"usesrcrect" : [ 0 ],
									"engine" : [ "avf" ],
									"colormode" : [ "argb" ],
									"time_secs" : [ 0.0 ],
									"time" : [ 0 ],
									"srcrect" : [ 0, 0, 1, 1 ],
									"adapt" : [ 1 ],
									"loopend" : [ 0 ],
									"dstrect" : [ 0, 0, 1, 1 ],
									"loopreport" : [ 0 ],
									"automatic" : [ 0 ],
									"looppoints" : [ 0, 0 ],
									"output_texture" : [ 0 ]
								}

							}
, 							{
								"filename" : "C74:/media/jitter/chickens.mp4",
								"filekind" : "moviefile",
								"loop" : 0,
								"content_state" : 								{
									"outputmode" : [ 1 ],
									"out_name" : [ "u066001028" ],
									"dim" : [ 1, 1 ],
									"interp" : [ 0 ],
									"autostart" : [ 1 ],
									"framereport" : [ 0 ],
									"moviefile" : [ "" ],
									"loopstart" : [ 0 ],
									"usedstrect" : [ 0 ],
									"position" : [ 0.0 ],
									"vol" : [ 1.0 ],
									"rate" : [ 1.0 ],
									"drawto" : [ "" ],
									"unique" : [ 0 ],
									"texture_name" : [ "u952001026" ],
									"usesrcrect" : [ 0 ],
									"engine" : [ "avf" ],
									"colormode" : [ "argb" ],
									"time_secs" : [ 0.0 ],
									"time" : [ 0 ],
									"srcrect" : [ 0, 0, 1, 1 ],
									"adapt" : [ 1 ],
									"loopend" : [ 0 ],
									"dstrect" : [ 0, 0, 1, 1 ],
									"loopreport" : [ 0 ],
									"automatic" : [ 0 ],
									"looppoints" : [ 0, 0 ],
									"output_texture" : [ 0 ]
								}

							}
 ]
					}
,
					"id" : "obj-24",
					"maxclass" : "jit.playlist",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "", "dictionary" ],
					"patching_rect" : [ 37.0, 367.0, 168.0, 48.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 187.0, 101.0, 150.0, 47.0 ],
					"style" : "",
					"text" : "this playlist incorporates all the read / metronome stuff to the right."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 32.0, 155.0, 167.0, 154.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 37.0, 150.0, 60.0 ],
					"style" : "",
					"text" : "if you drag a movie from the file browser (target icon), it will create a playlist object like this!"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"clips" : [ 							{
								"filename" : "bball.mov",
								"filekind" : "moviefile",
								"loop" : 0,
								"content_state" : 								{
									"outputmode" : [ 1 ],
									"out_name" : [ "u066001028" ],
									"dim" : [ 1, 1 ],
									"interp" : [ 0 ],
									"autostart" : [ 1 ],
									"framereport" : [ 0 ],
									"moviefile" : [ "" ],
									"loopstart" : [ 0 ],
									"usedstrect" : [ 0 ],
									"position" : [ 0.0 ],
									"vol" : [ 1.0 ],
									"rate" : [ 1.0 ],
									"drawto" : [ "" ],
									"unique" : [ 0 ],
									"texture_name" : [ "u952001026" ],
									"usesrcrect" : [ 0 ],
									"engine" : [ "avf" ],
									"colormode" : [ "argb" ],
									"time_secs" : [ 0.0 ],
									"time" : [ 0 ],
									"srcrect" : [ 0, 0, 1, 1 ],
									"adapt" : [ 1 ],
									"loopend" : [ 0 ],
									"dstrect" : [ 0, 0, 1, 1 ],
									"loopreport" : [ 0 ],
									"automatic" : [ 0 ],
									"looppoints" : [ 0, 0 ],
									"output_texture" : [ 0 ]
								}

							}
 ]
					}
,
					"id" : "obj-18",
					"maxclass" : "jit.playlist",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "", "dictionary" ],
					"patching_rect" : [ 32.0, 101.0, 150.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 474.0, 215.0, 167.0, 154.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 474.0, 152.0, 88.0, 22.0 ],
					"style" : "",
					"text" : "jit.movie 32 24"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 660.0, 215.0, 167.0, 154.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 40.0, 150.0, 74.0 ],
					"style" : "",
					"text" : "the jit.movie continues to play the movie regardless of whether its connected to a jit.window or a jit.pwindow."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 838.0, 49.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 838.0, 96.0, 58.0, 22.0 ],
					"style" : "",
					"text" : "metro 40"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 855.0, 261.0, 182.0, 87.0 ],
					"style" : "",
					"text" : "creating a jit.window will give a standalone window a name like u23454321234. You can resize at will.  if you add an argument to the object, that will name the window accordingly."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 660.0, 96.0, 122.0, 22.0 ],
					"style" : "",
					"text" : "read countdown.mov"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 773.0, 152.0, 150.0, 47.0 ],
					"style" : "",
					"text" : "320 x 240 refer to pixel dims of the movie we'll play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 660.0, 152.0, 101.0, 22.0 ],
					"style" : "",
					"text" : "jit.movie 320 240"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "bball.mov",
				"bootpath" : "C74:/media/jitter",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "chickens.mp4",
				"bootpath" : "C74:/media/jitter",
				"type" : "mpg4",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"default_bgcolor" : [ 0.223529, 0.164706, 0.254902, 1.0 ],
		"color" : [ 0.976471, 0.909804, 0.792157, 1.0 ],
		"elementcolor" : [ 0.486275, 0.552941, 0.584314, 1.0 ],
		"accentcolor" : [ 0.337255, 0.329412, 0.415686, 1.0 ],
		"textcolor_inverse" : [ 0.976471, 0.909804, 0.792157, 1.0 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.337255, 0.329412, 0.415686, 1.0 ],
		"bgfillcolor_color2" : [ 0.223529, 0.164706, 0.254902, 1.0 ],
		"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_angle" : 270.0,
		"bgfillcolor_proportion" : 0.39
	}

}
