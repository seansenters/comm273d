---
title: Basic Aggregation with Pivot Tables
date: 2014-09-21
---

#### The problem

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero magnam nostrum sint, totam consequuntur voluptatem quibusdam ea ipsam sequi molestias odio architecto ipsa voluptatum ipsum est, veritatis sed? Possimus, necessitatibus.

#### The solution

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam accusantium, animi optio, doloremque saepe molestias fuga asperiores velit soluta quidem a quo labore. Alias, molestias! Labore qui necessitatibus quia tempora!

---------------------

## Step by step

1. ### Open a spreadsheet
   
   Download this CSV, [rando_yos.csv](/files/tutorials/spreadsheets/rando_yos.csv), and import it into a spreadsheet:

   ![img](/files/tutorials/spreadsheets/images/basic-pivot-tables-import.png)

   The data consists of _messages sent_ from a user, and has fields for the message's __recipient__, the __time__ of the message, and the content of the message.

   Since every message is "Yo", there's not much insight to be gained here. However, with __pivot tables__, we can still find the big picture of this user's message-sending behavior.


2. ### Create a pivot table
    
    Under the __Data__ menu, select the __Pivot table report...__ option

    ![img](/files/tutorials/spreadsheets/images/basic-pivot-tables-create.png)

    This will pop open a new sheet (notice the new bottom tab named __Pivot Table 1__) with an empty Pivot Table. 

    On the right, you'll see the __Report Editor__ panel, which is where we build out the structure of the pivot table.

    ![img](/files/tutorials/spreadsheets/images/basic-pivot-tables-empty.png)
  

3. ### Group by recipients

    In the __Report Editor__, click the __Add Field__ link next to the __Rows__ heading, and select __recipient__

    ![img](/files/tutorials/spreadsheets/images/basic-pivot-tables-row-add-field.png)

    The pivot table will now contain _one row_ per __recipient__. If you recall from what the data looked like in the original spreadsheet, we had no easy way of telling even how many different recipients there were.

    With the summarizing ability of the pivot table, though, we now see there are five different recipients: Pat, Quinn, Robin, Sam, and Tracy

    ![img](/files/tutorials/spreadsheets/images/basic-pivot-tables-row-recipient.png)




4. ### Count up messages per recipient

    ![img](/files/tutorials/spreadsheets/images/basic-pivot-tables-add-counta.png)

    ![img](/files/tutorials/spreadsheets/images/basic-pivot-tables-add-counta-result.png)


    ![img](/files/tutorials/spreadsheets/images/basic-pivot-tables-add-counta-graph.png)



5. ### Count up messages per hour

    Messages per recipient aren't the only measure we're interested in. Let's look at messages per hour.

    Go back to the original data table and add a column to the right called __hour__






6. Return to source data, add a column






7. Derive a new column




----



