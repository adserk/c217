#TRUE or FALSE quiz
#!/bin/bash

echo "Q1. The black box on a plane is black"
read -p "Enter t (true) or f (false): " q1
#echo "Input is $q1"
if [ $q1 != "t" ]
then
	echo "Correct, the box is actually orange"
else 
	echo "Incorrect"
fi


echo "Q2. The atomic number for lithium is 17"
read -p "Enter t (true) or f (false): " q2
if [ $q2 == "t" ]
then
        echo "Correct"
else
        echo "Incorrect"
fi


echo "Q3. In the animation film “Finding Nemo,” the main protagonist is a pufferfish."
read -p "Enter t (true) or f (false): " q3
if [ $q3 != "t" ]
then
        echo "Correct. He was a clownfish."
else
        echo "Incorrect"
fi


echo "Q4. Is Mount Kilimanjaro the world’s tallest peak?"
read -p "Enter t (true) or f (false): " q4
if [ $q4 != "t" ]
then
        echo "Correct. It is Everest."
else
        echo "Incorrect"
fi


echo "Q5. Polar bears can only live in the Arctic region, not in the Antarctic."
read -p "Enter t (true) or f (false): " q5
if [ $q5 == "t" ]
then
        echo "Correct. It's True. Polar bears can only live in the Arctic region, not in the Antarctic. "
else
        echo "Incorrect"
fi


echo "Q6. The United Kingdom is almost the same size as France"
read -p "Enter t (true) or f (false): " q6
if [ $q6 != "t" ]
then
        echo "Correct. It's False. The UK is smaller than France."
else
        echo "Incorrect"
fi

echo "Q7. Zeus is referred to as the king of the Greek gods and goddesses."
read -p "Enter t (true) or f (false): " q7
if [ $q7 == "t" ]
then
        echo "Correct. It's True. "
else
        echo "Incorrect"
fi

echo "Q8. Five countries share their land borders with Switzerland."
read -p "Enter t (true) or f (false): " q8
if [ $q8 == "t" ]
then
        echo "Correct. It's True (France, Italy, Germany, Austria, and Liechtenstein) "
else
        echo "Incorrect"
fi


echo "Q9. The mosquito has a record for killing more people than any other species in written history."
read -p "Enter t (true) or f (false): " q9
if [ $q9 == "t" ]
then
        echo "Correct. It's True. "
else
        echo "Incorrect"
fi


echo "Q10. The first living animal sent into space were fruit flies."
read -p "Enter t (true) or f (false): " q10
if [ $q10 == "t" ]
then
        echo "Correct. It's True. Fruit flies were sent into space on a V-2 rocket in 1947. "
else
        echo "Incorrect"
fi

