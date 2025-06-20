#C:\\Users\\mypc\\Documents\\trialdata.csv

# DATA EXTRACTION

my_path=readline(prompt="Enter the pathway where your file is stored:")
file=read.csv(my_path)
file

#DEFINING OBSERVED VALUES
observed_value=as.vector(file[,1])
observed_value
pi=sum(observed_value)/nrow(file)
pi

#FORMING A FUNCTION WITH PREDICTED VALUES AND THRESHOLD VALUES AND CONVERTING THEM TO 0 AND 1.
calc=function(predicted_value,thresh,observed_value,pi){
	pred_array=array(predicted_value,c(nrow(file),len))
	pred_array
	for(k in 1:len){
		for(i in 1:nrow(file)){
			if(pred_array[i,k]<thresh[k])
			{	
				pred_array[i,k]=0
			}
		else
			{
				pred_array[i,k]=1
			}
		}
	}

#	Segregating the converted predicted values into TP, FP, TN and FN
	for(k in 1:len){
		tp[k]=0
		fp[k]=0
		tn[k]=0
		fn[k]=0

		for(i in 1:nrow(file)){
			if(observed_value[i]==1&&pred_array[i,k]==1)
				{
					tp[k]=tp[k]+1
				}
			else if(observed_value[i]==1&&pred_array[i,k]==0)
				{
					fn[k]=fn[k]+1
				}
			else if(observed_value[i]==0&&pred_array[i,k]==0)
				{
					tn[k]=tn[k]+1
				}
			else
				{
					fp[k]=fp[k]+1
				}
			}
# CALCULATING RECALL AND PRECISION FOR EACH THRESHOLD VALUE
	recall[k]=tp[k]/(tp[k]+fn[k])
	precision[k]=tp[k]/(tp[k]+fp[k])
		}	
	recall
	precision
	precG=(precision-pi)/((1-pi)*precision)
	recG=(recall-pi)/((1-pi)*recall)

# PLOTTING RECALL GAIN VS PRECISION GAIN BY USING THE PLOT() FUNCTION FOR PLOTTING THE FIRST ONE AND THEN USING LINES() FUNCTION	
	if(j==2){
		plot(recG,precG,type="l",col="red",main="Recall Gain VS Precision Gain Curve",xlab="recall gain",ylab="precision gain")
		}
	else{
		lines(recG,precG,type="l",col=colour[j])
		}	
}	

for(j in 2:ncol(file)){
	predicted_value=as.vector(file[,j])
	thresh=seq(0,1,length=len)
	as.vector(thresh)
	colour=c("red","blue","black","green","orange")
	calc(predicted_value,thresh,observed_value,pi)
}

