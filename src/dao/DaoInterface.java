package dao;
import java.util.ArrayList;

import pojo.*; 
public interface DaoInterface {
	  Employee validateUser(String email, String password) throws Exception;
	  ArrayList<String> getBookCategory() throws Exception;
}
