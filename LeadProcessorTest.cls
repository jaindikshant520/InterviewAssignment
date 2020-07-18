@isTest
	private class LeadProcessorTest
	{
		private static testMethod void LeadProcess()
		{
			List<Lead> leadList = new List<Lead>(); 
            for (Integer i=0;i<200;i++) {
			leadList.add(new Lead(LastName='Test'+i, Country='US', City = 'New York' ,Company = 'Google', LeadSource = 'Phone inquiry' ));
            }
			insert leadList; 
			
            Test.startTest();
			LeadProcessor Obj = new  LeadProcessor();
           	Database.executeBatch(Obj);
            Test.stopTest();
			
		}
	}