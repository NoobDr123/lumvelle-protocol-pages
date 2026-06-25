# Shopify Parasite Protocol Templates - Setup Instructions

This package contains 7 Shopify Liquid page templates designed to be 1:1 replicas of the parasite protocol pages.

## Files Included:
1. `page.protocol-bloater.liquid`
2. `page.protocol-hijacker.liquid`
3. `page.protocol-feeder.liquid`
4. `page.protocol-insomniac.liquid`
5. `page.protocol-fog-maker.liquid`
6. `page.protocol-itcher.liquid`
7. `page.protocol-sneak.liquid`
8. `protocol-styles.css.liquid` (CSS assets)
9. `images/` folder (All original images)

## Installation Steps:

### 1. Upload Assets
- Log in to your Shopify Admin.
- Go to **Online Store** > **Themes**.
- Click the **...** (three dots) button next to your active theme and select **Edit code**.
- Scroll down to the **Assets** folder.
- Click **Add a new asset** and upload all files from the `images/` folder.
- Upload `protocol-styles.css.liquid` to the Assets folder as well.

### 2. Create Templates
- In the code editor, go to the **Templates** folder.
- Click **Add a new template**.
- Select **page** as the template type.
- Select **liquid** (not json) as the sub-type.
- Name it `protocol-bloater` (repeat for all 7 types).
- Open each newly created `.liquid` file, delete all existing code, and paste the content from the corresponding `.liquid` file provided in this package.
- Click **Save**.

### 3. Create Pages
- Go to **Online Store** > **Pages**.
- Click **Add page**.
- Enter a title (e.g., "Bloater Protocol").
- In the **Theme template** dropdown on the right, select `protocol-bloater`.
- Click **Save**.

### 4. Customize in Theme Editor
- Go to **Online Store** > **Themes** and click **Customize**.
- Navigate to the page you just created.
- You can now use the sidebar to edit all sections, including:
    - Sale banner text and discount
    - Intro paragraphs
    - Hero images and pricing
    - Timeline items (add/remove/edit)
    - Ingredients list
    - FAQ items

## Note on Images
The templates are pre-configured to look for images in your Shopify Assets folder using the `asset_url` filter. Ensure you upload the images exactly as named in the `images/` folder.
