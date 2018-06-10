namespace WebApplication1.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class asdff : DbMigration
    {
        public override void Up()
        {
            RenameTable(name: "dbo.DbMegafons", newName: "Megafons");
        }
        
        public override void Down()
        {
            RenameTable(name: "dbo.Megafons", newName: "DbMegafons");
        }
    }
}
