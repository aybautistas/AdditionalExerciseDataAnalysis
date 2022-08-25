x := AngelaYuliethBautistaSierra_additional_exercise_solution.ipynb
y := AngelaYuliethBautistaSierra_additional_exercise_solution.pdf
z := AngelaYuliethBautistaSierra_additional_exercise_solution.nbconvert.ipynb

all:  $(z) $(y)

AngelaYuliethBautistaSierra_additional_exercise_solution.nbconvert.ipynb : $(x)
	jupyter nbconvert --to notebook --execute $(x)  --ExecutePreprocessor.timeout=6000

AngelaYuliethBautistaSierra_additional_exercise_solution.pdf : $(x)
	jupyter nbconvert --to pdf --execute $(x)  --ExecutePreprocessor.timeout=6000

clean:
	rm -f $(z) $(y)



