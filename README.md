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
4. Publish new website on github
   ```
   mkdocs gh-deploy
   ```
