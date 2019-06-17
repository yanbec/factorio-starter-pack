Gui = {}

function Gui.create_kit_selector(player)
    player.gui.center.add{type="frame", name="frame", caption="Kit Selector", direction="vertical"}
    center_frame = player.gui.center["frame"]
    
    -- IMAGE & KIT INFO AND SELECT BUTTON
    center_frame.add{type="flow", name="frame_info", direction="horizontal"}
    
    -- KIT BUTTONS
    center_frame["frame_info"].add{type="flow", name="button_flow", direction="vertical", style="Button_Flow_Style"}
    center_frame["frame_info"]["button_flow"].add{type="button", name="default-kit", caption="Default Kit", style="Kit_Button_Style"} 
    center_frame["frame_info"]["button_flow"].add{type="button", name="small-kit", caption="Small Kit", style="Kit_Button_Style"}
    center_frame["frame_info"]["button_flow"].add{type="button", name="medium-kit", caption="Medium Kit", style="Kit_Button_Style"}
    center_frame["frame_info"]["button_flow"].add{type="button", name="large-kit", caption="Large Kit", style="Kit_Button_Style"}
    
    -- KIT INFO
    center_frame["frame_info"].add{type="flow", name="kit_info_flow", direction="vertical", style="Kit_Flow_Style"}
    center_frame["frame_info"]["kit_info_flow"].add{type="label", name="kit-title", caption="Default Kit"}
    center_frame["frame_info"]["kit_info_flow"].add{type="button", name="select-kit", caption="Select Kit", style = "Kit_Button_Flow_Style"}

    

end 

function Gui.update_kit(kit_title, kit_gui)
    kit_gui["frame_info"]["kit_info_flow"].children[1].caption = kit_title
end

return Gui;