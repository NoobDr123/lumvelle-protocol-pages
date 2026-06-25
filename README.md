# Lumvelle Protocol Pages

This repository contains the restructured Shopify Online Store 2.0 files for the Lumvelle Protocol pages. The previous monolithic liquid template files have been properly split into `sections`, `templates`, and `snippets` to allow for Theme Editor support.

## How to Deploy to Your Theme

Since you are already in `~/lumvelle-theme` and have the theme pulled down locally, run these commands in your Mac terminal:

```bash
# 1. Pull the latest changes from this repo
cd ~/lumvelle-theme/lumvelle-protocol-pages
git pull

# 2. Go back to your theme directory
cd ~/lumvelle-theme

# 3. Copy the files into your theme structure
cp lumvelle-protocol-pages/sections/*.liquid sections/
cp lumvelle-protocol-pages/templates/*.json templates/
cp lumvelle-protocol-pages/snippets/*.liquid snippets/

# 4. Push the changes to your Shopify store
shopify theme push --store lumvelle.myshopify.com
```

## Creating the Pages in Shopify

The theme files are now in place, but you still need to create the actual Pages in Shopify and assign them to the templates. 

### Option A: Using the Terminal Script (Fastest)

If you have a Custom App Admin API Access Token (starts with `shpat_`), you can run the included script:

```bash
cd ~/lumvelle-theme/lumvelle-protocol-pages
./create-pages.sh lumvelle.myshopify.com shpat_YOUR_TOKEN_HERE
```

*(To get a token: Shopify Admin > Settings > Apps and sales channels > Develop apps > Create an app > Configure Admin API scopes: select `write_content` and `read_content` > Install app > Reveal token)*

### Option B: Using Shopify Admin UI (Fallback)

If you don't want to create an API token, you can manually create the pages in the Shopify Admin. It takes about 2 minutes:

1. Go to **Online Store > Pages**
2. Click **Add page**
3. Title: `Your Protocol - The Bloater`
4. In the **Theme template** dropdown on the right side, select `protocol-bloater`
5. Click **Save**
6. Repeat for the other 6 pages:
   - Your Protocol - The Hijacker (template: `protocol-hijacker`)
   - Your Protocol - The Feeder (template: `protocol-feeder`)
   - Your Protocol - The Insomniac (template: `protocol-insomniac`)
   - Your Protocol - The Fog Maker (template: `protocol-fog-maker`)
   - Your Protocol - The Itcher (template: `protocol-itcher`)
   - Your Protocol - The Sneak (template: `protocol-sneak`)

## Notes

- The `body_html` of these pages is intentionally left blank because all content is managed via the section files and Shopify Theme Editor.
- The Kaching Bundle app block can be added via the Theme Editor after deployment.
- The product featured is `lumvelle-wild-harvested-wormwood-herbal-drops` (Variant ID: `53090498314351`).
