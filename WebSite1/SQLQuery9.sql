﻿ALTER TABLE User_Search_History 
ADD FOREIGN KEY (User_ID) REFERENCES UserInfo (User_ID)
ALTER TABLE User_Search_History
ADD FOREIGN KEY (Cuisine_ID) REFERENCES CUISINE (Cuisine_ID);