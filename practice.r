print("Sujal")

#assign a variable to value
name<-"sujal"
# R allows assignment of single vlaue to multiple variables
k<-y<-j<-4

#to concat two strings and display
print(paste("My name is"," Sujal "))
cat("My name is", " Sujal")
# rules for variables in R  are 
#can have letter,digit,period or underscore
#can start with letter or period
#if start with period cannot be folleowed by number 
# In  R there is only single line comment no multiple line comments



#Basic datass types in R are numeric,integer,complex ,character,logical
#to know datatype of variable in R  use class function()
 a<-2
 print(class(a))
#to declare an integer data type in R use suffix L 
 b<-2L
 print(class(b))
c<-2+3i
print(class(c))
d<-TRUE
print(class(d))
e<-'a'
print(class(e))





#type conversion
#use as.integer(),as.logical(),as.numeric(),as.complex()
a<-'3+4i'
k<-as.complex(a)
print(class(k))
cat(k)

 b<-"sujal"
 n<-as.complex(b)
#if data type cannot be converted to na it return NA
 q<-4/3#normal division
 q
 q<-4^2 # exponent
 q
 q<-4%%2
 q#remainder
 q<-4%/%3 #integer division
 

 
 
 
 
 # break in R
 i<-0
 while(i<12){
   
   
   i<-i+1;
 
   if(i==10)
        break;
   print(i);

 }

 
 
 #next in R(continue in python)
 
 i<-0
 while(i<12){
   i<-i+1;
   if(i==10)
       next;
   print(i);
   
   
   
 }
  
 
 
 
 #for loop in R
 #for loop iterating over elements of vector
 
 for(x in 1:10){
   print(x)
 
 
 
 
 
 
 }
#same way it iterate over a lists and vectors
 
 
 
 
 #To declare a function in R we use  function() keyword
 my_function<-function(){
   print("Tarun");
   
   
   
   
   }
my_function() 



#to declare functions with parameters 
my_function<-function(fname){
  print(paste(fname," griffin"));
  
  
}
my_function("Tarun")






#default parameters help in method overloading
my_function<-function(country="Norway"){
  cat(" i am citizen of country  ",country)
  
  
}
my_function("India")
my_function()




#Nested function


nested_function<-function(x,y){
  
  
     a<-x+y;
     return(a);
  
  
  
}
nested_function(nested_function(3,3),nested_function(4,4));
tri_function<-function(k)
 
  
  
#Recursion
  
  fib<-function(n){
    if(n==1||n==0)
       return(n);
      return (fib(n-1)+fib(n-2));
    
    
    
  }
for(i in 0:10)
{
  print(fib(i))
} 


#global assignment operator <<-
txt<-"i"
txt2<-'j'
func4<-function(){
  
txt<<-'function'
txt2<-'sujal'
  
} 
func4()
cat(txt2)
cat(txt)



#vectors are sequence of items of same data type
# to declare vector use c() function
fruits<-c("banana","apple","orange")
 
a<-2:3
print(a)
print(fruits)


b<-c(12,23,1,2,34,45,1)
#to find length of vector use length() function

#sort() method return  modified vector doesnt affect original modified vector
 sort(b)
b 
length(b)



# to access individual element of vector
fruit<-c("Apple","apple","banana","Banana","mango","Mango")
sort(fruit)
# sort vector is not case  sensitive and sort based on alphabetical order


# to access items use  index R index starts from 1
fruit[1]
#to access multiple elements in vector use c() function
fruit[c(1,2)]
# to delete element use c() function and negative index it return newly modified vector doesnot affect the original one i e accessing all items except index(IN NEGATIVE) THAT IS MENTIONED
newfruit<-fruit[c(-1)]
fruit
newfruit



#To repeat each value n times in vector use repeat function and each parameter
repeat_each<-rep(c(1,2,3),each=4)
repeat_each
#to repeat entire sequence n times use repeat function and times parameter
repeat_times<-rep(1:3,times=4)
repeat_times
#to repeat each value specific amount of times use repeat () function and times parameter ,along with c () function i e to repeat independently mentioned amount of times
repeat_independent<-rep(1:5,times=c(1,2,3,4,5))
repeat_independent

#to create sequence of vector with with default step size than 1 use seq() function
numbers<-seq(from=1,to=100,by=5)
numbers


 
#List in R can contain many datatypes inside it
this_list<-list(1,"apple","banana")
this_list
# length function()




#indexing is similar to vector
#length function is also same



# to perfrom linear search use %in% keyword
"apple" %in% this_list
#it return boolean value



#to remove item from list just use negative index dont use c() FUNCTION AS IT LIST AND NOT VECTOR
new_list<-this_list[-1]
new_list


#to access multiple items use
this_list[1:3]
#looping construct is similar to that of vectors


#to concat two lists use c() functions ,pass both lists as parameter
list3<-c(this_list,new_list)
list3





#matrix are 2D data set with column and rows 
#matrix takes 3 arguments one is vector ,nrow and ncol nrow and ncol must be that vector can be divided into rows and column
#if less element are there in vector it will be repeated ,if it is submultiple even ,other than this it will return  a not a submultiple error
thismatrix<-matrix(c(1,2,3,4,5,6),nrow=3,ncol=2)
thismatrix
#access particular element based on index
thismatrix[1,2]
# to access entire particular row
thismatrix[3,]
# to access entire particular column
thismatrix[,2]





#to acess more than 1 rows use c function

thismatrix[c(1,2),]

# to access more than 1 columns use c function
thismatrix[,c(1,2)]



# to add additional columns use cbind() function
thismatrix<-cbind(thismatrix,c(5,6,7))
thismatrix

# same goes with rbind()
#cbind() and rbind() function takes 2 parameters one is mnatrix and another is vector or matrix
#SECOND parameter will be vector if want to add rows or columns 
#Second parameter will be matrix in cbind will be matrix if want to merge both matrixes





#Search operation is performed in the same way as in list %in% keyword




#R data frames are displayed in formart of table 
# to create dataframe we use data.frame()
DataFrame<-data.frame(
Training=c("Strenght","Stamina","Other"),
Pulse=c(100,50,20)
  
  
  
  
)
print(DataFrame)
summary(DataFrame)
