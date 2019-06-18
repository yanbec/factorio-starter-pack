local Globals = require("../globals");

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

    center_frame["frame_info"]["kit_info_flow"].add{type="scroll-pane", name="kit-item-list", direction="vertical", style="Kit_Item_List_Flow_Style"}
    center_frame["frame_info"]["kit_info_flow"]["kit-item-list"].add{type="label", name="kit-item-1", caption="iron-plate (8)"}
    center_frame["frame_info"]["kit_info_flow"]["kit-item-list"].add{type="label", name="kit-item-2", caption="stone-furnace (1)"}
    center_frame["frame_info"]["kit_info_flow"]["kit-item-list"].add{type="label", name="kit-item-3", caption="burner-mining-drill (1)"}
    
    -- SELECT BUTTON
    center_frame["frame_info"]["kit_info_flow"].add{type="flow", name="kit-select-flow", directon="vertical"}
    center_frame["frame_info"]["kit_info_flow"]["kit-select-flow"].add{type="button", name="select-kit", caption="Select Kit", style = "Kit_Button_Flow_Style"}
end 

function Gui.update_kit(player, gui_title, kit_title, kit_gui)
    local kit_items_list = kit_gui["frame_info"]["kit_info_flow"].children[2];
    local kit_items_list_item = kit_gui["frame_info"]["kit_info_flow"].children[2].children;
    for i,v in pairs(kit_items_list_item) do
        v.destroy();
    end

    kit_gui["frame_info"]["kit_info_flow"].children[1].caption = gui_title;

    for i,v in pairs(Globals.KITS[kit_title].ITEMS) do
        item = v
        kit_items_list.add{type="label", name="kit-item " .. i}
        kit_items_list["kit-item " .. i].caption = define_item_caption(item)
    end
end

function define_item_caption(item)
    return item[1] .. " (" .. item[2] .. ")";
end

return Gui;