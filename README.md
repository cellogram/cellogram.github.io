## Reading the Website

Simply checkout the `master` branch and open in firefox:
```
git clone git@github.com:geometryprocessing/cellogram-website.git
cd cellogram-website
firefox index.html
```

## Building the website

1. Create conda environment.
   ```
   conda env create -f cellogram-website.yml
   ```
2. Activate conda environment.
   ```
   conda activate cellogram-website
   ```
3. Serve website locally.
   ```
   mkdocs serve
   ```
4. Build static website for offline reading.
   ```
   mkdocs build
   ```
5. Read offline website (you can also checkout `master` directly)
   ```
   firefox site/index.html
   ```
