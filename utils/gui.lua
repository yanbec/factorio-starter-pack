Gui = {}

function Gui.create_kit_selector(player)
    player.gui.center.add{type="frame", name="frame", caption="Kit Selector", direction="vertical"}
    center_frame = player.gui.center["frame"]
    
    -- IMAGE & KIT INFO AND SELECT BUTTON
    center_frame.add{type="flow", name="image_kit_info_flow", direction="horizontal"}
    
    -- IMAGE
    center_frame["image_kit_info_flow"].add{type="sprite", name="kit-image", sprite="item/iron-plate"}

    -- KIT INFO
    center_frame["image_kit_info_flow"].add{type="flow", name="kit_info_flow", direction="vertical"}
    center_frame["image_kit_info_flow"]["kit_info_flow"].add{type="label", name="kit-title", caption="Small Kit"}
    center_frame["image_kit_info_flow"]["kit_info_flow"].add{type="text-box", name="text-box"}
    center_frame["image_kit_info_flow"]["kit_info_flow"].add{type="button", name="select-button" caption="Select Kit"}

    -- KIT BUTTONS
    center_frame.add{type="flow", name="button_flow", direction="horizontal"}
    center_frame["button_flow"].add{type="button", name="small-kit", caption="Small Kit", direction="horizontal"}
    center_frame["button_flow"].add{type="button", name="medium-kit", caption="Medium Kit", direction="horizontal"}
    center_frame["button_flow"].add{type="button", name="large-kit", caption="Large Kit", direction="horizontal"}
    center_frame["button_flow"].add{type="button", name="default-kit", caption="Default Kit", direction="horizontal"}

end 

function Gui.update_kit(kit_type, kit_gui) {
    
}

return Gui;