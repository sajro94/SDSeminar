profile "Seminar Manager"
{
    RoleCenter = "CSD Seminar Manager RoleCenter";
    Description = 'Role center for managing Seminars';

    Customizations = "CSD Dummy Customization";
}

pagecustomization "CSD Dummy Customization" customizes "CSD Seminar Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    //Variables, procedures and triggers are not allowed on Page Customizations
}