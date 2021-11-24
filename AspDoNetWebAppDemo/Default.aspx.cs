using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using doNetStandardDemo;

namespace AspDoNetWebAppDemo
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dealHandButton_Click (object sender,EventArgs e)
        {
            Player[] players = new Player[2];
            players[0] = new Player(play1TextBox.Text);
            players[1] = new Player(play2TextBox.Text);

            Game newGame = new Game();
            newGame.SetPlayers(players);
            newGame.DealHands();

            dealHandLabel.Visible = true;
            dealtHandsTable.Visible = true;

            foreach(Player player in players)
            {
                TableHeaderRow tableHeaderRow = new TableHeaderRow();
                TableHeaderCell tableHeaderCell = new TableHeaderCell();
                tableHeaderCell.Text = player.Name;
                tableHeaderRow.Cells.Add(tableHeaderCell);
                dealtHandsTable.Rows.Add(tableHeaderRow);

                TableRow tableRow = new TableRow();
                foreach(Card card in player.PlayHand)
                {
                    TableCell cell = new TableCell();
                    cell.Text = "<img width=75 height=100 alt=cardImage " +
                        "src=https://deckofcards.blob.core.windows.net/carddeck/" +
                        $"{card.imageLink} />";
                    tableRow.Cells.Add(cell);
                }
                dealtHandsTable.Rows.Add(tableRow);
            }
        }
    }
}