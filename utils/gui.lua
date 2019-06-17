Gui = {}

function Gui.create_kit_selector(player)
    player.gui.center.add{type="frame", name="frame", caption="Kit Selector", direction="vertical"}
    center_frame = player.gui.center["frame"]
    
    -- IMAGE & KIT INFO AND SELECT BUTTON
    center_frame.add{type="flow", name="frame_info", direction="horizontal"}
    
    -- KIT BUTTONS
    center_frame["frame_info"].add{type="flow", name="button_flow", direction="vertical"}
    center_frame["frame_info"]["button_flow"].add{type="button", name="small-kit", caption="Small Kit", direction="horizontal"}
    center_frame["frame_info"]["button_flow"].add{type="button", name="medium-kit", caption="Medium Kit", direction="horizontal"}
    center_frame["frame_info"]["button_flow"].add{type="button", name="large-kit", caption="Large Kit", direction="horizontal"}
    center_frame["frame_info"]["button_flow"].add{type="button", name="default-kit", caption="Default Kit", direction="horizontal"}
    
    -- KIT INFO
    center_frame["frame_info"].add{type="flow", name="kit_info_flow", direction="vertical"}
    center_frame["frame_info"]["kit_info_flow"].add{type="label", name="kit-title", caption="Small Kit"}
    center_frame["frame_info"]["kit_info_flow"].add{type="text-box", name="text-box"}
    center_frame["frame_info"]["kit_info_flow"].add{type="button", name="select-kit", caption="Select Kit"}

    

end 

function Gui.update_kit(kit_title, description, kit_gui)
    kit_gui["frame_info"]["kit_info_flow"].children[1].caption = kit_title
    kit_gui["frame_info"]["kit_info_flow"].children[2].caption = description
end

return Gui;