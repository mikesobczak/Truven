package com.truvenhealth.design.standard.util;

/**
*  This source is provided as is, without any warranty
*  and /or guaranty of any kind.
*  Copyright (C) 2008, ISHTIAK, All Rights Reserved.
*  You can use it for Personal Learning purpose only.
*  source: http://www.interview-questions-tips-forum.net
*/

import java.util.Comparator;

public class TestComparator implements Comparator
{
    private String fieldName;
    private int sortOrder;
    
    public TestComparator(String argFieldName, int sortOrder) {
        this.fieldName = argFieldName;
        this.sortOrder = sortOrder;
	}
    private Object getValue(Object a)
    {
      Object obj = null;
      Class[] obj1 = null;
      Object[] obj2 = null;
      String methodName = "get"+fieldName.replace(fieldName.substring(0,1)
                                 ,fieldName.substring(0,1).toUpperCase());

     try{
        obj = a.getClass().getMethod(methodName,obj1).invoke(a,obj2);

     }catch(Exception ex){
        ex.printStackTrace();
     }
      return obj;
   }
   private Object getType(Object a)
   {
     Class[] obj1 = null;
     Object obj = null;
     String methodName = "get"+fieldName.replace(fieldName.substring(0,1),
     fieldName.substring(0,1).toUpperCase());
     try{
         obj = a.getClass().getMethod(methodName,obj1)
                           .getReturnType().getName().toString();
     }catch(Exception ex){
       ex.printStackTrace();
     }
     return obj;
   }

   public int compare(Object obj1, Object obj2) {
	   int status=0;

	   if ( sortOrder == 1 )
	   {
		   // Ascending
		   if(getType(obj2).equals("java.lang.String")) {
			   status = ((String)getValue(obj1)).compareTo((String)getValue(obj2));
		   } 
		   if(getType(obj2).equals("java.lang.Integer")) {
			   status = ((Integer)getValue(obj1)).compareTo((Integer)getValue(obj2));
		   }
	   }
	   else
	   {
		   // Descending
		   if(getType(obj2).equals("java.lang.String")) {
			   status = ((String)getValue(obj2)).compareTo((String)getValue(obj1));
		   } 
		   if(getType(obj2).equals("java.lang.Integer")) {
			   status = ((Integer)getValue(obj2)).compareTo((Integer)getValue(obj1));
		   }
	   }
	   return status;
   }
}