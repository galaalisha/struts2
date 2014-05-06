package com.javatpoint;

import com.javatpoint.DataBean;
import java.lang.Math;

public class DataProcessor
{
   public DataBean calcMeanStd(String[] tokens)
   {
      DataBean db=new DataBean();
      double sum=0;
      int [] r= new int[100];
      double mean=0, std=0;
      for( int i=0; i< tokens.length; i++)
      { 
    	  r[i]= Integer.parseInt(tokens[i]);
          sum= sum + r[i];
         
      }
      
      mean = sum/tokens.length;
       db.setMean(mean);
       
       double sumsq = 0;
       
      
       for (int i=0; i<tokens.length ; i++) 
       {
           sumsq = sumsq + ((r[i]-mean) * (r[i]-mean));
       }
       double variance = sumsq / tokens.length;
       std = Math.sqrt(variance);
 
           db.setStd(std);
	   return db;
   }
}
