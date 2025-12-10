## setup things that I haven't put in the makefile yet:

```
git submodule update --init
python3 -m venv venv
source venv/bin/activate
pushd .
cd layout/lclayout
pip3 install .
pip3 install matplotlib       # missing lclayout dependency >.>
pip3 install klayout==0.29.12 # klayout 0.30 broke some things
popd
```

also you'll need [magic](https://github.com/RTimothyEdwards/magic) for cell RC extraction.

