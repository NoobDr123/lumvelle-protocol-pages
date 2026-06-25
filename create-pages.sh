#!/bin/bash

# Script to create Shopify pages for Lumvelle Protocol

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <store_domain> <admin_api_token>"
    echo "Example: $0 lumvelle.myshopify.com shpat_xxxxxxxxxxxxxxxx"
    exit 1
fi

STORE_DOMAIN=$1
ACCESS_TOKEN=$2
API_VERSION="2024-01"

# Array of pages to create: handle|title
PAGES=(
    "protocol-bloater|Your Protocol - The Bloater"
    "protocol-hijacker|Your Protocol - The Hijacker"
    "protocol-feeder|Your Protocol - The Feeder"
    "protocol-insomniac|Your Protocol - The Insomniac"
    "protocol-fog-maker|Your Protocol - The Fog Maker"
    "protocol-itcher|Your Protocol - The Itcher"
    "protocol-sneak|Your Protocol - The Sneak"
)

echo "Creating pages for $STORE_DOMAIN..."

for PAGE_INFO in "${PAGES[@]}"; do
    HANDLE="${PAGE_INFO%%|*}"
    TITLE="${PAGE_INFO##*|}"
    
    echo "Creating page: $TITLE ($HANDLE)"
    
    # Create the JSON payload
    PAYLOAD=$(cat <<JSON
{
  "page": {
    "title": "$TITLE",
    "handle": "$HANDLE",
    "template_suffix": "$HANDLE",
    "body_html": ""
  }
}
JSON
)

    # Make the API request
    RESPONSE=$(curl -s -X POST "https://$STORE_DOMAIN/admin/api/$API_VERSION/pages.json" \
        -H "X-Shopify-Access-Token: $ACCESS_TOKEN" \
        -H "Content-Type: application/json" \
        -d "$PAYLOAD")
        
    # Check if successful
    if echo "$RESPONSE" | grep -q '"id"'; then
        PAGE_ID=$(echo "$RESPONSE" | grep -o '"id":[0-9]*' | head -1 | cut -d: -f2)
        echo "✅ Successfully created page (ID: $PAGE_ID)"
    else
        echo "❌ Failed to create page. Response:"
        echo "$RESPONSE"
    fi
    echo "-----------------------------------"
done

echo "Done! Pages have been created and assigned to their respective templates."
