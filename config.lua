-- ░██████╗░█████╗░██╗░░░██╗██████╗░███████╗░██████╗░█████╗░██████╗░██╗██████╗░████████╗░██████╗
-- ██╔════╝██╔══██╗██║░░░██║██╔══██╗██╔════╝██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
-- ╚█████╗░██║░░╚═╝██║░░░██║██████╦╝█████╗░░╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░╚█████╗░
-- ░╚═══██╗██║░░██╗██║░░░██║██╔══██╗██╔══╝░░░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░░╚═══██╗
-- ██████╔╝╚█████╔╝╚██████╔╝██████╦╝███████╗██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░██████╔╝
-- ╚═════╝░░╚════╝░░╚═════╝░╚═════╝░╚══════╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░

Config = {}

Config.Locale = 'en'

Config.checkForUpdates = true

Config.Items = {
    ["package1"] = {
        name = "itemname1",
        newItem = "newitem1",
        newItemLabel = "itemname1",
        newItemCount = 6
    },
    ["package2"] = {
        name = "itemname2",
        newItem = "newitem2",
        newItemLabel = "itemname2",
        newItemCount = 6
    },
    -- ["package3"] = {
    --     name = "itemname3",
    --     newItem = "newitem3",
    --     newItemLabel = "itemname3",
    --     newItemCount = 6
    -- },
    -- ["package4"] = {
    --     name = "itemname4",
    --     newItem = "newitem5",
    --     newItemLabel = "itemname6",
    --     newItemCount = 6
    -- },
    -- ["package5"] = {
    --     name = "itemname5",
    --     newItem = "newitem5",
    --     newItemLabel = "itemname5",
    --     newItemCount = 6
    -- },
    -- ["package6"] = {
    --     name = "itemname6", --Package name
    --     newItem = "newitem6", --item you get from the box
    --     newItemLabel = "itemname6", --Name of the item you get from the box (for the notification message)
    --     newItemCount = 6 --How many items you get from the box
    -- },
    -- Add more
} 

Translation = {
    ['de'] = {
        ['text'] = 'Du hast %s %s aus der %s bekommen.',
        ['text_2'] = 'Du hast keine ',
        ['point'] = '. ',
    },
    ['en'] = {
        ['text'] = 'You got %s %s from the %s.',
        ['text_2'] = 'You have no ',
        ['point'] = '. ',
    },
    ['es'] = {
        ['text'] = 'Tienes %s %s del %s.',
        ['text_2'] = 'No tienes ',
        ['point'] = '. ',
    },
    ['fr'] = {
        ['text'] = 'Tu as obtenu %s %s du %s.',
        ['text_2'] = "Tu n'as pas ",
        ['point'] = '. ',
    },
}