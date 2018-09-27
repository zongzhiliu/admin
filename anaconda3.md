export PYTHONPATH=''
bash Anaconda3...sh #to ~/local/anaconda3
conda install -c bioconda vcflib tabix tabview

conda create -name rstudio
conda create -name python2
conda create -name python3.7
    #new features: 
    #3.7: breakpoint(), @dataclass
    #3.6: f strings, variable annotations
    #3.5: additional unpacking
